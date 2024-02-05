<?php

namespace App\Http\Controllers;

use App\Models\AssignMeetings;
use App\Models\Districts;
use App\Models\Meeting;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Jubaer\Zoom\Facades\Zoom;

class MeetingController extends Controller
{

    public function zoommeeting()
    {
        return view("zoomcall.index");
    }

    public function start_meeting()
    {
        return view("zoomcall.meeting");
    }
    public function createMeeting()
    {
        $start_time = Carbon::now()->toDateTimeString();
        $end_time = Carbon::now()->addMinutes(60)->toDateTimeString();
        $meetings = Zoom::createMeeting([
            "agenda" => request()->meeting_type,
            "topic" => request()->meeting_title,
            "type" => 2, // 1 => instant, 2 => scheduled, 3 => recurring with no fixed time, 8 => recurring with fixed time
            "duration" => 60, // in minutes
            "timezone" => 'Asia/Karachi', // set your timezone
            "password" => '12345678',
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
            "created_by" => auth()->user()->id,
        ];
        Meeting::where("created_by",auth()->user()->id)->update(["is_active"=>0]);
        Meeting::create($meeting_data);
        //$meetings["notification"] = $this->sendNotification($meetings['data']['agenda'],$meetings['data']['topic']);
        return response()->json($meetings);
    }
    public function createFullMeeting()
    {
        $start_time = new Carbon(request()->meeting_date." ".date("h:i:s"));
       // $start_time = Carbon::now()->toDateTimeString();
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
            "schedule_for" => 'cpodigit@gmail.com', // set your schedule for
            "settings" => [
                'join_before_host' => false, // if you want to join before host set true otherwise set false
                'host_video' => false, // if you want to start video when host join set true otherwise set false
                'participant_video' => false, // if you want to start video when participants join set true otherwise set false
                'mute_upon_entry' => false, // if you want to mute participants when they join the meeting set true otherwise set false
                'waiting_room' => false, // if you want to use waiting room for participants set true otherwise set false
                'audio' => 'both', // values are 'both', 'telephony', 'voip'. default is both.
                'auto_recording' => 'none', // values are 'none', 'local', 'cloud'. default is none.
                'approval_type' => 2, // 0 => Automatically Approve, 1 => Manually Approve, 2 => No Registration Required
            ],

        ]);

       // dd($meetings);

