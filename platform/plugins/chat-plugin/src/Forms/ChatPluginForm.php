<?php

namespace Botble\ChatPlugin\Forms;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Forms\FormAbstract;
use Botble\ChatPlugin\Http\Requests\ChatPluginRequest;
use Botble\ChatPlugin\Models\ChatPlugin;

class ChatPluginForm extends FormAbstract
{
    public function setup(): void
    {
        $this
            ->setupModel(new ChatPlugin())
            ->setValidatorClass(ChatPluginRequest::class)
            ->withCustomFields()
            ->add('name', 'text', [
                'label' => trans('core/base::forms.name'),
                'required' => true,
                'attr' => [
                    'placeholder' => trans('core/base::forms.name_placeholder'),
                    'data-counter' => 120,
                ],
            ])
            ->add('status', 'customSelect', [
                'label' => trans('core/base::tables.status'),
                'required' => true,
                'choices' => BaseStatusEnum::labels(),
            ])
            ->setBreakFieldPoint('status');
    }
}
