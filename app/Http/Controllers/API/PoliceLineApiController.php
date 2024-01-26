<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Districts;
use App\Models\PoliceLine;
use App\Models\PoliceStation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class PoliceLineApiController extends Controller
{
    public function addPoliceLine()
    {
        try{
            $user = auth()->user();

            $requestValidator = Validator::make(request()->all(), [
                'district_id' => 'required',

                'contact_number' => 'required',
                'strength' => 'required'
            ]);

            if ($requestValidator->fails()) {
                return response()->json(['error' => true, 'message' => implode(' ', $requestValidator->errors()->all())],500);

            }//..... end if() .....//
            $data = request()->except(["id"]);
            $res = PoliceLine::create($data);

            return response()->json(['error' => false, 'message' => "Police Line Created successfully","data"=>PoliceLine::whereId($res->id)->first()],200);
        }catch (RequestException $e) {

            $arr["error"] = true;
            $arr["message"] = 'Server Error.';
            $arr["error"] = $e->getMessage();
            return response()->json($arr,500);
        }

    }

    public function updatePoliceLine()
    {

        try{
            $user = auth()->user();
            $requestValidator = Validator::make(request()->all(), [
                'id' => 'required',
             /*   'district_id' => 'required',
                'police_station_id' => 'required',

                'contact_number' => 'required',
                'strength' => 'required'*/

            ]);

            if ($requestValidator->fails()) {
                return response()->json(['error' => true, 'message' => implode(' ', $requestValidator->errors()->all())],500);

            }//..... end if() .....//
            //$data = request()->except(["id"]);
            $data = request()->only(["lat","lng"]);
            PoliceLine::updateOrCreate([
                'id'=>request()->id,
            ],$data);
            return response()->json(['error' => false, 'message' => "Police Line updated successfully","data"=>PoliceLine::find(request()->id)],200);
        }catch (RequestException $e) {

            $arr["error"] = true;
            $arr["message"] = 'Server Error.';
            $arr["error"] = $e->getMessage();
            return response()->json($arr,500);
        }
    }

    public function getPoliceLine($id=NULL)
    {
        $district_id = $_GET['district_id'] ?? "";
        if($id){
            $data = PoliceLine::when($district_id, function ($q) use ($district_id) {
                return $q->where(["district_id"=>$district_id]);
            })->whereId($id)->first();
            $district = Districts::select(["id","title"])->whereId($data->district_id)->first();
            $police_station = PoliceStation::select(["id","title"])->whereId($data->district_id)->first();
            return response()->json(['error' => false, 'message' => "data found","data"=>$data,"district"=>$district,"police_station"=>$police_station],200);
        }else{
            $data = PoliceLine::when($district_id, function ($q) use ($district_id) {
                return $q->where(["district_id"=>$district_id]);
            })->get();
            return response()->json(['error' => false, 'message' => "data found","data"=>$data],200);
        }

    }
}