        $meeting_data = [
            "live_link_for" => request()->live_link_for,
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
            "created_by" => auth()->user()->id,
        ];
        Meeting::where("created_by",auth()->user()->id)->update(["is_active"=>0]);
        Meeting::create($meeting_data);
       // $meetings["notification"] = $this->sendNotification($meetings['data']['agenda'],$meetings['data']['topic']);
        return response()->json($meetings);
    }

    public function listMeeting()
    {
        $role = auth()->user()->roles->pluck('name')[0] ?? '';
        $data = [
            'title' => 'List Meetings',

        ];
        $data['districts'] = Districts::when(auth()->user()->roles->pluck('name')[0] != "Super Admin", function ($q) {
            if(auth()->user()->roles->pluck('slug')[0] == "regional.user"){
                $district_ids = Districts::whereReagin(auth()->user()->region_id)->pluck("id")->all();
                return $q->whereIn("id",$district_ids);
            }else{
                return $q->where(["id" => auth()->user()->district_id]);
            }

        })->get();


        if($role == "Super Admins"){
            $meetings = Meeting::where("end_time",">=",Carbon::now()->toDateTimeString())->get();

        }else{
            $meetings = Meeting::whereCreatedBy(auth()->user()->id)->get();
        }
        $data['data'] = Meeting::where("created_by",auth()->user()->id)->with(["meetingUsers"])->get();
        return view("zoom_meetings.list",$data);
    }

    public function assignUserToMeeting()
    {
        $police_station_users = [];
        $polling_station_user = [];
        $police_mobile_user = [];
        if(request()->police_station_users){
            $police_station_users = request()->police_station_users;
        }
        if(request()->polling_station_user){
            $polling_station_user = request()->polling_station_user;
        }
        if(request()->police_mobile_user){
            $police_mobile_user = request()->police_mobile_user;
        }

        $mergedArray = array_merge($police_station_users, $polling_station_user,$police_mobile_user);


        $res = [];
        $users_id = [];
        foreach ($mergedArray as $key => $value){
            array_push($res,["to_user"=>$value,"zoom_meeting_id"=>request()->meeting_id]);
            array_push($users_id,$value);
        }

        AssignMeetings::insert($res);
        $meeting = Meeting::whereZoomMeetingId(request()->meeting_id)->first();
        $notification_data = [
            "meeting_id"=>$meeting->zoom_meeting_id,
            "join_url"=>$meeting->join_url,
            "password"=>$meeting->encrypted_password,
            "start_time"=>$meeting->start_time
        ];
        $FcmToken = User::whereIn('id',$users_id)->whereNotNull("android_token")->pluck('android_token')->all();
        $this->sendCommonNotification("New Meeting created","Please join the meeting as soon as possiable",$notification_data,$FcmToken);
        return ["status" => true,"message"=>"users are assigned to meeting successfully"];
    }


    public function sendCommonNotification($title,$message,$notification_data,$FcmToken)
    {
        $url = 'https://fcm.googleapis.com/fcm/send';
        $serverKey = 'AAAAU8XTJY0:APA91bH7TE5CJSLwW00Kjv0qg93d5yA8Ite6Pz1nHI2CVJi8VtYzsrbmYYsXR_hEnxoEJp_bv-uXNFeKA-JZi82yj_vY4AgWC78vqMqJb25FRp4UF_RVHMm9frRnUp-paO3iFfDafoKO'; // ADD SERVER KEY HERE PROVIDED BY FCM

        //dd($notification_data,$FcmToken);
        $data = [
            "registration_ids" => $FcmToken,
            "notification" => [
                "title" => $title,
                "body" => $message,

            ],
            "data"=>$notification_data,
            "priority"=>"high",

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

    public function emergency_alert()
    {
        $url = 'https://fcm.googleapis.com/fcm/send';

        $FcmToken = User::whereNotNull('device_token')->pluck('device_token')->all();
        $serverKey = 'AAAAU8XTJY0:APA91bH7TE5CJSLwW00Kjv0qg93d5yA8Ite6Pz1nHI2CVJi8VtYzsrbmYYsXR_hEnxoEJp_bv-uXNFeKA-JZi82yj_vY4AgWC78vqMqJb25FRp4UF_RVHMm9frRnUp-paO3iFfDafoKO'; // ADD SERVER KEY HERE PROVIDED BY FCM

        $data = [
            "registration_ids" => $FcmToken,
            "notification" => [
                "title" => rand(952254,9999999)." Notification from Control Room ",
                "body" => "Please Join the meeting its urgen. ID: ".rand(952254,9999999),

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


    public function sendMeetingNotification()
    {
        $meeting_id = request()->meeting_id;
        $users_id = AssignMeetings::where("zoom_meeting_id",$meeting_id)->pluck('to_user');
        $meeting = Meeting::where("zoom_meeting_id",$meeting_id)->first();
        AssignMeetings::where("zoom_meeting_id",$meeting_id)->update(["updated_at"=>date("Y-m-d h:i:s")]);

        $notification_data = [
            "meeting_id"=>$meeting->zoom_meeting_id,
            "join_url"=>$meeting->join_url,
            "password"=>$meeting->encrypted_password,
            "start_time"=>$meeting->start_time
        ];
        $FcmToken = User::whereIn('id',$users_id)->whereNotNull('android_token')->pluck('android_token')->all();
        $this->sendCommonNotification("New Meeting created","Please join the meeting as soon as possiable",$notification_data,$FcmToken);
        return ["status"=>true,"message"=>"Notification has been sent","users_token"=>$FcmToken,"users_id"=>$users_id];

    }
}
