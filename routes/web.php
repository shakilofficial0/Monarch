<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HawkController;
use App\Http\Controllers\ProfileController;
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

Route::middleware(['auth', 'verified'])->prefix('hawk')->group(function () {
    Route::get('home', [HawkController::class, 'index'])->name('hawk.home');
    Route::get('profile', [ProfileController::class, 'index'])->name('hawk.profile');
    Route::get('test', function(Request $request){
        return Auth::user()->hasRole();
    })->middleware('role:admin');
});

// Language Handler
@include('lang.php');
// Language Handler End
