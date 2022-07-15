<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;


Route::prefix('penyewa')->middleware('auth', 'role:PENYEWA', 'verified')->group(function () {
    Route::get('/', function () {
        return redirect()->route('penyewa.dashboard');
    });
    Route::get('dashboard', function () {
        return view('penyewa.dashboard.index');
    })->name('penyewa.dashboard');
    // tenant
    Route::get('tenant', function () {
        return view('penyewa.tenant.index');
    })->name('penyewa.tenant');
    // schedule
    Route::get('schedule', function () {
        if (auth()->user()->tenant) {
            if (auth()->user()->tenant->status == 'inactive') {
                return redirect()->route('penyewa.tenant')->with('alert', 'Data belum disetujui oleh admin.');
            }
            return view('penyewa.schedule.index');
        }
        return redirect()->route('penyewa.tenant')->with('alert', 'Data belum ada');
    })->name('penyewa.schedule');
});
