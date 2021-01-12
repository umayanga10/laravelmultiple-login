<?php

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

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::group(['middleware' => ['auth','admin']], function (){

    Route::get('/dashboard', function () {
        return view('admin.dashboard');
    });

    Route::get('/register','Admin\DashboardController@display');

    Route::get('/editregister/{id}','Admin\DashboardController@edit');

    Route::put('/update-register/{id}','Admin\DashboardController@update');

    Route::get('/delete-register/{id}','Admin\DashboardController@delete');

});

Route::group(['middleware' => ['auth','seller']], function (){

    Route::get('/seller', function () {
        return view('seller');
    });


});

Route::group(['middleware' => ['auth','customer']], function (){

    Route::get('/customer', function () {
        return view('admin.customer');
    });

});

