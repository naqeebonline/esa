<?php

namespace Modules\Settings\Http\Controllers;

use App\Models\AssignMeetings;
use App\Models\Districts;
use App\Models\Hospital;
use App\Models\Meeting;
use App\Models\PoliceStation;
use App\Models\PollingStation;
use Carbon\Carbon;
use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Session;
use Jubaer\Zoom\Facades\Zoom;
use Modules\Settings\Entities\MyApp;

class MyAppsController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return Renderable
     */
    public function index()
    {
        //$res = $this->findNearestHospitals("34.0151","71.5249",20);

        $data = [
            'title' => 'Apps List',
            'new_route' => ['settings.my-apps.create', 'New App'],
            'my_apps' => MyApp::all()
        ];
        $data['districts'] = Districts::whereProvinceId(1)->get();
       // $meetings = Zoom::getUpcomingMeeting();
        $role = auth()->user()->roles->pluck('name')[0] ?? '';

        if($role == "Police" || $role == "Polling Station"){
            $meetings = Meeting::whereCreatedBy(auth()->user()->id)->where("end_time",">=",Carbon::now()->toDateTimeString())->get();
            $data["archive_meetings"] = Meeting::whereCreatedBy(auth()->user()->id)->where("end_time","<=",Carbon::now()->toDateTimeString())->get();

        }else{
            $meetings = Meeting::get();
            $data["archive_meetings"]= [];
        }

        $invitation = AssignMeetings::with(["meetings"])->whereToUser(auth()->user()->id)->orderBy("id","desc")->get();



        foreach ($meetings as $key => $value){
            $value->json_response = json_decode($value->json_response);
        }


        /*foreach ($meetings["data"]["meetings"] as $key => $value){
            echo date("d-m-Y h:i A",strtotime($value["created_at"]))."<br>";
        }
        dd($meetings);*/


       $data["meetings"] = $meetings;
       $data["total_police_stations"] = PoliceStation::count();
       $data["total_polling_station"] = PollingStation::count();
       $data["total_hospitals"] = Hospital::count();
       $data["meeting_invitation"] = $invitation;

       // return view('settings::my_apps.index', $data);

        if(auth()->user()->roles->pluck('name')[0] !="Super Admin"){

            $data["go_live"] = "";

            if(auth()->user()->roles->pluck('name')[0] == "Police" || auth()->user()->roles->pluck('name')[0] == "District_User"){
                $data["go_live"] = Meeting::where(["live_link_for"=>"police_station"])->first();
            }else if(auth()->user()->roles->pluck('name')[0] == "Polling Station"){
                $data["go_live"] = Meeting::where(["live_link_for"=>"polling_station"])->first();
            }else if(auth()->user()->roles->pluck('name')[0] == "Hospital User"){
                $data["go_live"] = Meeting::where(["live_link_for"=>"hospital"])->first();
            }else{
                $data["go_live"] = Meeting::where(["live_link_for"=>"hospital"])->first();
            }

            return view('dashboard.user_dashboard', $data);
        }else{
            return view('dashboard.index', $data);
        }

    }

    private function findNearestHospitals($latitude, $longitude, $kilometer)
    {
        /*
         * using eloquent approach, make sure to replace the "Restaurant" with your actual model name
         * replace 6371000 with 6371 for kilometer and 3956 for miles
         */
        $restaurants = Hospital::selectRaw("id, name, contact_number, lat, lng,
                         ( 6371 * acos( cos( radians(?) ) *
                           cos( radians( lat ) )
                           * cos( radians( lng ) - radians(?)
                           ) + sin( radians(?) ) *
                           sin( radians( lat ) ) )
                         ) AS distance", [$latitude, $longitude, $latitude])

            ->having("distance", "<", $kilometer)
            ->orderBy("distance",'asc')
            ->offset(0)
            ->limit(20)
            ->get();

        return $restaurants;
    }

    /**
     * Show the form for creating a new resource.
     * @return Renderable
     */
    public function create(MyApp $item)
    {
        $data = [
            'title' => 'Create a New App',
            'back_route' => ['settings.my-apps.list', 'Apps List'],
            'new_route' => ['settings.my-apps.create', 'New App'],
            'item' => $item
        ];

        return view('settings::my_apps.form', $data);
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Renderable
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'route' => 'required|unique:apps,route'
        ]);

        $inputs = $request->all();
        $my_app = MyApp::create($inputs);

        if($my_app){
            Session::flash('success', 'New app created successfully');
            return redirect(route('settings.my-apps.list'));
        }else{
            Session::flash('error', 'Something went wrong, please try later');
            return redirect()->back();
        }

    }

    /**
     * Show the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function show($id)
    {
        return view('settings::show');
    }

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function edit($id)
    {
        $item = MyApp::find(Crypt::decrypt($id));

        $data = [
            'title' => 'Update App',
            'back_route' => ['settings.my-apps.list', 'Apps List'],
            'new_route' => ['settings.my-apps.create', 'New App'],
            'item' => $item
        ];

        return view('settings::my_apps.form', $data);
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Renderable
     */
    public function update(Request $request, $id)
    {
        $id = Crypt::decrypt($id);
        $my_app = MyApp::find($id);

        $this->validate($request, [
            'title' => 'required',
            'route' => 'required|unique:apps,route,'.$id
        ]);

        $inputs = $request->all();

        if($my_app->fill($inputs)->save()){
            Session::flash('success', 'App updated successfully');
            return redirect(route('settings.my-apps.list'));
        }else{
            Session::flash('error', 'Something went wrong, please try later');
            return redirect()->back();
        }
    }

    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Renderable
     */
    public function destroy($id)
    {
        $id = Crypt::decrypt($id);
        $my_app = MyApp::find($id);

        if($my_app->delete()){
            Session::flash('success', 'App deleted successfully');
            return redirect()->back();
        }else{
            Session::flash('error', 'Something went wrong, please try later');
            return redirect()->back();
        }
    }
}
