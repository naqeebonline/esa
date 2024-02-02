<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Hospital;
use App\Models\PoliceStation;
use App\Models\PollingStation;
use App\Models\Sensitivity;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class HospitalApiController extends Controller
{
    public function addHospital()
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
            $hospital = Hospital::create(request()->except(["id"]));
            return response()->json(['error' => false, 'message' => "Hospital Created successfully","data"=>Hospital::find($hospital->id)],200);
        }catch (RequestException $e) {

            $arr["error"] = true;
            $arr["message"] = 'Server Error.';
            $arr["error"] = $e->getMessage();
            return response()->json($arr,500);
        }

    }

    public function updateHospital()
    {
        try{
            $user = auth()->user();

            $requestValidator = Validator::make(request()->all(), [
                'id' => 'required',

            ]);

            if ($requestValidator->fails()) {
                return response()->json(['error' => true, 'message' => implode(' ', $requestValidator->errors()->all())],500);

            }//..... end if() .....//
            //$data = request()->except(["id"]);
            $data = request()->only(["lat","lng"]);
            Hospital::updateOrCreate([
                'id'=>request()->id,
            ],$data);
            return response()->json(['error' => false, 'message' => "Hospital updated successfully","data"=>Hospital::find(request()->id)],200);
        }catch (RequestException $e) {

            $arr["error"] = true;
            $arr["message"] = 'Server Error.';
            $arr["error"] = $e->getMessage();
            return response()->json($arr,500);
        }
    }

    public function getHospital($id=NULL)
    {
        $district_id = $_GET['district_id'] ?? "";
        $police_station_id = $_GET['police_station_id'] ?? "";
        if($id){
            $hospital = Hospital::when($district_id, function ($q) use ($district_id) {
                return $q->where(["district_id"=>$district_id]);
            })->whereId($id)->first();
            return response()->json(['error' => false, 'message' => "data found","data"=>$hospital],200);
        }else{
            $hospital = Hospital::when($district_id, function ($q) use ($district_id) {
                return $q->where(["district_id"=>$district_id]);
            })->when($police_station_id, function ($q) use ($police_station_id) {
                return $q->where(["police_station_id"=>$police_station_id]);
            })->get();
            return response()->json(['error' => false, 'message' => "data found","data"=>$hospital],200);
        }

    }

    function dbToJson($models)
    {
        $jsonObjects = [];
        if (count($models) > 0) {
            foreach ($models as $model) {


                $geometry = ['type' => 'Point', 'coordinates' => [$model->lat, $model->lng]];
                array_push($jsonObjects, ['type' => 'Feature', 'properties' => $model, 'geometry' => $geometry]);
            }
        } else {
            $geometry = ['type' => 'Point', 'coordinates' => [$models->lat, $models->lng]];
            array_push($jsonObjects, ['type' => 'Feature', 'properties' => $models, 'geometry' => $geometry]);
        }

        $geoJson =   array(
            'type' => 'FeatureCollection',
            'crs' =>
                array(
                    'type' => 'name',
                    'properties' =>
                        array(
                            'name' => 'urn:ogc:def:crs:OGC:1.3:CRS84',
                        ),
                ),
            'features' => $jsonObjects,
        );
        return $geoJson;
    }

    function dbToJson2($models)
    {
        $jsonObjects = [];
        if (count($models) > 0) {
            foreach ($models as $model) {


                $geometry = ['type' => 'Point', 'coordinates' => [$model->latitude, $model->longitude]];
                array_push($jsonObjects, ['type' => 'Feature', 'properties' => $model, 'geometry' => $geometry]);
            }
        } else {
            $geometry = ['type' => 'Point', 'coordinates' => [$models->latitude, $models->longitude]];
            array_push($jsonObjects, ['type' => 'Feature', 'properties' => $models, 'geometry' => $geometry]);
        }

        $geoJson =   array(
            'type' => 'FeatureCollection',
            'crs' =>
                array(
                    'type' => 'name',
                    'properties' =>
                        array(
                            'name' => 'urn:ogc:def:crs:OGC:1.3:CRS84',
                        ),
                ),
            'features' => $jsonObjects,
        );
        return $geoJson;
    }

    public function getAllHospitals()
    {
        $district_ids = "";
        $police_station_id = "";
        if($_GET["district_id"] && $_GET["district_id"] !="null"){
            $district_ids = explode(",",$_GET['district_id']);

        }
        if($_GET["police_station_id"] && $_GET["police_station_id"] != "null"){
            $police_station_id = explode(",",$_GET['police_station_id']);

        }

        $hospital = Hospital::whereNotNull("lat")->whereNotNull("lng")
            ->when($district_ids, function ($q) use ($district_ids) {
                return $q->whereIn("district_id",$district_ids);
            })
            ->when($police_station_id, function ($q) use ($police_station_id) {
                return $q->whereIn("police_station_id",$police_station_id);
            })
            ->get();
        if(count($hospital) > 0){
            $hospital = $this->dbToJson($hospital);
        }

        return ($hospital);

    }

    public function getAllPollingStations()
    {
        $district_ids = "";
        $police_station_id = "";
        $sensitivity_type = "";
        $polling_station_id = "";
        $ps_sensitivity = "";

        if($_GET["district_id"] && $_GET["district_id"] !="null"){
            $district_ids = explode(",",$_GET['district_id']);

        }
        if($_GET["police_station_id"] && $_GET["police_station_id"] != "null"){
            $police_station_id = explode(",",$_GET['police_station_id']);

        }
        if($_GET["sensitivity_type"] && $_GET["sensitivity_type"] != "null"){

            $sensitivity_type = explode(",",$_GET['sensitivity_type']);

        }
        if($_GET["polling_station_id"] && $_GET["polling_station_id"] != "null"){

            $polling_station_id = explode(",",$_GET['polling_station_id']);

        }

        if($_GET["ps_sensitivity"] && $_GET["ps_sensitivity"] != "null"){

            $ps_sensitivity = explode(",",$_GET['ps_sensitivity']);

        }

        $hospital = PollingStation::whereNotNull("lat")->whereNotNull("lng")
            ->when($district_ids, function ($q) use ($district_ids) {
                return $q->whereIn("district_id",$district_ids);
            })
            ->when($police_station_id, function ($q) use ($police_station_id) {

                return $q->whereIn("police_station_id",$police_station_id);
            })
            ->when($sensitivity_type, function ($q) use ($sensitivity_type) {

                return $q->whereIn("sensitivity",$sensitivity_type);
            })
            ->when($polling_station_id, function ($q) use ($polling_station_id) {

                return $q->whereIn("id",$polling_station_id);
            })
            ->when($ps_sensitivity, function ($q) use ($ps_sensitivity) {

                return $q->whereIn("sensitivity",$ps_sensitivity);
            })
            ->whereNotNull("lat")
            ->whereNotNull("lng")
           ->get();
           if(count($hospital) > 0){
               $hospital = $this->dbToJson($hospital);
           }
        return ($hospital);

    }

    public function getAllPoliceStation()
    {
        $district_ids = "";
        $police_station_id = "";
        if($_GET["district_id"] && $_GET["district_id"] !="null"){
            $district_ids = explode(",",$_GET['district_id']);

        }
        if($_GET["police_station_id"] && $_GET["police_station_id"] != "null"){
            $police_station_id = explode(",",$_GET['police_station_id']);

        }
        $hospital = PoliceStation::whereNotNull("latitude")
            ->when($district_ids, function ($q) use ($district_ids) {
                return $q->whereIn("district_id",$district_ids);
            })
            ->when($police_station_id, function ($q) use ($police_station_id) {
                return $q->whereIn("id",$police_station_id);
            })
            ->whereNotNull("longitude")
            ->get();
        $hospitals = $this->dbToJson2($hospital);

        return ($hospitals);

    }

    public function getAllPoliceStations()
    {

        $hospital = PoliceStation::get();
        $hospital = $this->dbToJson($hospital);

        return ($hospital);

    }


}
