<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

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
Route::get('users', [UserController::class, 'index']);
// Get one user
Route::get('users/{id}', [UserController::class, 'show']);
// Save user
Route::post('users', [UserController::class, 'store']);
// Update user
Route::post('users/{id}', [UserController::class, 'update']);
// Delete user
Route::post('users/delete/{id}', [UserController::class, 'destroy']);
//Login
Route::post('auth/login', [AuthController::class, 'login']);

