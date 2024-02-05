<?php

namespace App\Http\Controllers;

use App\Exports\PoliceStationExport;
use App\Models\Circle;
use App\Models\Districts;
use App\Models\Hospital;
use App\Models\PoliceStation;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Facades\Excel;
use Yajra\DataTables\Facades\DataTables;

class PoliceStationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $data['district'] = Districts::get();
        $data['rank'] = (new CommonApiController())->getRankForWeb();

        $data["circles"] =Circle::when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {

            return $q->where(["district_id"=>auth()->user()->district_id]);
        })->get();

      return view("police_station.add",$data);
    }

    public function allPoliceStations()
    {
        $users = PoliceStation::with(["district","circle"])->when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            if(auth()->user()->roles->pluck('slug')[0] == "regional.user"){
                $district_ids = Districts::whereReagin(auth()->user()->region_id)->pluck("id")->all();
                return $q->whereIn("district_id",$district_ids);
            }else{
                return $q->where(["district_id" => auth()->user()->district_id]);
            }

        })
        ->when(request()->district_id,function ($q){
            return $q->where("district_id",request()->district_id);
        })
        ->when(request()->circle_id,function ($q){
            return $q->whereIn("circle_id",request()->circle_id);
        });
        return DataTables::of($users)
            ->addColumn('action', function($cert) {
                $actionsBtn = '<a class="dropdown-item p-50" href="'.route('edit.police.station',[$cert->id]).'"><i class="bx bx-file-blank mr-1"></i> Edit</a>';
                $actionsBtn .= '<a class="dropdown-item p-50 delete_table_data" data-id="'.$cert->id.'" href="javascript:void(0)"><i class="bx bx-window-close"></i> Delete</a>';


                return $actionsBtn;
            })
            ->addColumn('district_name', function($cert) {
                return $cert->district->title ?? "";
            })
            ->addColumn('circle_name', function($cert) {
                return $cert->circle->name ?? "";
            })

            ->rawColumns(["circle_name","district_name","action"])
            ->make(true);
    }

    public function listPoliceStation()
    {

        $data = [
            'title' => 'List Police Stations',

        ];
        $data['districts'] = Districts::whereProvinceId(1)
            ->when((auth()->user()->roles->pluck('name')[0] != "Super Admin"), function ($q) {
                if(auth()->user()->roles->pluck('slug')[0] == "regional.user"){
                    $district_ids = Districts::whereReagin(auth()->user()->region_id)->pluck("id")->all();
                    return $q->whereIn("id",$district_ids);
                }else{
                    return $q->where(["id" => auth()->user()->district_id]);
                }

            })
            ->get();
        return view("police_station.list",$data);
    }

    public function savePoliceStation()
    {
        $data = request()->except(["_token"]);
        $data['district_id'] = auth()->user()->district_id;
        if(auth()->user()->roles->pluck('name')[0] =="Super Admin"){
            $data['district_id'] = request()->district_id;
        }
        $data['latitude'] = preg_replace("/[^0-9.]/", "", request()->latitude);
        $data['longitude'] = preg_replace("/[^0-9.]/", "", request()->longitude);
        $data['created_by'] = auth()->user()->id;
        PoliceStation::create($data);
        return redirect()->route('list.police.station')->with('success', 'Police Station created successfully.');
    }

    public function editPoliceStation($id)
    {
        $data["title"] = "Edit Police Station";
        $data['district'] = Districts::get();
        $data['rank'] = (new CommonApiController())->getRankForWeb();
        $data["circles"] =Circle::when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        })->get();
        $data["data"] = PoliceStation::whereId($id)->first();
        $data['nearest_hospital'] = $this->nearstHospital($data["data"]->latitude,$data["data"]->longitude,60);
        return view("police_station.edit",$data);
    }

    public function updatePoliceStation()
    {
        $data = request()->except(["_token","id"]);
        $data['latitude'] = preg_replace("/[^0-9.]/", "", request()->latitude);
        $data['longitude'] = preg_replace("/[^0-9.]/", "", request()->longitude);

        PoliceStation::where(["id"=>request()->id])->update($data);
        return redirect()->route('list.police.station')->with('success', 'Police Station info updated successfully.');
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
    public function destroy()
    {
            PoliceStation::whereId(request()->id)->delete();
            return ["status"=>true,"message"=>"Record deleted successfully"];
    }

    public function nearstHospital($latitude,$longitude,$radius=60)
    {
        $hospitals = Hospital::selectRaw("id, name, contact_number, lat, lng,
                         ( 6371 * acos( cos( radians(?) ) *
                           cos( radians( lat ) )
                           * cos( radians( lng ) - radians(?)
                           ) + sin( radians(?) ) *
                           sin( radians( lat ) ) )
                         ) AS distance", [$latitude, $longitude, $latitude])

            ->having("distance", "<", $radius)->orderBy("distance",'asc')->offset(0)->limit(20)->get();
        return $hospitals;
    }

    private function findNearestPoliceStation($latitude, $longitude, $radius)
    {
        /*
         * using eloquent approach, make sure to replace the "Restaurant" with your actual model name
         * replace 6371000 with 6371 for kilometer and 3956 for miles
         */
        $restaurants = PoliceStation::selectRaw("id, title, ps_contact_number, latitude, longitude,
                         ( 6371 * acos( cos( radians(?) ) *
                           cos( radians( latitude ) )
                           * cos( radians( longitude ) - radians(?)
                           ) + sin( radians(?) ) *
                           sin( radians( latitude ) ) )
                         ) AS distance", [$latitude, $longitude, $latitude])

            ->having("distance", "<", $radius)
            ->orderBy("distance",'asc')
            ->offset(0)
            ->limit(20)
            ->get();

        return $restaurants;
    }

    public function deleteTableData()
    {
        $id = request()->id;
        $table = request()->table;
        DB::table($table)->whereId($id)->delete();
        return ["status"=>true,"message"=>"record deleted successfully"];
    }

    public function exportPoliceStations()
    {
        $res = DB::table("police_stations")
            ->select(["districts.title as district_name","police_stations.title as ps_name","police_stations.latitude","police_stations.longitude","police_stations.sho_name","police_stations.sho_contact"])
            ->leftJoin("districts","districts.id","=","police_stations.district_id")
            ->when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
                return $q->where(["police_stations.district_id"=>auth()->user()->district_id]);
            })
            ->get();

        return Excel::download(new PoliceStationExport($res), 'police_station.xlsx');
    }
}
