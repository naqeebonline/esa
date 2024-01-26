<?php

namespace App\Http\Controllers;

use App\Models\Districts;
use App\Models\PolicePost;
use App\Models\PoliceStation;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class PolicePostController extends Controller
{
    public function index()
    {
        $data['district'] = Districts::get();
        $data['rank'] = (new CommonApiController())->getRankForWeb();
        $data['police_stations'] = PoliceStation::when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        })->get();
        return view("police_post.add",$data);
    }

    public function allPolicePost()
    {
        $users = PolicePost::when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        });
        return DataTables::of($users)
            ->addColumn('action', function($cert) {
                $actionsBtn = '<a class="dropdown-item p-50" href="'.route('edit.police.post',[$cert->id]).'"><i class="bx bx-file-blank mr-1"></i> Edit</a>';

                $actionsBtn .= '<div role="separator" class="dropdown-divider"></div>';


                return $actionsBtn;
            })
            ->addColumn('district_name', function($cert) {
                return $cert->district->title ?? "";
            })
            ->addColumn('police_station_name', function($cert) {
                return $cert->policeStation->title ?? "";
            })

            ->rawColumns(["police_station_name","district_name","action"])
            ->make(true);
    }

    public function listPolicePost()
    {
        $data = [
            'title' => 'List Police Post',

        ];


        return view("police_post.list",$data);
    }

    public function savePolicePost()
    {
        $res = request()->except(["_token"]);
        if(auth()->user()->roles->pluck('name')[0] !="Super Admin"){
            $res['district_id'] = auth()->user()->district_id;
            $data['created_by'] = auth()->user()->id;
        }
        PolicePost::create($res);
        return redirect()->route('list.police.post')->with('success', 'Police Post created successfully.');
    }

    public function editPolicePost($id)
    {
        $data["title"] = "Edit Police Post";
        $data['district'] = Districts::get();
        $data['rank'] = (new CommonApiController())->getRankForWeb();
        $data['police_stations'] = PoliceStation::when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        })->get();
        $data["data"] = PolicePost::whereId($id)->first();
        return view("police_post.edit",$data);
    }

    public function updatePolicePost()
    {
        $data = request()->except(["_token","id"]);

        if(auth()->user()->roles->pluck('name')[0] !="Super Admin"){
            $data['district_id'] = auth()->user()->district_id;
        }
        PolicePost::where(["id"=>request()->id])->update($data);

        return redirect()->route('list.police.post')->with('success', 'Police Post info updated successfully.');
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
