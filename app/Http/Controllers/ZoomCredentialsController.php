<?php

namespace App\Http\Controllers;

use App\Models\Districts;
use App\Models\Notification;
use App\Models\PolicePost;
use App\Models\PoliceStation;
use App\Models\User;
use App\Models\ZoomCredentials;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\URL;
use Yajra\DataTables\Facades\DataTables;

class ZoomCredentialsController extends Controller
{
    public function index()
    {
        $data['district'] = Districts::get();
        return view("zoom_credentials.add",$data);
    }

    public function allCredentials()
    {
        $users = ZoomCredentials::with("districts");
        return DataTables::of($users)
            ->addColumn('action', function($cert) {
                $actionsBtn = '<a class="dropdown-item p-50" href="'.route('edit.credentials',[$cert->id]).'"><i class="bx bx-file-blank mr-1"></i> Edit</a>';

                $actionsBtn .= '<a class="dropdown-item p-50 delete_table_data" data-id="'.$cert->id.'" href="javascript:void(0)"><i class="bx bx-window-close"></i> Delete</a>';


                return $actionsBtn;
            })

            ->addColumn('district_name', function($cert) {
                return $cert->districts?->title ?? "";
            })
            ->rawColumns(["action","district_name","attachment","audio","video"])
            ->make(true);
    }

    public function listCredentials()
    {
        $data = [
            'title' => 'Zoom Credentials List',

        ];
        $data['district'] = Districts::get();
        $data['ZoomCredentials'] = ZoomCredentials::get();
        return view("zoom_credentials.list",$data);
    }

    public function saveCredentials()
    {
        $FcmToken = [];
        $data = request()->except(["_token","id"]);
        $notification =  ZoomCredentials::create($data);
        return redirect()->route('list.credentials')->with('success', 'Credential created successfully.');
    }

    public function editCredentials($id)
    {
        $data["title"] = "Edit Credentials";
        $data['district'] = Districts::get();
        $data['rank'] = (new CommonApiController())->getRankForWeb();

        $data["data"] = ZoomCredentials::whereId($id)->first();
        return view("zoom_credentials.edit",$data);
    }

    public function updateCredentials()
    {
        $data = request()->except(["_token","id"]);
        ZoomCredentials::where(["id"=>request()->id])->update($data);
        return redirect()->route('list.credentials')->with('success', 'Credentials updated successfully.');
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
