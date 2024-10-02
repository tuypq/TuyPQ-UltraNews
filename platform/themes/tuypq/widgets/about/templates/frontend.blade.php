
<div>
    <div class="">
        <h5 class="widget-title mb-30 color-white">{{ $config['name'] }}</h5>
    </div>
    <p class="mt-6 text-sm">
        {{ $config['description'] }}
    </p>
    <div class="post-block-list post-module-1 post-module-5">
        @if (theme_option('address'))
            <p>
                <strong>{{ __('Address') }}</strong>
                <br>
                {{ theme_option('address') }}
            </p>
        @endif
        @if (theme_option('phone'))
            <p>
                <strong>{{ __('Phone') }}</strong>
                <br>
                {{ theme_option('phone') }}
            </p>
        @endif
    </div>
</div>

