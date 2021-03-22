<?php

use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
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
Route::get('users',[UserController::class,'index']);
// Get one user
Route::get('users/{id}',[UserController::class,'show']);
// Save user
Route::post('users',[UserController::class,'store']);
// Update user
//Route::put(&#39;users/{id}&#39;, &#39;\App\Http\Controllers\UserController@update&#39;);
Route::post('users/{id}',[UserController::class,'update']);
// Delete user
Route::delete('users/{id}',[UserController::class,'destroy']);
