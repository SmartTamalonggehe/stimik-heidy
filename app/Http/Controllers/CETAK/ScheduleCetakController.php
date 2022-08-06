<?php

namespace App\Http\Controllers\CETAK;

use App\Models\Schedule;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Barryvdh\DomPDF\Facade\Pdf;

class ScheduleCetakController extends Controller
{
    public function pdf($id)
    {
        // where year(tanggal) $id
        $schedule = Schedule::whereYear('date_start', 'like', "%$id%")->orderBy('date_start')
            ->with('tenant', 'proof')->get();

        // return view('ketua.laporan.cetak-pdf', compact('schedule'));

        $pdf = Pdf::loadView('ketua.laporan.cetak-pdf', [
            'schedule' => $schedule,
        ]);
        return $pdf->stream('laporan sewa GSG.pdf');
    }
}
