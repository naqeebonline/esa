<?php

namespace App\Http\Controllers;

use App\Models\Districts;
use App\Models\PoliceLine;
use App\Models\PoliceStation;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class PoliceLineController extends Controller
{
    public function index()
    {

        $data['district'] = Districts::get();
        $data['rank'] = (new CommonApiController())->getRankForWeb();
        $data['police_stations'] = PoliceStation::when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        })->get();
        return view("police_line.add",$data);
    }

    public function policeLine()
    {
        $users = PoliceLine::when(auth()->user()->roles->pluck('name')[0] !="Super Admin", function ($q) {
            return $q->where(["district_id"=>auth()->user()->district_id]);
        });
        return DataTables::of($users)
            ->addColumn('action', function($cert) {
                $actionsBtn = '<a class="dropdown-item p-50" href="'.route('edit.police.line',[$cert->id]).'"><i class="bx bx-file-blank mr-1"></i> Edit</a>';

                $actionsBtn .= '<div role="separator" class="dropdown-divider"></div>';
                $actionsBtn .= '<a class="dropdown-item p-50 delete_table_data" data-id="'.$cert->id.'" href="javascript:void(0)"><i class="bx bx-window-close"></i> Delete</a>';

                return $actionsBtn;
            })
            ->addColumn('district_name', function($cert) {
                return $cert->district?->title;
                })
            ->rawColumns(["district_name","action"])
            ->make(true);
    }

    public function listPoliceLine()
    {
        $data = [
            'title' => 'List Police Line',

        ];


        return view("police_line.list",$data);
    }

    public function savePoliceLine()
    {
        $data = request()->except(["_token"]);
        if(auth()->user()->roles->pluck('name')[0] !="Super Admin"){
            $data['district_id'] = auth()->user()->district_id;
            $data['created_by'] = auth()->user()->id;
        }

        $data['lat'] = preg_replace("/[^0-9.]/", "", request()->lat);
        $data['lng'] = preg_replace("/[^0-9.]/", "", request()->lng);
        PoliceLine::create($data);
        return redirect()->route('list.police.line')->with('success', 'Police Line created successfully.');
    }

    public function editPoliceLine($id)
    {
        $data["title"] = "Edit Police Line";
        $data['district'] = Districts::get();
        $data['rank'] = (new CommonApiController())->getRankForWeb();
        $data['police_stations'] = PoliceStation::get();
        $data["data"] = PoliceLine::whereId($id)->first();
        return view("police_line.edit",$data);
    }

    public function updatePoliceLine()
    {
        $data = request()->except(["_token","id"]);
        $data['lat'] = preg_replace("/[^0-9.]/", "", request()->lat);
        $data['lng'] = preg_replace("/[^0-9.]/", "", request()->lng);
        PoliceLine::where(["id"=>request()->id])->update($data);
        return redirect()->route('list.police.line')->with('success', 'Police Line info updated successfully.');
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
        PoliceLine::whereId(request()->id)->delete();
        return ["status"=>true,"message"=>"Record deleted successfully"];
    }
    
}