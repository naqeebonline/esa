<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Districts;
use App\Models\PoliceMobile;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class PoliceMobileApiController extends Controller
{

    public function updatePoliceMobile()
    {

        try{
            $user = auth()->user();
            $requestValidator = Validator::make(request()->all(), [
                'id' => 'required',
                'lat' => 'required',
                'lng' => 'required',

            ]);


            if ($requestValidator->fails()) {
                return response()->json(['error' => true, 'message' => implode(' ', $requestValidator->errors()->all())],500);

            }//..... end if() .....//
            $data = request()->except(["id"]);
            PoliceMobile::updateOrCreate([
                'id'=>request()->id,
            ],$data);
            return response()->json(['error' => false, 'message' => "Police Mobile updated successfully","data"=>PoliceMobile::find(request()->id)],200);
        }catch (RequestException $e) {

            $arr["error"] = true;
            $arr["message"] = 'Server Error.';
            $arr["error"] = $e->getMessage();
            return response()->json($arr,500);
        }
    }

    public function getPoliceMobile($id=NULL)
    {
        $district_id = $_GET['district_id'] ?? "";
        $circle_id = $_GET['circle_id'] ?? "";
        $police_station_id = $_GET['police_station_id'] ?? "";
        if($id){
            $data = PoliceMobile::whereId($id)->first();
            $district = Districts::whereId($data->district_id)->first();
            return response()->json(['error' => false, 'message' => "data found","data"=>$data,"district"=>$district],200);
        }else{

            $data = PoliceMobile::when($district_id, function ($q) use ($district_id) {
                return $q->where(["district_id"=>$district_id]);
            })->when($circle_id, function ($q) use ($circle_id) {
                return $q->where(["circle_id"=>$circle_id]);
            })->when($police_station_id, function ($q) use ($police_station_id) {
                return $q->where(["police_station_id"=>$police_station_id]);
            })->get();
            return response()->json(['error' => false, 'message' => "data found","data"=>$data],200);
        }

    }

}
