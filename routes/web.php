<?php

use App\Http\Controllers\Email\NotifyEmailController;
use App\Http\Controllers\Email\VerifikasiEmailController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect()->route('login');
});

Route::get('email', [NotifyEmailController::class, 'index']);
Route::post('verifikasi-email', [VerifikasiEmailController::class, 'index'])->name('verifikasi-email');

require __DIR__ . '/auth.php';
require __DIR__ . '/admin.php';
require __DIR__ . '/crud.php';
require __DIR__ . '/ketua.php';
require __DIR__ . '/penyewa.php';
