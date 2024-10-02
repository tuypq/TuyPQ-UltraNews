<?php

return [
    [
        'name' => 'Chat plugins',
        'flag' => 'chat-plugin.index',
    ],
    [
        'name' => 'Create',
        'flag' => 'chat-plugin.create',
        'parent_flag' => 'chat-plugin.index',
    ],
    [
        'name' => 'Edit',
        'flag' => 'chat-plugin.edit',
        'parent_flag' => 'chat-plugin.index',
    ],
    [
        'name' => 'Delete',
        'flag' => 'chat-plugin.destroy',
        'parent_flag' => 'chat-plugin.index',
    ],
];
