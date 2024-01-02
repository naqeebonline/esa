<?php

namespace App\Http\Controllers;

use App\Models\FacilityType;
use App\Models\Hospital;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HospitalController extends Controller
{
    public function index()
    {
        $data["title"] = "Add Health Facility";
        $data["police_station"] = DB::table("police_stations")
            ->whereDistrictId(auth()->user()->district_id)
            ->get();
        $data["facility_type"] = FacilityType::get();
        return view("hospital.add",$data);
    }

    public function listHospital()
    {
        $data = [
            'title' => 'List Hospitals',

        ];

        $data["data"] = Hospital::with(["facilityType"])
            ->when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        })->get();

        //$role_name = auth()->user()->roles->pluck('name')[0];
        return view("hospital.list",$data);
    }

    public function saveHospital()
    {

        $data = request()->except(["_token"]);
        if(auth()->user()->roles->pluck('name')[0] !="Super Admin"){
            $data['district_id'] = auth()->user()->district_id;
        }
        Hospital::create($data);
        return redirect()->route('list.hospital')->with('success', 'Hospital created successfully.');
    }

    public function edit($id)
    {
        $data["title"] = "Update Hospital Information";
        $data["police_station"] = DB::table("police_stations")->get();
        $data["facility_type"] = FacilityType::get();
        $data["data"] = Hospital::whereId($id)->first();
        return view("hospital.edit",$data);
    }

    public function updateHospital()
    {
        Hospital::where(["id"=>request()->id])->update(request()->except(["_token","id"]));
        return redirect()->route('list.hospital')->with('success', 'Hospital created successfully.');
    }


    private function findNearestHospital($latitude, $longitude, $radius)
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

            ->having("distance", "<", $radius)
            ->orderBy("distance",'asc')
            ->offset(0)
            ->limit(20)
            ->get();

        return $restaurants;
    }


}
