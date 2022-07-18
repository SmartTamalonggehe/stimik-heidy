<?php

use Illuminate\Support\Facades\Route;

Route::prefix('ketua')->middleware('auth', 'role:KETUA')->group(function () {
    Route::get('/', function () {
        return redirect()->route('ketua.dashboard');
    });

    Route::get('dahsboard', function () {
        return view('ketua.dashboard.index');
    })->name('ketua.dashboard');
});
