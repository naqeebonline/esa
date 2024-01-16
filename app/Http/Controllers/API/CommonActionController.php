<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Hospital;
use App\Models\PoliceMobile;
use App\Models\PoliceStation;
use App\Models\User;
use App\Traits\CommonMethods;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Modules\EIdentity\Entities\Designations;

/**
 *
 *This controller will be using for common APIs which can be use
 * within or outside system, all things will be kept here
 *
 */
class CommonActionController extends Controller
{
    use CommonMethods;
    public function getDesignationsList(Request $request){

        $designations = Designations::pluck('title','id');

        return $this->apiJsonResponse(1,'Egov Designations list',$designations);

    }

    public function saveMobileUserToken()
    {
        $user = Auth::user();
        if(request()->type == "ios"){
            User::whereId($user->id)->update(["ios_token"=>request()->token]);
        }else{
            User::whereId($user->id)->update(["android_token"=>request()->token]);
        }
        return response()->json(['error' => false, 'message' => "Token Saved successfully","data"=>User::whereId($user->id)->first()],200);
    }

    public function findNearest()
    {
        /*
         * using eloquent approach, make sure to replace the "Restaurant" with your actual model name
         * replace 6371000 with 6371 for kilometer and 3956 for miles
         */

        $latitude = request()->lat;
        $longitude = request()->lng;
        $radius = 40;
        if(request()->radius){
         $radius = request()->radius;
        }
        $police_station = PoliceStation::selectRaw("id, title, ps_contact_number, latitude, longitude,
                         ( 6371 * acos( cos( radians(?) ) *
                           cos( radians( latitude ) )
                           * cos( radians( longitude ) - radians(?)
                           ) + sin( radians(?) ) *
                           sin( radians( latitude ) ) )
                         ) AS distance", [$latitude, $longitude, $latitude])

            ->having("distance", "<", $radius)->orderBy("distance",'asc')->offset(0)->limit(20)->get();

        $police_mobile = PoliceMobile::selectRaw("id,incharge_name, contact_number,rank, lat, lng,
                         ( 6371 * acos( cos( radians(?) ) *
                           cos( radians( lat ) )
                           * cos( radians( lng ) - radians(?)
                           ) + sin( radians(?) ) *
                           sin( radians( lat ) ) )
                         ) AS distance", [$latitude, $longitude, $latitude])

            ->having("distance", "<", $radius)->orderBy("distance",'asc')->offset(0)->limit(20)->get();

        $hospitals = Hospital::selectRaw("id, name, contact_number, lat, lng,
                         ( 6371 * acos( cos( radians(?) ) *
                           cos( radians( lat ) )
                           * cos( radians( lng ) - radians(?)
                           ) + sin( radians(?) ) *
                           sin( radians( lat ) ) )
                         ) AS distance", [$latitude, $longitude, $latitude])

            ->having("distance", "<", $radius)->orderBy("distance",'asc')->offset(0)->limit(20)->get();

        return response()->json(['error' => false, 'message' => "data found",
            "police_station"=>$police_station,
            "police_mobile"=>$police_mobile,
            "hospitals"=>$hospitals,

        ],200);
    }

}
