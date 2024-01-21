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
        $police_station = PoliceStation::selectRaw("id,title,ps_contact_number,latitude,longitude,
                         ( 6371 * acos( cos( radians(?) ) *
                           cos( radians( latitude ) )
                           * cos( radians( longitude ) - radians(?)
                           ) + sin( radians(?) ) *
                           sin( radians( latitude ) ) )
                         ) AS distance", [$latitude, $longitude, $latitude])
            ->whereNotNull("latitude")
            ->whereNotNull("longitude")
            ->having("distance", "<", $radius)->orderBy("distance",'asc')->offset(0)->limit(20)->get();

        $police_mobile = PoliceMobile::selectRaw("id,contact_number,rank,lat,lng,
                         ( 6371 * acos( cos( radians(?) ) *
                           cos( radians( lat ) )
                           * cos( radians( lng ) - radians(?)
                           ) + sin( radians(?) ) *
                           sin( radians( lat ) ) )
                         ) AS distance", [$latitude, $longitude, $latitude])
            ->whereNotNull("lat")
            ->whereNotNull("lng")
            ->having("distance", "<", $radius)->orderBy("distance",'asc')->offset(0)->limit(20)->get();

        $hospitals = Hospital::selectRaw("id,name,contact_number,lat,lng,
                         ( 6371 * acos( cos( radians(?) ) *
                           cos( radians( lat ) )
                           * cos( radians( lng ) - radians(?)
                           ) + sin( radians(?) ) *
                           sin( radians( lat ) ) )
                         ) AS distance", [$latitude, $longitude, $latitude])
            ->whereNotNull("lat")
            ->whereNotNull("lng")
            ->having("distance", "<", $radius)->orderBy("distance",'asc')->offset(0)->limit(20)->get();

        return response()->json(['error' => false, 'message' => "data found",
            "police_station"=>$police_station,
            "police_mobile"=>$police_mobile,
            "hospitals"=>$hospitals,

        ],200);
    }

    public function sendMobileNotification()
    {
        $url = 'https://fcm.googleapis.com/fcm/send';

        $FcmToken = User::whereNotNull('android_token')->pluck('android_token')->all();


        $serverKey = 'AAAAU8XTJY0:APA91bH7TE5CJSLwW00Kjv0qg93d5yA8Ite6Pz1nHI2CVJi8VtYzsrbmYYsXR_hEnxoEJp_bv-uXNFeKA-JZi82yj_vY4AgWC78vqMqJb25FRp4UF_RVHMm9frRnUp-paO3iFfDafoKO'; // ADD SERVER KEY HERE PROVIDED BY FCM

        $data = [
            "registration_ids" => $FcmToken,
            "notification" => [
                "title" => "Notification From Web Admin",
                "body" => "Hi this is test notification from admin side",
            ]
        ];
        $encodedData = json_encode($data);

        $headers = [
            'Authorization:key=' . $serverKey,
            'Content-Type: application/json',
        ];

        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
        curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
        // Disabling SSL Certificate support temporarly
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $encodedData);
        // Execute post
        $result = curl_exec($ch);
        if ($result === FALSE) {
            die('Curl failed: ' . curl_error($ch));
        }
        // Close connection
        curl_close($ch);
        // FCM response
        return response()->json(['error' => false, 'message' => "Notification sent successfully","response"=>json_decode($result)],200);
    }

    public function emergencyAlert()
    {
        $url = 'https://fcm.googleapis.com/fcm/send';

        $FcmToken = User::whereNotNull('android_token')->pluck('android_token')->all();


        $serverKey = 'AAAAU8XTJY0:APA91bH7TE5CJSLwW00Kjv0qg93d5yA8Ite6Pz1nHI2CVJi8VtYzsrbmYYsXR_hEnxoEJp_bv-uXNFeKA-JZi82yj_vY4AgWC78vqMqJb25FRp4UF_RVHMm9frRnUp-paO3iFfDafoKO'; // ADD SERVER KEY HERE PROVIDED BY FCM

        $data = [
            "registration_ids" => $FcmToken,
            "notification" => [
                "title" => "Notification From Web Admin",
                "body" => "Hi this is test notification from admin side",
            ]
        ];
        $encodedData = json_encode($data);

        $headers = [
            'Authorization:key=' . $serverKey,
            'Content-Type: application/json',
        ];

        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
        curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
        // Disabling SSL Certificate support temporarly
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $encodedData);
        // Execute post
        $result = curl_exec($ch);
        if ($result === FALSE) {
            die('Curl failed: ' . curl_error($ch));
        }
        // Close connection
        curl_close($ch);
        // FCM response


        return response()->json(['error' => false, 'message' => "Emergency Alert sent successfully","response"=>json_decode($result)],200);
    }


}
