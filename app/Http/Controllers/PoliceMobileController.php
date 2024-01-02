<?php

namespace App\Http\Controllers;

use App\Models\Circle;
use App\Models\Districts;
use App\Models\PoliceMobile;
use App\Models\PoliceStation;
use App\Models\VehicleType;
use Illuminate\Http\Request;

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
        $data["police_stations"] =PoliceStation::when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        })->get();

        $data["circles"] =Circle::when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        })->get();
        return view("police_mobiles.add",$data);
    }

    public function listPoliceMobile()
    {
        $data = [
            'title' => 'List Police Mobile',

        ];
        $query = PoliceMobile::query();
        $query->when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        });
        $data["data"] = $query->get();
        return view("police_mobiles.list",$data);
    }

    public function savePoliceMobile()
    {
        $data = request()->except(["_token"]);
        $data['district_id'] = auth()->user()->district_id;
        PoliceMobile::create($data);
        return redirect()->route('list.police.mobile')->with('success', 'Police Mobile created successfully.');
    }

    public function editPoliceMobile($id)
    {
        $data["title"] = "Edit Police Mobile";
        $data['district'] = Districts::get();
        $data['vehicle_type'] = VehicleType::get();
        $data["police_stations"] =PoliceStation::when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        })->get();
        $data["circles"] =Circle::when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        })->get();
        $data["data"] = PoliceMobile::whereId($id)->first();
        return view("police_mobiles.edit",$data);
    }

    public function updatePoliceMobile()
    {

        PoliceMobile::where(["id"=>request()->id])->update(request()->except(["_token","id"]));
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
}
