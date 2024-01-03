<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Districts;

class DistrictController extends Controller
{
    public function listdistricts()
    {
        $data = [
            'title' => 'List Districts',
        ];

        $query = Districts::query();


        $isSuperAdmin = auth()->user()->roles->pluck('name')[0] == "Super Admin";


        if (!$isSuperAdmin) {
            return [];
        }

        $data["data"] = $query->get();

        return view("district.list", $data);
    }
}