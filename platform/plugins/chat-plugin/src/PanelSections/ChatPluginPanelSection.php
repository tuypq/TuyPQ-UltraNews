<?php

namespace Botble\ChatPlugin\PanelSections;

use Botble\Base\PanelSections\PanelSection;

class ChatPluginPanelSection extends PanelSection
{
    public function setup(): void
    {
        $this
            ->setId('settings.{id}')
            ->setTitle('{title}')
            ->withItems([
                //
            ]);
    }
}
