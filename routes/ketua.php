<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CETAK\ScheduleCetakController;

Route::prefix('ketua')->middleware('auth', 'role:KETUA')->group(function () {
    Route::get('/', function () {
        return redirect()->route('ketua.dashboard');
    });

    Route::get('dahsboard', function () {
        return view('ketua.dashboard.index');
    })->name('ketua.dashboard');

    Route::get('laporan', function () {
        return view('ketua.laporan.index');
    })->name('ketua.laporan');

    Route::get('cetak/pdf/{id}', [ScheduleCetakController::class, 'pdf'])->name('ketua.cetak.pdf');
});
