<?php

use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use Barryvdh\Debugbar\Twig\Extension\Debug;
use DebugBar\DebugBar;

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
//TEST
Route::get('/',function(){
    $pag=null;
    return view('welcome',['pag'=>$pag]);
})->name('welcome');
//

