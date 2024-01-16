<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Districts;
use App\Models\Hospital;
use App\Models\PoliceMobile;
use App\Models\PoliceStation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;


class PoliceStationApiController extends Controller
{
    public function addPoliceStation()
    {
        try{
            $user = auth()->user();

            $requestValidator = Validator::make(request()->all(), [
                'lat' => 'required',
                'lng' => 'required',

            ]);

            if ($requestValidator->fails()) {
                return response()->json(['error' => true, 'message' => implode(' ', $requestValidator->errors()->all())],500);

            }//..... end if() .....//
            $data = request()->except(["id"]);
            $data['district_id'] = $user->district_id;

            $res = PoliceStation::create($data);

            return response()->json(['error' => false, 'message' => "Police Station Created successfully","data"=>PoliceStation::whereId($res->id)->first()],200);
        }catch (RequestException $e) {

            $arr["error"] = true;
            $arr["message"] = 'Server Error.';
            $arr["error"] = $e->getMessage();
            return response()->json($arr,500);
        }

    }

    public function updatePoliceStation()
    {

        try{
            $user = auth()->user();

            $requestValidator = Validator::make(request()->all(), [
                'id' => 'required',

            ]);


            if ($requestValidator->fails()) {
                return response()->json(['error' => true, 'message' => implode(' ', $requestValidator->errors()->all())],500);

            }//..... end if() .....//
            $data = request()->except(["id"]);
            PoliceStation::updateOrCreate([
                'id'=>request()->id,
            ],$data);
            return response()->json(['error' => false, 'message' => "Police Station updated successfully","data"=>PoliceStation::find(request()->id)],200);
        }catch (RequestException $e) {

            $arr["error"] = true;
            $arr["message"] = 'Server Error.';
            $arr["error"] = $e->getMessage();
            return response()->json($arr,500);
        }
    }

    public function getPoliceStation($id=NULL)
    {
        $district_id = $_GET['district_id'] ?? "";
        $circle_id = $_GET['circle_id'] ?? "";

        if($id){
            $data = PoliceStation::when($district_id, function ($q) use ($district_id) {
                return $q->where(["district_id"=>$district_id]);
            })->when($circle_id, function ($q) use ($circle_id) {
                return $q->where(["circle_id"=>$circle_id]);
            })->whereId($id)->first();
            $district = Districts::whereId($data->district_id)->first();
            return response()->json(['error' => false, 'message' => "data found","data"=>$data,"district"=>$district],200);
        }else{

            $data = PoliceStation::when($district_id, function ($q) use ($district_id) {
                return $q->where(["district_id"=>$district_id]);
            })->when($circle_id, function ($q) use ($circle_id) {
                return $q->where(["circle_id"=>$circle_id]);
            })->get();
            return response()->json(['error' => false, 'message' => "data found","data"=>$data],200);
        }

    }

    public function getPoliceStationDistrict($police_station_id)
    {
        $ps = PoliceStation::whereId($police_station_id)->first();
        return $ps->district_id;
    }


}
