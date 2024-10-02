
    <h6>{{ $config['name'] }}</h5>

    <div class="post-block-list post-module-1 post-module-5">
        {!!
            Menu::generateMenu(['slug' => $config['menu_id'], 'view' => 'quicklink_menu', 'options' => ['class' => 'font-medium']])
        !!}
    </div>
    <div class="clearfix"></div>

