<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\FacilityAPI;
use App\Http\Controllers\API\ScheduleAPI;
use App\Http\Controllers\API\SubDistrictAPI;
use App\Http\Controllers\API\LaporanSchedule;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/', function () {
    return view('api');
});

Route::get('schedule', [ScheduleAPI::class, 'index'])->name('api.schedule.index');
Route::get('schedule/history/{id}', [ScheduleAPI::class, 'history'])->name('api.schedule.history');

// sub district
Route::get('sub-district', [SubDistrictAPI::class, 'index'])->name('api.sub-district.index');

// laporan
Route::get('laporan/schedule/{id}', [LaporanSchedule::class, 'show'])->name('api.laporan.schedule');

// facility api
Route::get('facility', [FacilityAPI::class, 'index'])->name('api.facility.index');
