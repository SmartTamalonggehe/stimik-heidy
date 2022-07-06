<?php

use App\Http\Controllers\ADMIN\DistrictController;
use App\Http\Controllers\ADMIN\SubDistrictController;
use Illuminate\Support\Facades\Route;

Route::prefix('crud')->group(function () {
    Route::resources([
        'district' => DistrictController::class,
        'sub-district' => SubDistrictController::class
    ]);
});
