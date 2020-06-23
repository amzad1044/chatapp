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

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/users', 'MessageController@Users')->name('allusers');
Route::get('/getmessage/{id}', 'MessageController@User_message')->name('message');
Route::post('/sendSms', 'MessageController@SendMessage')->name('send');
Route::get('/deleteSinglesms/{id}', 'MessageController@DeleteMessage')->name('Delete');
Route::get('/allDelete/{id}', 'MessageController@DeleteAllMessage')->name('DeleteAll');
