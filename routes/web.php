<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HawkController;
use App\Http\Controllers\ProfileController;
use Illuminate\Http\Request;
// fortify Routes
@include('fortify.php');
// fortify Routes end

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::get('/', function () {
    return redirect()->route('login');
});

Route::post('/test_post', function (Request $request) {
    return json_encode($request->all());
})->name('test_post');

Route::middleware(['auth', 'verified'])->prefix('hawk')->group(function () {
    Route::get('home', [HawkController::class, 'index'])->name('hawk.home');
    Route::get('test', function(Request $request){
        return config('variables.templateName');
    })->middleware('role:admin');
});

Route::middleware(['auth', 'verified'])->prefix('pumpkin')->group(function () {
    Route::get('/', [ProfileController::class, 'index'])->name('pumpkin.profile');
    Route::get('{username}', [ProfileController::class, 'visitor'])->name('pumpkin.visitor');
    
});

// Language Handler
@include('lang.php');
// Language Handler End
