<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Model\User;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::post('/login','Api\LoginController@login');
Route::group(['middleware' => 'auth:api'],function(){

    Route::get('/user', function (Request $request) {
        //return User::all();
        return User::all();
    });
    Route::post('/user','Api\UserController@search');
    Route::put('/user/edit/{id}','Api\UserController@edit');

    //Route::get('/admin/user/search/', 'Admin\UserController@search');
});
