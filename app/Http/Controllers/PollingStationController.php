<?php

namespace App\Http\Controllers;

use App\Models\PollingStation;
use App\Models\Sensitivity;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PollingStationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['title'] = "Add Polling Station";
        $data["police_station"] = DB::table("police_stations")->when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
        return $q->where(["district_id"=>auth()->user()->district_id]);
    })->get();
        $data["sensitivity"] = Sensitivity::get();

        return view("polling_station.add",$data);
    }

    public function listPollingStation()
    {

        $data = [
            'title' => 'List Polling Stations',

        ];
        $data['data'] = PollingStation::with(["policeStation","sensitivitys"])
            ->when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
                return $q->where(["district_id"=>auth()->user()->district_id]);
            })->get();

        return view("polling_station.list",$data);
    }

    public function savePollingStation()
    {
        $data = request()->except(["_token"]);
        if(auth()->user()->roles->pluck('name')[0] !="Super Admin"){
            $data['district_id'] = auth()->user()->district_id;
            $data['created_by'] = auth()->user()->id;
        }
        PollingStation::create($data);
        return redirect()->route('list.polling.station')->with('success', 'Polling Station created successfully.');

    }

    public function editPollingStation($id)
    {

        $data["title"] = "Update Polling Station Information";
        $data["police_station"] = DB::table("police_stations")->when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
        return $q->where(["district_id"=>auth()->user()->district_id]);
        })->get();
        $data["sensitivity"] = Sensitivity::get();
        $data["data"] = PollingStation::whereId($id)->first();
        return view("polling_station.edit",$data);
    }

    public function updatePollingStation()
    {
        $data = request()->except(["_token","id"]);
        if(auth()->user()->roles->pluck('name')[0] !="Super Admin"){
            $data['district_id'] = auth()->user()->district_id;
        }

        PollingStation::where(["id"=>request()->id])->update($data);
        return redirect()->route('list.polling.station')->with('success', 'Polling Station Updated successfully.');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    private function findNearestPollingStation($latitude, $longitude, $radius)
    {
        /*
         * using eloquent approach, make sure to replace the "Restaurant" with your actual model name
         * replace 6371000 with 6371 for kilometer and 3956 for miles
         */
        $restaurants = PollingStation::selectRaw("id, polling_station_name as name, incharge_contact as contact_number, lat, lng,
                         ( 6371 * acos( cos( radians(?) ) *
                           cos( radians( lat ) )
                           * cos( radians( lng ) - radians(?)
                           ) + sin( radians(?) ) *
                           sin( radians( lat ) ) )
                         ) AS distance", [$latitude, $longitude, $latitude])

            ->having("distance", "<", $radius)
            ->orderBy("distance",'asc')
            ->offset(0)
            ->limit(20)
            ->get();

        return $restaurants;
    }
}
