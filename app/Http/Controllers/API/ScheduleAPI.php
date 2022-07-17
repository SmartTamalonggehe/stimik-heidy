<?php

namespace App\Http\Controllers\API;

use App\Models\Schedule;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ScheduleAPI extends Controller
{
    public function index()
    {
        $data = Schedule::orderBy('date_end', 'DESC')->where('status', 'active')->latest()
            ->with('tenant', 'proof')->get();
        return response()->json($data);
    }

    public function history($id)
    {
        $data = Schedule::orderBy('date_end', 'DESC')->where('tenant_id', $id)->latest()
            ->with('tenant', 'proof')
            ->get();
        return response()->json($data);
    }
}
