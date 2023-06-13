<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SexController;
use App\Http\Controllers\QuranEpisadesController;
use App\Http\Controllers\TeacherController;
use App\Http\Controllers\ParentsController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\UserController;
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
    return view('welcome');
});

Route::get('/', function () {
    return view('welcome');
});

Route::controller(TeacherController::class)->group( function ($id) {
Route::get('teacher/insert',  'create')->name(name: 'teacher.insert');
Route::post('teacher/store', 'store')->name(name: 'teacher.store');
Route::get('teacher/index',  'index')->name(name: 'teacher.index');
// Route::get('teacher/edit/{id}',  'edit')->name(name: 'teacher.edit');
// Route::post('teacher/update/{id}',  'update')->name(name: 'teacher.update');
Route::get('teacher/destroy/{id}','destroy')->name(name: 'teacher.destroy');
Route::get('teacher/delete/all/Truncate','deleteTruncate')->name(name: 'teacher.delete.all.Truncate');

});
