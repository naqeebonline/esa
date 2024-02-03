<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\AssignMeetings;
use App\Models\Meeting;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Jubaer\Zoom\Facades\Zoom;

class MeetingApiController extends Controller
{
    public function createMeeting()
    {
        $requestValidator = Validator::make(request()->all(), [
            'meeting_type' => 'required',
            'meeting_title' => 'required',
            'meeting_date' => 'required',
            'live_link_for' => 'required',

        ]);

        if ($requestValidator->fails()) {
            return response()->json(['error' => true, 'message' => implode(' ', $requestValidator->errors()->all())],500);

        }//..... end if() .....//
        $start_time = new Carbon(request()->meeting_date." ".date("H:i:s"));
        //$start_time = $start_time->toDateTimeString();
        $end_time = $start_time->addMinutes(60)->toDateTimeString();




        $meetings = Zoom::createMeeting([
            "agenda" => request()->meeting_type,
            "topic" => request()->meeting_title,
            "type" => 2, // 1 => instant, 2 => scheduled, 3 => recurring with no fixed time, 8 => recurring with fixed time
            "duration" => 60, // in minutes
            "timezone" => 'Asia/Karachi', // set your timezone
            "password" => '9286125',
            "area_id"  => "2233445566",
            "start_time" => $start_time, // set your start time
            "template_id" => 'Dv4YdINdTk+Z5RToadh5ug==', // set your template id  Ex: "Dv4YdINdTk+Z5RToadh5ug==" from https://marketplace.zoom.us/docs/api-reference/zoom-api/meetings/meetingtemplates
            "pre_schedule" => false,  // set true if you want to create a pre-scheduled meeting
            "schedule_for" => 'naqeebonline@gmail.com', // set your schedule for
            "settings" => [
                'join_before_host' => false, // if you want to join before host set true otherwise set false
                'host_video' => false, // if you want to start video when host join set true otherwise set false
                'participant_video' => false, // if you want to start video when participants join set true otherwise set false
                'mute_upon_entry' => false, // if you want to mute participants when they join the meeting set true otherwise set false
                'waiting_room' => false, // if you want to use waiting room for participants set true otherwise set false
                'audio' => 'both', // values are 'both', 'telephony', 'voip'. default is both.
                'auto_recording' => 'none', // values are 'none', 'local', 'cloud'. default is none.
                'approval_type' => 0, // 0 => Automatically Approve, 1 => Manually Approve, 2 => No Registration Required
            ],

        ]);

        $meeting_data = [
            "live_link_for" => request()->live_link_for ?? "police_station",
            "zoom_uuid" => $meetings['data']['uuid'],
            "zoom_meeting_id" => $meetings['data']['id'],
            "topic" => $meetings['data']['topic'],
            "agenda" => $meetings['data']['agenda'],
            "start_time" => $start_time,
            "end_time" => $end_time,
            "start_url" => $meetings['data']['start_url'],
            "join_url" => $meetings['data']['join_url'],
            "encrypted_password" => $meetings['data']['encrypted_password'],
            "json_response" => json_encode($meetings),
            "created_at" => date("Y-m-d h:i:s",strtotime($meetings['data']['created_at'])),
            "created_by" => Auth::user()->id,
        ];
        Meeting::create($meeting_data);
        $meetings["notification"] = $this->sendNotification($meetings['data']['agenda'],$meetings['data']['topic']);
        return response()->json($meetings);
    }

    public function getZoomMeetings()
    {
        $user = auth()->user();
        $assign_meeting_to_user = AssignMeetings::where("to_user",$user->id)->pluck('zoom_meeting_id')->all();
        $data = Meeting::with("users:id,name,email,cnic")->whereIn("zoom_meeting_id",$assign_meeting_to_user)->where("is_active",1)->orderBy("updated_at","desc")->get();
        return response()->json(['error' => false, 'message' => "data found","data"=>$data],200);
    }

    public function sendNotification($title,$message)
    {
        $url = 'https://fcm.googleapis.com/fcm/send';

        $FcmToken = User::whereNotNull('device_token')->pluck('device_token')->all();


        $serverKey = 'AAAAU8XTJY0:APA91bH7TE5CJSLwW00Kjv0qg93d5yA8Ite6Pz1nHI2CVJi8VtYzsrbmYYsXR_hEnxoEJp_bv-uXNFeKA-JZi82yj_vY4AgWC78vqMqJb25FRp4UF_RVHMm9frRnUp-paO3iFfDafoKO'; // ADD SERVER KEY HERE PROVIDED BY FCM

        $data = [
            "registration_ids" => $FcmToken,
            "notification" => [
                "title" => $title,
                "body" => $message,
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
        return $result;
        dd($result);
    }


    public function getUserMeeting()
    {
        $user = auth()->user();
        $meetings = AssignMeetings::where("to_user",$user->id)->pluck('zoom_meeting_id');
        $meetings = Meeting::whereIn("zoom_meeting_id",$meetings)->orderBy('updated_at', 'asc')->first();
        if($meetings){
            return response()->json(['error' => false, 'user_id'=>$user->id,'message' => "data found","data"=>$meetings],200);
        }else{
            return response()->json(['error' => false,'user_id'=>$user->id, 'message' => "data not found","data"=>[]],200);
        }




    }
}
