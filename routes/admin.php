<?php

use Illuminate\Support\Facades\Route;

Route::prefix('admin')->middleware('auth', 'role:ADMIN')->group(function () {
    Route::get('/', function () {
        return redirect()->route('admin.dashboard');
    });
    Route::get('dashboard', function () {
        return view('admin.dashboard.index');
    })->name('admin.dashboard');
    // district
    Route::get('district', function () {
        return view('admin.district.index');
    })->name('admin.district');
    // sub-district
    Route::get('sub-district', function () {
        return view('admin.sub-district.index');
    })->name('admin.sub-district');
    // gallery
    Route::get('gallery', function () {
        return view('admin.gallery.index');
    })->name('admin.gallery');
    // facility
    Route::get('facility', function () {
        return view('admin.facility.index');
    })->name('admin.facility');
    // tenant
    Route::get('tenant', function () {
        return view('admin.tenant.index');
    })->name('admin.tenant');
    // schedule
    Route::get('schedule', function () {
        return view('admin.schedule.index');
    })->name('admin.schedule');
    // congregation
    Route::get('congregation', function () {
        return view('admin.congregation.index');
    })->name('admin.congregation');
});
