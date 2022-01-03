<?php

namespace App\Providers;


use App\Http\Controllers\Client\CartController;
use App\Http\View\Composers\CartComposer;
use App\Http\View\Composers\MenuComposer;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;


class ViewServiceProvider extends ServiceProvider
{

    public function register()
    {

    }

    public function boot()
    {

        View::composer('front-end.top', MenuComposer::class);
        View::composer('front-end.footer', MenuComposer::class);

        View::composer('front-end.cart.cart', CartComposer::class);
    }
}
