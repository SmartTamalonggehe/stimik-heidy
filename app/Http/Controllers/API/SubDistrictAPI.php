<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\SubDistrict;
use Illuminate\Http\Request;

class SubDistrictAPI extends Controller
{
    public function index()
    {
        $data = SubDistrict::orderBy('name', 'asc')->get();
        return response()->json($data);
    }
}
