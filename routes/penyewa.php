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
});
