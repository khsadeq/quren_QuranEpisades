<?php

use App\Http\Controllers\Api\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });
Route::get('/users',[UserController::class,'index']);

// Route::controller(UserController::class)->group( function ($id) {
    // Route::get('user/insert',  'create')->name(name: 'user.insert');

    // Route::post('user/store', 'store')->name(name: 'user.store');
    // Route::get('user/index',  'index')->name(name: 'user.index');
    // Route::get('user/edit/{id}',  'edit')->name(name: 'user.edit');
    // Route::post('user/update/{id}',  'update')->name(name: 'user.update');
    // Route::get('user/destroy/{id}','destroy')->name(name: 'user.destroy');
    // Route::get('user/delete/all/Truncate','deleteTruncate')->name(name: 'user.delete.all.Truncate');
    // // Route::get('user/restore/{id}','show')->name(name: 'user.restore');
    // Route::get('user/softDelete','show1')->name(name: 'user.softDelete');
    // });
