<?php

use App\Http\Controllers\PagesController;
use App\Http\Controllers\TatryController;
use App\Http\Controllers\TuryController;
use App\Http\Controllers\VysokeTatryController;
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

Route::get('/', [PagesController::class, 'index']); // [class, metoda]


Route::resource('/vysokeTatry', TatryController::class);
Route::resource('/nizkeTatry', TatryController::class);
Route::resource('/zapadneTatry', TatryController::class);

// Route::get('/nizkeTatry', [TatryController::class, 'nizkeTatry']);
// Route::get('/zapadneTatry', [TatryController::class, 'zapadneTatry']);

Route::controller(TatryController::class)->group(function () {
    Route::get('/nizkeTatry', 'nizkeTatry');
    Route::get('/zapadneTatry', 'zapadneTatry');
    Route::get('/vysokeTatry', 'vysokeTatry');
});

// Route::get('/vysokeTatry', [TatryController::class, 'vysokeTatry']);

Auth::routes();

//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
