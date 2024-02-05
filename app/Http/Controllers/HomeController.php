<?php

namespace App\Http\Controllers;

use App\Models\PoliceLine;
use App\Models\PoliceMobile;
use App\Models\PoliceStation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $user = Auth::user();
        $user_role_ids = [0];
        foreach($user->roles as $ur){
            $user_role_ids[] = $ur->id;
        }

        $apps_sql = "SELECT
                    a.id, a.title, a.icon, a.route
                    FROM apps as a
                    JOIN menus as m on a.id = m.app_id
                    JOIN permissions as p on m.id = p.menu_id
                    WHERE
                    p.id in (SELECT permission_id FROM permission_role WHERE role_id in (".implode(",", $user_role_ids)."))
                    OR p.id in (SELECT permission_id FROM permission_user WHERE user_id in (".$user->id."))
                    and a.deleted_at is NULL
                    and m.deleted_at is NULL
                    and p.deleted_at is NULL
                    GROUP BY a.id";

        $apps = DB::select($apps_sql);

        $data = [
            'user' => $user,
            'apps' => $apps
        ];

        /*return view('home', $data);*/
        return view('layouts.landing_screen_frest', $data);
    }

    function dbToJson($models)
    {
        $jsonObjects = [];
        if (count($models) > 0) {
            foreach ($models as $model) {


                $geometry = ['type' => 'Point', 'coordinates' => [$model->lat, $model->lng]];
                array_push($jsonObjects, ['type' => 'Feature', 'properties' => $model, 'geometry' => $geometry]);
            }
        } else {
            $geometry = ['type' => 'Point', 'coordinates' => [$models->lat, $models->lng]];
            array_push($jsonObjects, ['type' => 'Feature', 'properties' => $models, 'geometry' => $geometry]);
        }

        $geoJson =   array(
            'type' => 'FeatureCollection',
            'crs' =>
                array(
                    'type' => 'name',
                    'properties' =>
                        array(
                            'name' => 'urn:ogc:def:crs:OGC:1.3:CRS84',
                        ),
                ),
            'features' => $jsonObjects,
        );
        return $geoJson;
    }

    public function getAllPoliceStations()
    {

        $data = PoliceStation::get();


        return (["data"=>$data]);

    }

    public function getAllPoliceMobiles()
    {
        $district_id = request()->districts ?? "";
        $police_station_id = request()->police_station_id ?? "";
        $police_mobile_id = request()->police_mobile_id ?? "";


        $data = PoliceMobile::whereNotNull("lat")->whereNotNull("lng")
            ->when($district_id, function ($q) use ($district_id) {
                return $q->whereIn("district_id",$district_id);
            })
            ->when($police_station_id, function ($q) use ($police_station_id) {
                return $q->whereIn("police_station_id",$police_station_id);
            })
            ->when($police_mobile_id, function ($q) use ($police_mobile_id) {
                return $q->whereIn("id",$police_mobile_id);
            })
            ->get();

        foreach ($data as $key => $value){
            $value->minuts_ago = now()->diffInMinutes($value->updated_at);

        }
        return (["data"=>$data]);

    }

    public function getAllPoliceMobilesDD()
    {
        $district_id = request()->districts ?? "";
        $police_station_id = request()->police_station_id ?? "";
        $police_mobile_id = request()->police_mobile_id ?? "";


        $data = PoliceMobile::whereNotNull("lat")->whereNotNull("lng")
            ->when($district_id, function ($q) use ($district_id) {
                return $q->whereIn("district_id",$district_id);
            })
            ->when($police_station_id, function ($q) use ($police_station_id) {
                return $q->whereIn("police_station_id",$police_station_id);
            })
            ->when($police_mobile_id, function ($q) use ($police_mobile_id) {
                return $q->whereIn("id",$police_mobile_id);
            })
            ->get();
        return (["data"=>$data]);

    }

    public function getAllPoliceLines()
    {

        $data = PoliceLine::whereNotNull("lat")->whereNotNull("lng")
            ->when(request()->districts,function ($q){
                return $q->whereIn("district_id",request()->districts);
            })
            ->get();
        return (["data"=>$data]);

    }
}
