<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Controller\Admin;

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
    return view('welcome');
});

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');

Route::group(['middleware' => 'auth'], function() {
    Route::group(['middleware' => 'role:student', 'prefix' => 'student', 'as' => 'student.'], function() {
        Route::resource('lessons', \App\Http\Controllers\Students\LessonController::class);
    });
   Route::group(['middleware' => 'role:teacher', 'prefix' => 'teacher', 'as' => 'teacher.'], function() {
       Route::resource('courses', \App\Http\Controllers\Teachers\CourseController::class);
   });
    Route::group(['middleware' => 'role:admin', 'prefix' => 'admin', 'as' => 'admin.'], function() {
        Route::resource('users', \App\Http\Controllers\Admin\UserController::class);
    });
    Route::group(['middleware' => 'role:admin', 'prefix' => 'admin', 'as' => 'admin.'], function() {
        Route::resource('student', \App\Http\Controllers\Admin\StudentController::class);
    });
    Route::group(['middleware' => 'role:admin', 'prefix' => 'admin', 'as' => 'admin.'], function() {
        Route::resource('teacher', \App\Http\Controllers\Admin\TeacherController::class);
    });
});

Route::middleware(['auth:sanctum','verified'])->get('/student/update/{id}',[ App\Http\Controllers\Admin\StudentController::class, 'update']);
Route::middleware(['auth:sanctum','verified'])->get('/student/delete/{id}',[ App\Http\Controllers\Admin\StudentController::class, 'delete']);
Route::middleware(['auth:sanctum', 'verified'])->get('/student/input_data',[ App\Http\Controllers\Admin\StudentController::class, 'input']);
Route::post('/student/update_data',[ App\Http\Controllers\Admin\StudentController::class, 'update_data']);
Route::post('/student/data_student',[ App\Http\Controllers\Admin\StudentController::class, 'data_student']);

//teacher

Route::middleware(['auth:sanctum','verified'])->get('/teacher/update/{id}',[ App\Http\Controllers\Admin\TeacherController::class, 'update']);
Route::middleware(['auth:sanctum','verified'])->get('/teacher/delete/{id}',[ App\Http\Controllers\Admin\TeacherController::class, 'delete']);
Route::middleware(['auth:sanctum', 'verified'])->get('/teacher/input_data',[ App\Http\Controllers\Admin\TeacherController::class, 'input']);
Route::post('/teacher/update_data',[ App\Http\Controllers\Admin\TeacherController::class, 'update_data']);
Route::post('/teacher/data_teacher',[ App\Http\Controllers\Admin\TeacherController::class, 'data_teacher']);
