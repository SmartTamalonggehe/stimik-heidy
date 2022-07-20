<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Facility;
use Illuminate\Http\Request;

class FacilityAPI extends Controller
{
    public function index()
    {
        $data = Facility::orderBy('name')->get();
        return response()->json($data);
    }
}
