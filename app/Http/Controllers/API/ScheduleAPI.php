<?php

namespace App\Http\Controllers\API;

use App\Models\Schedule;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ScheduleAPI extends Controller
{
    public function index()
    {
        $data = Schedule::where('status', 'active')->latest()->with('tenant')->get();
        return response()->json($data);
    }
}
