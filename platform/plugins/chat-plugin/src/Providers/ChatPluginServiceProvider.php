<?php

namespace Botble\ChatPlugin\Providers;

use Botble\Base\Supports\ServiceProvider;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Botble\Base\Facades\DashboardMenu;
use Botble\ChatPlugin\Models\ChatPlugin;

class ChatPluginServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function boot(): void
    {
        $this
            ->setNamespace('plugins/chat-plugin')
            ->loadHelpers()
            ->loadAndPublishConfigurations(["permissions"])
            ->loadAndPublishTranslations()
            ->loadRoutes()
            ->loadAndPublishViews()
            ->loadMigrations();
            
            if (defined('LANGUAGE_ADVANCED_MODULE_SCREEN_NAME')) {
                \Botble\LanguageAdvanced\Supports\LanguageAdvancedManager::registerModule(ChatPlugin::class, [
                    'name',
                ]);
            }
            
            DashboardMenu::default()->beforeRetrieving(function () {
                DashboardMenu::registerItem([
                    'id' => 'cms-plugins-chat plugin',
                    'priority' => 5,
                    'parent_id' => null,
                    'name' => 'plugins/chat plugin::chat plugin.name',
                    'icon' => 'fa fa-list',
                    // 'url' => route('chat plugin.index'),
                    'permissions' => ['chat plugin.index'],
                ]);
            });
    }
}
