<?php
use App\Http\Controllers\userscontroller;
use Illuminate\Support\Facades\Route;



Route::get('/', function () {
    return view('welcome');
});
// Route::get('/add_cat',[UserController::class,'']);
// Route::resource('sex/create',[ UserController::class,'create']);
Route::resource('sexes', UserController::class);
