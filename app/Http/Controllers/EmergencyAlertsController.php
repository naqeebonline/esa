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
        $data['districts'] = Districts::get();

        return view("emergency_alerts.list",$data);
    }

    public function allAlerts()
    {
        $district_id = request()->district_id ?? "";
        $users = EmergencyAlert::with('district')->with('users')
            ->when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        })
            ->when($district_id, function ($q) use ($district_id) {
            return $q->where(["district_id"=>$district_id]);
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

            ->addColumn('action', function($cert) {
                $actionsBtn = '<a class="dropdown-item p-50" href="'.route('view.emergency.alert',[$cert->id]).'"><i class="bx bx-file-blank mr-1"></i> View</a>';
                return $actionsBtn;
            })

            ->rawColumns(["attachment",'action',"status","audio","video"])
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
}
