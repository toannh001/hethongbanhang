<?php

use Illuminate\Support\Facades\Route;
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
/*
Route::get('login',function () {
    return view('login');
})->name('login');
*/
Route::get('login','LoginController@viewLogin')->name('login');
Route::post('login','LoginController@login');
Route::get('logout','LoginController@logout');
//Admin

    Route::group(['prefix'=>'admin','middleware' => 'checkAdmin'],function(){

        Route::get('/', function () {
            return view('admin/index');
        });
        Route::get('user','Admin\UserController@getList');
        Route::get('user/add', function () {
            return view('admin/user/add');
        });
        Route::post('user/add', 'Admin\UserController@add');
        Route::get('user/delete/{id}', 'Admin\UserController@delete');
        Route::get('user/edit/{id}', 'Admin\UserController@edit');
        Route::post('user/edit/{id}', 'Admin\UserController@update');
        Route::post('user/view', 'Admin\UserController@viewDetail');
        //Route::get('/admin/user/search/', 'Admin\UserController@search');
    });
