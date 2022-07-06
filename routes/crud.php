<?php

use App\Http\Controllers\ADMIN\DistrictController;
use Illuminate\Support\Facades\Route;

Route::prefix('crud')->group(function () {
    Route::resources([
        'district' => DistrictController::class,
    ]);
});
