<?php

use Illuminate\Support\Facades\Route;

Route::prefix('admin')->group(function () {
    Route::get('dashboard', function () {
        return view('admin.dashboard.index');
    })->name('admin.dashboard');
    // route fasilitas
    Route::get('fasilitas', function () {
        return view('admin.fasilitas.index');
    })->name('admin.fasilitas');
    // district
    Route::get('district', function () {
        return view('admin.district.index');
    })->name('admin.district');
    // sub-district
    Route::get('sub-district', function () {
        return view('admin.sub-district.index');
    })->name('admin.sub-district');
});
