<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ADMIN\WijkController;
use App\Http\Controllers\ADMIN\ProofController;
use App\Http\Controllers\ADMIN\TenantController;
use App\Http\Controllers\ADMIN\GalleryController;
use App\Http\Controllers\ADMIN\DistrictController;
use App\Http\Controllers\ADMIN\FacilityController;
use App\Http\Controllers\ADMIN\ScheduleController;
use App\Http\Controllers\ADMIN\SubDistrictController;
use App\Http\Controllers\ADMIN\CongregationController;

Route::prefix('crud')->middleware('auth')->group(function () {
    Route::resources([
        'district' => DistrictController::class,
        'sub-district' => SubDistrictController::class,
        'gallery' => GalleryController::class,
        'facility' => FacilityController::class,
        'schedule' => ScheduleController::class,
        'tenant' => TenantController::class,
        'proof' => ProofController::class,
        'congregation' => CongregationController::class,
        'wijk' => WijkController::class,
    ]);
});
