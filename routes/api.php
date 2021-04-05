<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProfileController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::group(['middleware' => 'auth:api'], function () {
    //all other api routes goes here
    //Get user list
    Route::get('users', [UserController::class, 'index']);
    //Update user
    Route::post('users/id', [UserController::class, 'update']);
    //Get one user
    Route::get('users/id', [UserController::class, 'show']);
});
// Save user
Route::post('users', [UserController::class, 'store']);
// Delete user
Route::post('users/delete/{id}', [UserController::class, 'destroy']);
//Login
Route::post('auth/login', [AuthController::class, 'login']);
//Upload image
Route::post('users/uploadImg', [ProfileController::class, 'upload_image']);
//Get image
Route::get('users/getImg', [ProfileController::class, 'get_image']);
