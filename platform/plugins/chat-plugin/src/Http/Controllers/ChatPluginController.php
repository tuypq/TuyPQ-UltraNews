<?php

namespace Botble\ChatPlugin\Http\Controllers;

use Botble\Base\Http\Actions\DeleteResourceAction;
use Botble\ChatPlugin\Http\Requests\ChatPluginRequest;
use Botble\ChatPlugin\Models\ChatPlugin;
use Botble\Base\Facades\PageTitle;
use Botble\Base\Http\Controllers\BaseController;
use Botble\ChatPlugin\Tables\ChatPluginTable;
use Botble\ChatPlugin\Forms\ChatPluginForm;

class ChatPluginController extends BaseController
{
    public function __construct()
    {
        $this
            ->breadcrumb()
            ->add(trans(trans('plugins/chat plugin::chat-plugin.name')), route('chat-plugin.index'));
    }

    public function index(ChatPluginTable $table)
    {
        $this->pageTitle(trans('plugins/chat plugin::chat-plugin.name'));

        return $table->renderTable();
    }

    public function create()
    {
        $this->pageTitle(trans('plugins/chat plugin::chat-plugin.create'));

        return ChatPluginForm::create()->renderForm();
    }

    public function store(ChatPluginRequest $request)
    {
        $form = ChatPluginForm::create()->setRequest($request);

        $form->save();

        return $this
            ->httpResponse()
            ->setPreviousUrl(route('chat-plugin.index'))
            ->setNextUrl(route('chat-plugin.edit', $form->getModel()->getKey()))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    public function edit(ChatPlugin $chatPlugin)
    {
        $this->pageTitle(trans('core/base::forms.edit_item', ['name' => $chatPlugin->name]));

        return ChatPluginForm::createFromModel($chatPlugin)->renderForm();
    }

    public function update(ChatPlugin $chatPlugin, ChatPluginRequest $request)
    {
        ChatPluginForm::createFromModel($chatPlugin)
            ->setRequest($request)
            ->save();

        return $this
            ->httpResponse()
            ->setPreviousUrl(route('chat-plugin.index'))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    public function destroy(ChatPlugin $chatPlugin)
    {
        return DeleteResourceAction::make($chatPlugin);
    }
}
