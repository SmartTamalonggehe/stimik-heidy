<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\ScheduleAPI;
use App\Http\Controllers\API\SubDistrictAPI;

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

Route::get('schedule', [ScheduleAPI::class, 'index'])->name('schedule.index');
// sub district
Route::get('sub-district', [SubDistrictAPI::class, 'index'])->name('sub-district.index');
