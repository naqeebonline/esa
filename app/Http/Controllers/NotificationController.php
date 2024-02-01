<?php

namespace App\Http\Controllers;

use App\Models\Districts;
use App\Models\Notification;
use App\Models\PolicePost;
use App\Models\PoliceStation;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\URL;
use Yajra\DataTables\Facades\DataTables;

class NotificationController extends Controller
{
    public function index()
    {
        $data['district'] = Districts::get();
        $data['rank'] = (new CommonApiController())->getRankForWeb();
        $data['notification'] = Notification::when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        })->get();
        return view("notifications.add",$data);
    }

    public function allNotification()
    {
        $users = Notification::when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        });
        return DataTables::of($users)
            ->addColumn('action', function($cert) {
                $actionsBtn = '<a class="dropdown-item p-50" href="'.route('edit.notifications',[$cert->id]).'"><i class="bx bx-file-blank mr-1"></i> Edit</a>';

                $actionsBtn .= '<a class="dropdown-item p-50 delete_table_data" data-id="'.$cert->id.'" href="javascript:void(0)"><i class="bx bx-window-close"></i> Delete</a>';


                return $actionsBtn;
            })
            ->addColumn('attachment', function($cert) {
                return '<a href="'.URL::to('storage/')."/".$cert->attachment.'" target="_blank">View Image</a>';

            })
            ->addColumn('audio', function($cert) {
                /*return '<audio controls>
  <source src="'.URL::to('storage/')."/".$cert->audio.'" type="audio/ogg">
  <source src="'.URL::to('storage/')."/".$cert->audio.'" type="audio/mpeg">
 
</audio>';*/
                return '<a href="'.URL::to('storage/')."/".$cert->audio.'" target="_blank">Audio</a>';

            })
            ->addColumn('video', function($cert) {
                return '<a href="'.URL::to('storage/')."/".$cert->video.'" target="_blank">Video</a>';

            })
             ->rawColumns(["action","attachment","audio","video"])
            ->make(true);
    }

    public function listNotification()
    {
        $data = [
            'title' => 'Notification List',

        ];
        return view("notifications.list",$data);
    }

    public function saveNotification()
    {

        $data = request()->except(["_token","id"]);
        if(request()->has("attachment") && !empty(request()->attachment)){
            $path = request()->file('attachment')->store('attachment', 'public');
            $data['attachment'] = $path;

        }

        if(request()->has("audio") && !empty(request()->audio)){

            $path = request()->file('audio')->store('audio', 'public');
            $data['audio']=$path;

        }

        if(request()->has("video") && !empty(request()->video)){

            $path = request()->file('video')->store('video', 'public');
            $data['video']=$path;

        }

       $notification =  Notification::create($data);
        $notification_data = [
            "data"=>$notification
        ];
        $FcmToken = User::pluck('android_token')->all();
        (new MeetingController())->sendCommonNotification("Control Room Notification","New Notification issued from Control Room",$notification_data,$FcmToken);
        return redirect()->route('list.notifications')->with('success', 'Notification created successfully.');
    }

    public function editNotification($id)
    {
        $data["title"] = "Edit Notification";
        $data['district'] = Districts::get();
        $data['rank'] = (new CommonApiController())->getRankForWeb();
        $data['police_stations'] = PoliceStation::when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        })->get();
        $data["data"] = Notification::whereId($id)->first();
        return view("notifications.edit",$data);
    }

    public function updateNotification()
    {
        $data = request()->except(["_token","id","audio","attachment","video"]);

        if(request()->has("attachment") && !empty(request()->attachment)){
            $path = request()->file('attachment')->store('attachment', 'public');
            $data['attachment'] = $path;

        }

        if(request()->has("audio") && !empty(request()->audio)){

            $path = request()->file('audio')->store('audio', 'public');
            $data['audio']=$path;

        }

        if(request()->has("video") && !empty(request()->video)){

            $path = request()->file('video')->store('video', 'public');
            $data['video']=$path;

        }


        Notification::where(["id"=>request()->id])->update($data);
        return redirect()->route('list.notifications')->with('success', 'Police Post info updated successfully.');
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
    public function destroy()
    {
        PolicePost::whereId(request()->id)->delete();
        return ["status"=>true,"message"=>"Record deleted successfully"];
    }
}
