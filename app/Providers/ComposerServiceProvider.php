<?php

namespace App\Providers;

use App\Composers\CartComposer;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use App\Composers\CategoryComposer;

class ComposerServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        View::composer('client.layouts.app', CategoryComposer::class);
        View::composer('client.layouts.app', CartComposer::class);
    }
}
