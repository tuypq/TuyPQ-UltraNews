
<div class="text">
    <ul class="breadcrumb inline-flex h-8 items-center justify-center space-x-2 rounded-3xl bg-theme-light px-4 py-2">
        @foreach (Theme::breadcrumb()->getCrumbs() as $i => $crumb)
        
        @if ($i != (count(Theme::breadcrumb()->getCrumbs()) - 1))
            <li class="leading-none text-dark">
                <a class="inline-flex items-center text-primary" href="{{ $crumb['url'] }}">
                  <span class="text-sm leading-none">@if($i != 0)/ @endif{!! $crumb['label'] !!}</span>
                </a>
              </li>
        @else
            <li class="leading-none text-dark">
                <span class="text-sm leading-none">/ {!! $crumb['label'] !!}</span>
            </li>
        @endif
        @endforeach
    </ul>
  </div>