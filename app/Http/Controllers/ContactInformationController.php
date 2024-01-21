<?php

namespace App\Http\Controllers;

use App\Models\ContactInformation;
use Illuminate\Http\Request;

class ContactInformationController extends Controller
{
    //

    public function contactInfo()
    {
        $data = ContactInformation::get();
        return response()->json(['error' => false, 'message' => "data found","data"=>$data],200);
    }
}
