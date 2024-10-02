<?php

namespace Botble\ChatPlugin;

use Illuminate\Support\Facades\Schema;
use Botble\PluginManagement\Abstracts\PluginOperationAbstract;

class Plugin extends PluginOperationAbstract
{
    public static function remove(): void
    {
        Schema::dropIfExists('Chat Plugins');
        Schema::dropIfExists('Chat Plugins_translations');
    }
}
