<?php

namespace App\Http\Controllers;

use App\Exports\PoliceStationExport;
use App\Exports\PollingStationExport;
use App\Models\Districts;
use App\Models\PollingStation;
use App\Models\Sensitivity;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Facades\Excel;
use Yajra\DataTables\Facades\DataTables;

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

    public function pollingStation()
    {
        $users = PollingStation::with(["district","policeStation","sensitivitys"])
            ->when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {

                return $q->where(["district_id"=>auth()->user()->district_id]);
            })
            ->when(request()->district_id, function ($q) {
                return $q->where(["district_id"=>request()->district_id]);
            })

            ->when(request()->police_station_id, function ($q) {
                return $q->whereIn("police_station_id",request()->police_station_id);
            });
        return DataTables::of($users)
            ->addColumn('action', function($cert) {
                $actionsBtn = '<a class="dropdown-item p-50" href="'.route('edit.polling.station',[$cert->id]).'"><i class="bx bx-file-blank mr-1"></i> Edit</a>';

                $actionsBtn .= '<a class="dropdown-item p-50 delete_table_data" data-id="'.$cert->id.'" href="javascript:void(0)"><i class="bx bx-window-close"></i> Delete</a>';


                return $actionsBtn;
            })
            ->addColumn('district_name', function($cert) {
                return $cert->district?->title ?? "";
                })
            ->addColumn('police_station_name', function($cert) {
                return $cert->policeStation->title ?? "";
                })
            ->addColumn('sensitivity_name', function($cert) {
                return $cert->sensitivitys->title ?? "";
                })
            ->rawColumns(["district_name","police_station_name","sensitivity_name","action"])
            ->make(true);
    }

    public function listPollingStation()
    {

        $data = [
            'title' => 'List Polling Stations',

        ];
        $data['districts'] = Districts::whereProvinceId(1)
            ->when((auth()->user()->roles->pluck('name')[0] != "Super Admin" && auth()->user()->roles->pluck('name')[0] != "Regional User"), function ($q) {
                return $q->where(["id" => auth()->user()->district_id]);
            })
            ->get();

        return view("polling_station.list",$data);
    }

    public function savePollingStation()
    {
        $data = request()->except(["_token"]);
        if(auth()->user()->roles->pluck('name')[0] !="Super Admin"){
            $data['district_id'] = auth()->user()->district_id;
            $data['created_by'] = auth()->user()->id;
        }

        $data['lat'] = preg_replace("/[^0-9.]/", "", request()->lat);
        $data['lng'] = preg_replace("/[^0-9.]/", "", request()->lng);
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

        $data['lat'] = preg_replace("/[^0-9.]/", "", request()->lat);
        $data['lng'] = preg_replace("/[^0-9.]/", "", request()->lng);
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

    public function exportPollingStations()
    {
        $res = DB::table("polling_stations")
            ->select("districts.title as district_name","police_stations.title as ps_name","polling_station_name","lat","lng","incharge_name","incharge_contact")
            ->leftJoin("districts","districts.id","=","polling_stations.district_id")
            ->leftJoin("police_stations","police_stations.id","=","polling_stations.police_station_id")
            ->when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
                return $q->where(["polling_stations.district_id"=>auth()->user()->district_id]);
            })
            ->get();

        return Excel::download(new PollingStationExport($res), 'polling_stations.xlsx');
    }
}
