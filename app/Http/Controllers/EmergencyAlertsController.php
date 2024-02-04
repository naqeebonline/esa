<?php

namespace App\Http\Controllers;

use App\Models\Districts;
use App\Models\EmergencyAlert;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\URL;
use Yajra\DataTables\Facades\DataTables;

class EmergencyAlertsController extends Controller
{
    //

    public function index()
    {
        $data = [
            'title' => 'Emergency Alerts',

        ];
        $data['districts'] = Districts::when(auth()->user()->roles->pluck('name')[0] != "Super Admin", function ($q) {
            return $q->where(["id" => auth()->user()->district_id]);
        })->get();

        return view("emergency_alerts.list",$data);
    }

    public function allAlerts()
    {
        $district_id = request()->district_id ?? "";
        $notification_type = request()->notification_type ?? "";
        $is_read_filter = request()->is_read_filter ?? "";
        $alert_status = request()->alert_status ?? "";
        $users = EmergencyAlert::with('district')->with('users')
            ->when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        })
            ->when($district_id, function ($q) use ($district_id) {
            return $q->where(["district_id"=>$district_id]);
        })
            ->when($notification_type, function ($q) use ($notification_type) {
            return $q->where(["type"=>$notification_type]);
        })
            ->when($is_read_filter, function ($q) use ($is_read_filter) {
            return $q->where(["is_read"=>$is_read_filter]);
        })
            ->when($alert_status, function ($q) use ($alert_status) {
            return $q->where(["alert_status"=>$alert_status]);
        })

        ->orderBy("created_at","desc");
        return DataTables::of($users)
            ->addColumn('attachment', function($cert) {
                return '<a href="'.URL::to('storage/')."/".$cert->attachment.'" target="_blank">View Image</a>';
            })
            ->addColumn('audio', function($cert) {
                return '<a href="'.URL::to('storage/')."/".$cert->audio.'" target="_blank">Audio</a>';
            })
            ->addColumn('video', function($cert) {
                return '<a href="'.URL::to('storage/')."/".$cert->video.'" target="_blank">Video</a>';
            })

            ->addColumn('status', function($cert) {
                if($cert->is_read == 1){
                    return '<b style="color:red">New</b>';
                }else{
                    return '<b style="color:green">Read</b>';
                }
            })

            ->addColumn('alert_status', function($cert) {
                if($cert->alert_status == "Pending"){
                    return '<b style="color:red">Pending</b>';
                }else if ($cert->alert_status == "In Process"){
                    return '<b style="color:orange">In Process</b>';
                }else{
                    return '<b style="color:green">Resolved</b>';
                }
            })

            ->addColumn('created_at', function($cert) {

                return date("d-m-Y h:i A", strtotime($cert->created_at));
            })

            ->addColumn('action', function($cert) {

                $actionsBtn = '<a class="dropdown-item p-50" href="'.route('view.emergency.alert',[$cert->id]).'"><i class="bx bx-file-blank mr-1"></i> View</a>';
                return $actionsBtn;
            })

            ->rawColumns(["attachment",'action',"status","audio","video","alert_status"])
            ->make(true);
    }

    public function getUserName($user_id)
    {
        $res = User::whereId($user_id)->first();
        return $res->username ?? "";
    }

    public function viewEmergencyAlert($id)
    {
        $res = EmergencyAlert::with('district')->with('users')->whereId($id)->first();
        if(auth()->user()->roles->pluck('name')[0] !="Super Admin"){
            EmergencyAlert::whereId($id)->update(["is_read"=>0]);
        }
        if($res){
            if($res->attachment){
                $res->attachment = URL::to('storage/')."/".$res->attachment;
            }
            if($res->audio){
                $res->audio = URL::to('storage/')."/".$res->audio;
            }
            if($res->video){
                $res->video = URL::to('storage/')."/".$res->video;
            }
        }


        $data['data'] = $res;
        return view("emergency_alerts.view",$data);
    }

    public function getCountEmergencyAlerts()
    {
        if(auth()->user()->roles->pluck('name')[0] !="Super Admin"){
            $res = EmergencyAlert::where("is_read",1)->count();
        }else{
            $res = EmergencyAlert::whereDistrictId(auth()->user()->district_id)->where("is_read",1)->count();
        }
        return ["status"=>true,"total"=>$res];

    }

    public function updateAlertStatus()
    {
        $data = request()->except(["id","_token"]);
        $data["updated_at"] = date("Y-m-d h:i:s");

        EmergencyAlert::whereId(request()->id)->update($data);
        return ["status"=>true,"message"=>"Record updated successfully"];
    }
}
