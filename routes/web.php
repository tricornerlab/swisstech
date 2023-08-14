<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PagesController;
use App\Http\Controllers\BlogsController;

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

Route::get('/', 'PagesController@index');
Route::resource('blogs', 'BlogsController'::class);
Route::resource('pages', 'PagesController'::class);
Route::resource('widgets', 'WidgetsController'::class);
Route::resource('events', 'EventsController'::class);
Route::resource('images', 'ImagesController'::class);
Route::resource('products', 'ProductsController'::class);

Route::get('ml', 'PagesController@ml');
Route::get('hwr', 'PagesController@hwr');
Route::get('contact', 'PagesController@contact');
Route::get('types', 'PagesController@types');
Route::post('contactus', 'PagesController@contactus');

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';
