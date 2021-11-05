<?php

use App\Http\Controllers\Admin\MainController;
use App\Http\Controllers\Admin\MenuController;
use App\Http\Controllers\Admin\OrderController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\SliderController;
use App\Http\Controllers\Admin\Users\LoginController;
use App\Http\Controllers\Client\Category\CategoryController;
use Illuminate\Support\Facades\Route;
use \App\Http\Controllers\Admin\UserController;
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

Route::get('admin/users/login', [LoginController::class, 'index'])->name('login');
Route::get('admin/users/logout', [LoginController::class, 'logout']);
Route::post('admin/users/login/store', [LoginController::class, 'store']);

Route::middleware(['auth'])->group(function () {

    Route::prefix('admin')->group(function () {

        Route::get('/', [MainController::class, 'index'])->name('admin');
        Route::get('main', [MainController::class, 'index']);

        #Menu
        Route::prefix('menus')->group(function () {
            Route::get('add', [MenuController::class, 'create']);
            Route::post('add', [MenuController::class, 'store']);
            Route::get('list', [MenuController::class, 'index']);
            Route::get('edit/{menu}', [MenuController::class, 'show']);
            Route::post('edit/{menu}', [MenuController::class, 'update']);
            Route::DELETE('destroy', [MenuController::class, 'destroy']);
            Route::get('search', [MenuController::class, 'search']);
        });

        #product
        Route::prefix('products')->group(function () {
            Route::get('add', [ProductController::class, 'create']);
            Route::post('add', [ProductController::class, 'store']);
            Route::get('list', [ProductController::class, 'index']);
            Route::get('edit/{product}', [ProductController::class, 'show']);
            Route::post('edit/{product}', [ProductController::class, 'update']);
            Route::DELETE('destroy', [ProductController::class, 'destroy']);
            Route::get('search', [ProductController::class, 'search']);
        });

        #slider
        Route::prefix('sliders')->group(function () {
            Route::get('add', [SliderController::class, 'create']);
            Route::post('add', [SliderController::class, 'store']);
            Route::get('list', [SliderController::class, 'index']);
            Route::get('edit/{slider}', [SliderController::class, 'show']);
            Route::post('edit/{slider}', [SliderController::class, 'update']);
            Route::DELETE('destroy', [SliderController::class, 'destroy']);
            Route::get('search', [SliderController::class, 'search']);
        });

        #order
        Route::prefix('order')->group(function () {
            Route::get('/', [OrderController::class, 'show']);
            Route::DELETE('destroy', [OrderController::class, 'destroy']);
            Route::get('view/{id}', [OrderController::class, 'show_detail']);
            Route::get('search', [OrderController::class, 'search']);
        });

        #contact
        Route::prefix('contact')->group(function () {
            Route::get('/', [\App\Http\Controllers\Admin\ContactController::class, 'index']);
            Route::get('edit/{contact}', [\App\Http\Controllers\Admin\ContactController::class, 'show']);
            Route::post('edit/{contact}', [\App\Http\Controllers\Admin\ContactController::class, 'update']);
        });

        #about
        Route::prefix('abouts')->group(function () {
            Route::get('add', [\App\Http\Controllers\Admin\AboutController::class, 'create']);
            Route::post('add', [\App\Http\Controllers\Admin\AboutController::class, 'store']);
            Route::get('list', [\App\Http\Controllers\Admin\AboutController::class, 'index']);
            Route::get('edit/{about}', [\App\Http\Controllers\Admin\AboutController::class, 'show']);
            Route::post('edit/{about}', [\App\Http\Controllers\Admin\AboutController::class, 'update']);
            Route::DELETE('destroy', [\App\Http\Controllers\Admin\AboutController::class, 'destroy']);
        });

        #slider
        Route::prefix('users')->group(function () {
            Route::get('add', [UserController::class, 'create']);
            Route::post('add', [UserController::class, 'store']);
            Route::get('list', [UserController::class, 'index']);
            Route::get('edit/{user}', [UserController::class, 'show']);
            Route::post('edit/{user}', [UserController::class, 'update']);
            Route::DELETE('destroy', [UserController::class, 'destroy']);
            Route::get('search', [UserController::class, 'search']);
        });

        #upload
        Route::post('/upload/services',[\App\Http\Controllers\Admin\UploadController::class,'store']);
    });
});
// FRONT-END
Route::get('/',[\App\Http\Controllers\Client\MainController::class,'index'])->name('home');
Route::post('/services/load-product', [\App\Http\Controllers\Client\MainController::class, 'loadProduct']);
Route::get('/contact.html', [\App\Http\Controllers\Client\MainController::class, 'contact']);
Route::get('/about.html', [\App\Http\Controllers\Client\MainController::class, 'about']);

Route::get('/search', [\App\Http\Controllers\Client\MainController::class, 'search']);

Route::get('/danh-muc/{id}-{slug}.html',[CategoryController::class,'index']);
Route::get('/danh-muc/{id}-{slug}.html/search',[CategoryController::class,'search']);
Route::get('/san-pham/{id}-{slug}.html',[\App\Http\Controllers\Client\ProductController::class,'index']);
    # Cart

Route::post('/addCart', [\App\Http\Controllers\Client\CartController::class, 'store']);
Route::get('/carts' , [\App\Http\Controllers\Client\CartController::class,'show']);
Route::post('/update-cart' , [\App\Http\Controllers\Client\CartController::class,'update']);
Route::get('/carts/delete/{id}' , [\App\Http\Controllers\Client\CartController::class,'destroy']);
Route::post('/non-login' , [\App\Http\Controllers\Client\CartController::class,'login']);
Route::post('/logged' , [\App\Http\Controllers\Client\CartController::class,'addCart']);

    # CUSTOMER
Route::get('/login',[\App\Http\Controllers\Client\CustomerController::class,'index']);
Route::post('/login/store',[\App\Http\Controllers\Client\CustomerController::class,'login']);
Route::get('/logout',[\App\Http\Controllers\Client\CustomerController::class,'logout']);
Route::get('/register',[\App\Http\Controllers\Client\CustomerController::class,'register']);
Route::post('/register/store',[\App\Http\Controllers\Client\CustomerController::class,'store']);
Route::get('/my-account',[\App\Http\Controllers\Client\CustomerController::class,'show_acc']);
Route::post('/my-account',[\App\Http\Controllers\Client\CustomerController::class,'update_acc']);
Route::get('/change-password/{member}',[\App\Http\Controllers\Client\CustomerController::class,'change_password']);
Route::post('/change-password/{member}',[\App\Http\Controllers\Client\CustomerController::class,'update_change']);



