<?php

namespace Botble\ChatPlugin\Forms\Settings;

use Botble\ChatPlugin\Http\Requests\Settings\ChatPluginRequest;
use Botble\Setting\Forms\SettingForm;

class ChatPluginForm extends SettingForm
{
    public function buildForm(): void
    {
        parent::buildForm();

        $this
            ->setSectionTitle('Setting title')
            ->setSectionDescription('Setting description')
            ->setValidatorClass(ChatPluginRequest::class);
    }
}
