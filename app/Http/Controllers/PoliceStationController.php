<?php

namespace App\Http\Controllers;

use App\Models\Circle;
use App\Models\Districts;
use App\Models\PoliceStation;
use Illuminate\Http\Request;

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
        $data['rank'] = (new CommonApiController())->getRank();

        $data["circles"] =Circle::when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        })->get();

      return view("police_station.add",$data);
    }

    public function listPoliceStation()
    {
        $data = [
            'title' => 'List Police Stations',

        ];
        $query = PoliceStation::query();
        $query->when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        });

        $data["data"] = $query->get();

        return view("police_station.list",$data);
    }

    public function savePoliceStation()
    {
        $data = request()->except(["_token"]);
        $data['district_id'] = auth()->user()->district_id;
        PoliceStation::create($data);
        return redirect()->route('list.police.station')->with('success', 'Police Station created successfully.');
    }

    public function editPoliceStation($id)
    {
        $data["title"] = "Edit Police Station";
        $data['district'] = Districts::get();
        $data["circles"] =Circle::when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        })->get();
        $data["data"] = PoliceStation::whereId($id)->first();
        return view("police_station.edit",$data);
    }

    public function updatePoliceStation()
    {

        PoliceStation::where(["id"=>request()->id])->update(request()->except(["_token","id"]));
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
    public function destroy($id)
    {
        //
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
}