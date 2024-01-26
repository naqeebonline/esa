<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\PoliceMobile;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class PoliceMobileHistory extends Controller
{
    //

    public function saveLocation()
    {
        $user = Auth::user();
        $requestValidator = Validator::make(request()->all(), [
            'lat' => 'required',
            'lng' => 'required',
        ]);

        if ($requestValidator->fails()) {
            return response()->json(['error' => true, 'message' => implode(' ', $requestValidator->errors()->all())],500);

        }//..... end if() .....//

        $data = [
            "police_mobile_id"  => $user->police_mobile_id,
            "lat"               => request()->lat,
            "lng"               => request()->lng
        ];
        \App\Models\PoliceMobileHistory::create($data);
        PoliceMobile::whereId($user->police_mobile_id)->update([
            "lat"               => request()->lat,
            "lng"               => request()->lng
        ]);
        return response()->json(['error' => false, 'message' => "Location Updated Successfully"],200);

    }
}
