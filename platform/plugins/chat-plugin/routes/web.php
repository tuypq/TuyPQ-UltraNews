<?php

use Illuminate\Support\Facades\Route;
use Botble\Base\Facades\AdminHelper;

Route::group(['namespace' => 'Botble\ChatPlugin\Http\Controllers'], function () {
    AdminHelper::registerRoutes(function () {
        Route::group(['prefix' => 'chat-plugins', 'as' => 'chat-plugin.'], function () {
            Route::resource('', 'ChatPluginController')->parameters(['' => 'chat-plugin']);
        });
    });
});
