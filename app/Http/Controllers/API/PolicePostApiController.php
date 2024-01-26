<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Districts;
use App\Models\PolicePost;
use App\Models\PoliceStation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class PolicePostApiController extends Controller
{
    public function addPolicePost()
    {
        try{
            $user = auth()->user();

            $requestValidator = Validator::make(request()->all(), [
                'district_id' => 'required',
                'police_station_id' => 'required',

                'contact_number' => 'required',
                'strength' => 'required'
            ]);

            if ($requestValidator->fails()) {
                return response()->json(['error' => true, 'message' => implode(' ', $requestValidator->errors()->all())],500);

            }//..... end if() .....//
            $data = request()->except(["id"]);
            $res = PolicePost::create($data);

            return response()->json(['error' => false, 'message' => "Police Post Created successfully","data"=>PolicePost::whereId($res->id)->first()],200);
        }catch (RequestException $e) {

            $arr["error"] = true;
            $arr["message"] = 'Server Error.';
            $arr["error"] = $e->getMessage();
            return response()->json($arr,500);
        }

    }

    public function updatePolicePost()
    {

        try{
            $user = auth()->user();
            $requestValidator = Validator::make(request()->all(), [
                'id' => 'required',
                /*'district_id' => 'required',
                'police_station_id' => 'required',
                'contact_number' => 'required',
                'strength' => 'required'*/

            ]);

            if ($requestValidator->fails()) {
                return response()->json(['error' => true, 'message' => implode(' ', $requestValidator->errors()->all())],500);

            }//..... end if() .....//
            //$data = request()->except(["id"]);
            $data = request()->only(["lat","lng"]);
            PolicePost::updateOrCreate([
                'id'=>request()->id,
            ],$data);
            return response()->json(['error' => false, 'message' => "Police Post updated successfully","data"=>PolicePost::find(request()->id)],200);
        }catch (RequestException $e) {

            $arr["error"] = true;
            $arr["message"] = 'Server Error.';
            $arr["error"] = $e->getMessage();
            return response()->json($arr,500);
        }
    }

    public function getPolicePost($id=NULL)
    {
        $district_id = $_GET['district_id'] ?? "";
        $police_station_id = $_GET['police_station_id'] ?? "";
        if($id){
            $data = PolicePost::when($district_id, function ($q) use ($district_id) {
                return $q->where(["district_id"=>$district_id]);
            })->whereId($id)->first();
            $district = Districts::select(["id","title"])->whereId($data->district_id)->first();
            $police_station = PoliceStation::select(["id","title"])->whereId($data->district_id)->first();
            return response()->json(['error' => false, 'message' => "data found","data"=>$data,"district"=>$district,"police_station"=>$police_station],200);
        }else{
            $data = PolicePost::when($district_id, function ($q) use ($district_id) {
                return $q->where(["district_id"=>$district_id]);
            })->when($police_station_id, function ($q) use ($police_station_id) {
                return $q->where(["police_station_id"=>$police_station_id]);
            })->get();
            return response()->json(['error' => false, 'message' => "data found","data"=>$data],200);
        }

    }


}
