<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ADMIN\GalleryController;
use App\Http\Controllers\ADMIN\DistrictController;
use App\Http\Controllers\ADMIN\FacilityController;
use App\Http\Controllers\ADMIN\SubDistrictController;

Route::prefix('crud')->group(function () {
    Route::resources([
        'district' => DistrictController::class,
        'sub-district' => SubDistrictController::class,
        'gallery' => GalleryController::class,
        'facility' => FacilityController::class,
    ]);
});
