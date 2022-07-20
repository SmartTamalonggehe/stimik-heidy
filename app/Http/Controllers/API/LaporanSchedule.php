<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Schedule;
use Illuminate\Http\Request;

class LaporanSchedule extends Controller
{
    public function show($id)
    {
        // where year(tanggal) $id
        $schedule = Schedule::whereYear('date_start', 'like', "%$id%")->orderBy('date_start')
            ->with('tenant', 'proof')->get();
        return response()->json($schedule);
    }
}
