<?php

namespace Botble\ChatPlugin\Http\Controllers\Settings;

use Botble\Base\Forms\FormBuilder;
use Botble\ChatPlugin\Forms\Settings\ChatPluginForm;
use Botble\ChatPlugin\Http\Requests\Settings\ChatPluginRequest;
use Botble\Setting\Http\Controllers\SettingController;

class ChatPluginController extends SettingController
{
    public function edit(FormBuilder $formBuilder)
    {
        $this->pageTitle('Page title');

        return $formBuilder->create(ChatPluginForm::class)->renderForm();
    }

    public function update(ChatPluginRequest $request)
    {
        return $this->performUpdate($request->validated());
    }
}
