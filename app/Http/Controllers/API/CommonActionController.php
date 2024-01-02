<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Traits\CommonMethods;
use Illuminate\Http\Request;
use Modules\EIdentity\Entities\Designations;

/**
 *
 *This controller will be using for common APIs which can be use
 * within or outside system, all things will be kept here
 *
 */
class CommonActionController extends Controller
{
    use CommonMethods;
    public function getDesignationsList(Request $request){

        $designations = Designations::pluck('title','id');

        return $this->apiJsonResponse(1,'Egov Designations list',$designations);

    }
}
