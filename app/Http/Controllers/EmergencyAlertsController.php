<?php

namespace App\Http\Controllers;

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

        return view("emergency_alerts.list",$data);
    }

    public function allAlerts()
    {
        $users = EmergencyAlert::with('district')->when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        });
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
            ->addColumn('district_name', function($cert) {
                return $cert->district->title ?? "";
            })
            ->addColumn('user_name', function($cert) {
                return $this->getUserName($cert->user_id);
            })

            ->rawColumns(["district_name","user_name","attachment","audio","video"])
            ->make(true);
    }

    public function getUserName($user_id)
    {
        $res = User::whereId($user_id)->first();
        return $res->username ?? "";
    }
}
