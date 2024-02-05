<?php

namespace App\Http\Controllers;

use App\Exports\PoliceMobileExport;
use App\Models\Circle;
use App\Models\Districts;
use App\Models\FacilityType;
use App\Models\Hospital;
use App\Models\PoliceLine;
use App\Models\PoliceMobile;
use App\Models\PoliceMobileHistory;
use App\Models\PolicePost;
use App\Models\PoliceStation;
use App\Models\PollingStation;
use App\Models\Reagin;
use App\Models\Sensitivity;
use App\Models\VehicleType;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Facades\Excel;
use Modules\Settings\Entities\MyApp;
use Yajra\DataTables\Facades\DataTables;

class PoliceMobileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['district'] = Districts::get();
        $data['vehicle_type'] = VehicleType::get();
        $data['rank'] = (new CommonApiController())->getRankForWeb();
        $data["police_stations"] =PoliceStation::when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        })->get();

        $data["police_line"] =PoliceLine::when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        })->get();

        $data["circles"] =Circle::when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        })->get();
        return view("police_mobiles.add",$data);
    }

    public function mobileVehiclesOnMap()
    {
        //$res = $this->findNearestHospitals("34.0151","71.5249",20);

        $data = [
            'title' => 'Mobile Vehicle Dashboard',
            'new_route' => ['settings.my-apps.create', 'New App'],
            'my_apps' => MyApp::all()
        ];

        $data['region'] = Reagin::when(auth()->user()->roles->pluck('name')[0] != "Super Admin", function ($q) {
            return $q->where(["id" => auth()->user()->district->reagin ?? 0]);
        })
            ->get();
        $data['districts'] = Districts::whereProvinceId(1)
            ->when(auth()->user()->roles->pluck('name')[0] != "Super Admin", function ($q) {
                return $q->where(["id" => auth()->user()->district_id]);
            })
            ->get();




        $type = FacilityType::get();
        $facility_chart = [];
        foreach ($type as $key => $value){
            array_push($facility_chart,["name"=> $value->name,'y'=> Hospital::where("type",$value->id)->count() ?? 0]);
        }
        $data['facility_chart'] = $facility_chart;
        $data["sensitivity"] = Sensitivity::get();

        return view('dashboard.vehicle_on_map', $data);

    }

    public function policeMobile()
    {
        $users = PoliceMobile::when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {

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
            })
            ->when(request()->police_station_id,function ($q){
                return $q->whereIn("police_station_id",request()->police_station_id);
            })
        ->with('mobileUser');
        return DataTables::of($users)
            ->addColumn('action', function($cert) {
                $actionsBtn = '<a class="dropdown-item p-50" href="'.route('edit.police.mobile',[$cert->id]).'"><i class="bx bx-file-blank mr-1"></i> Edit</a>';

                $actionsBtn .= '<a class="dropdown-item p-50 delete_table_data" data-id="'.$cert->id.'" href="javascript:void(0)"><i class="bx bx-window-close"></i> Delete</a>';


                return $actionsBtn;
            })
            ->addColumn('district_name', function($cert) {
                return $cert->district?->title ?? "";
                })
            ->addColumn('police_station_name', function($cert) {
                return $cert->policeStation->title ?? "";
            })
            ->addColumn('circle_name', function($cert) {
                return $cert->circle->name ?? "";
            })
            ->addColumn('vehicle_type', function($cert) {
                return $cert->vehicleType->name ?? "";
            })

            ->addColumn('mobile_user_name', function($cert) {
                return $cert->vehicleType->name ?? "";
            })
            ->rawColumns(["district_name","police_station_name","circle_name","vehicle_type","action"])
            ->make(true);
    }

    public function listPoliceMobile()
    {

        $data = [
            'title' => 'List Police Mobile',

        ];
        $query = PoliceMobile::when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        });
        $data["data"] = $query->get();
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
        return view("police_mobiles.list",$data);
    }

    public function savePoliceMobile()
    {
        $data = request()->except(["_token"]);
        $data['district_id'] = auth()->user()->district_id;
        $data['created_by'] = auth()->user()->id;

        $data['lat'] = preg_replace("/[^0-9.]/", "", request()->lat);
        $data['lng'] = preg_replace("/[^0-9.]/", "", request()->lng);
        PoliceMobile::create($data);
        return redirect()->route('list.police.mobile')->with('success', 'Police Mobile created successfully.');
    }

    public function editPoliceMobile($id)
    {
        $data["title"] = "Edit Police Mobile";
        $data['district'] = Districts::get();
        $data['vehicle_type'] = VehicleType::get();
        $data['rank'] = (new CommonApiController())->getRankForWeb();
        $data["police_stations"] =PoliceStation::when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        })->get();
        $data["circles"] =Circle::when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        })->get();
        $data["police_line"] =PoliceLine::when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        })->get();
        $data["data"] = PoliceMobile::whereId($id)->first();
        return view("police_mobiles.edit",$data);
    }

    public function updatePoliceMobile()
    {
        $data = request()->except(["_token","id"]);
        $data['lat'] = preg_replace("/[^0-9.]/", "", request()->lat);
        $data['lng'] = preg_replace("/[^0-9.]/", "", request()->lng);

        PoliceMobile::where(["id"=>request()->id])->update($data);
        return redirect()->route('list.police.mobile')->with('success', 'Police Mobile info updated successfully.');
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

    private function findNearestPoliceMobile($latitude, $longitude, $radius)
    {
        /*
         * using eloquent approach, make sure to replace the "Restaurant" with your actual model name
         * replace 6371000 with 6371 for kilometer and 3956 for miles
         */
        $restaurants = PoliceMobile::selectRaw("id, title, ps_contact_number, latitude, longitude,
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

    public function exportPoliceMobile()
    {
        $res = DB::table("police_mobiles")
            ->select(["districts.title as district_name","police_stations.title as ps_name","vehicle_type.name as vehicle_type_name","registration_number","incharge_name","contact_number","lat","lng"])
            ->join("vehicle_type","vehicle_type.id","=","police_mobiles.vehicle_type")
            ->join("police_stations","police_stations.id","=","police_mobiles.police_station_id")
            ->join("districts","districts.id","=","police_mobiles.district_id")
            ->when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
                return $q->where(["police_mobiles.district_id"=>auth()->user()->district_id]);
            })
            ->get();
        return Excel::download(new PoliceMobileExport($res), 'police_mobile_export.xlsx');
    }

    public function getMobileHistory()
    {
        $data = PoliceMobileHistory::where("police_mobile_id",request()->mobile_id)->groupBy('lat')->get();

        return ["status"=>true,"data"=>$data];
    }


}
