<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Districts;
use App\Models\PoliceStation;
use App\Models\PollingStation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class PollingStationApiController extends Controller
{
    public function addPollingStation()
    {
        try{
            $user = auth()->user();

            $requestValidator = Validator::make(request()->all(), [
                'police_station_id' => 'required',
                'sensitivity' => 'required',
                'distance_from_ps' => 'required',
                'number_of_male_booth' => 'required',
                'number_of_female_booth' => 'required',
                'male_voters' => 'required',
                'female_voters' => 'required',

            ]);

            if ($requestValidator->fails()) {
                return response()->json(['error' => true, 'message' => implode(' ', $requestValidator->errors()->all())],500);

            }//..... end if() .....//
            $data = request()->except(["id"]);
            $data['district_id'] = $this->getPoliceStationDistrict(request()->police_station_id);
            $res = PollingStation::create($data);

            return response()->json(['error' => false, 'message' => "Polling Station Created successfully","data"=>PollingStation::whereId($res->id)->first()],200);
        }catch (RequestException $e) {

            $arr["error"] = true;
            $arr["message"] = 'Server Error.';
            $arr["error"] = $e->getMessage();
            return response()->json($arr,500);
        }

    }

    public function updatePollingStation()
    {

        try{
            $user = auth()->user();

            $requestValidator = Validator::make(request()->all(), [
                'id' => 'required',
/*                'sensitivity' => 'required',
                'distance_from_ps' => 'required',
                'number_of_male_booth' => 'required',
                'number_of_female_booth' => 'required',
                'male_voters' => 'required',
                'female_voters' => 'required',*/

            ]);

            if ($requestValidator->fails()) {
                return response()->json(['error' => true, 'message' => implode(' ', $requestValidator->errors()->all())],500);

            }//..... end if() .....//
            $data = request()->except(["id"]);
            PollingStation::updateOrCreate([
                'id'=>request()->id,
            ],$data);
            return response()->json(['error' => false, 'message' => "Polling Station updated successfully","data"=>PollingStation::find(request()->id)],200);
        }catch (RequestException $e) {

            $arr["error"] = true;
            $arr["message"] = 'Server Error.';
            $arr["error"] = $e->getMessage();
            return response()->json($arr,500);
        }
    }

    public function getPollingStation($id=NULL)
    {
        $district_id = $_GET['district_id'] ?? "";
        $police_station_id = $_GET['police_station_id'] ?? "";
        if($id){

            $data = PollingStation::when($district_id, function ($q) use ($district_id) {
                return $q->where(["district_id"=>$district_id]);
            })->whereId($id)->first();
            $ps = PoliceStation::select(["id","title","district_id"])->whereId($data->police_station_id)->first();
            $district = Districts::select(["id","title"])->whereId($ps->district_id)->first();

            return response()->json(['error' => false, 'message' => "data found","data"=>$data,"district"=>$district,"police_station"=>$ps],200);
        }else{
            $data = PollingStation::when($district_id, function ($q) use ($district_id) {
                return $q->where(["district_id"=>$district_id]);
            })->when($police_station_id, function ($q) use ($police_station_id) {
                return $q->where(["police_station_id"=>$police_station_id]);
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
