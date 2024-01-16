<?php

namespace App\Http\Controllers;

use App\Models\Circle;
use Illuminate\Http\Request;

class CircleController extends Controller
{
    public function listcircles()
    {
        $data = [
            'title' => 'List Districts',
        ];

        $query = Circle::query();


        $isSuperAdmin = auth()->user()->roles->pluck('name')[0] == "Super Admin";


        if (!$isSuperAdmin) {
            return [];
        }

        $data["data"] = $query->get();

        return view("circle.list", $data);
    }
}