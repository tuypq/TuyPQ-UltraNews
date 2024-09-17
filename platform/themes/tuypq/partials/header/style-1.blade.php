<header class="header">
    <nav class="navbar container">
        @if (theme_option('logo'))
        <!-- logo -->
      <div class="order-0">
        <a href="{{ route('public.index') }}">
          <img  src="{{ RvMedia::getImageUrl(theme_option('logo')) }}"
                                 alt="{{ setting('site_title') }} " height="20" width="125" alt="logo" />
        </a>
      </div>
    @endif
      
      <!-- navbar toggler -->
      <input id="nav-toggle" type="checkbox" class="hidden" />
      <label
        id="show-button"
        for="nav-toggle"
        class="order-1 flex cursor-pointer items-center lg:order-1 lg:hidden"
      >
        <svg class="h-6 fill-current" viewBox="0 0 20 20">
          <title>Menu Open</title>
          <path d="M0 3h20v2H0V3z m0 6h20v2H0V9z m0 6h20v2H0V0z"></path>
        </svg>
      </label>
      <label
        id="hide-button"
        for="nav-toggle"
        class="order-2 hidden cursor-pointer items-center lg:order-1"
      >
        <svg class="h-6 fill-current" viewBox="0 0 20 20">
          <title>Menu Close</title>
          <polygon
            points="11 9 22 9 22 11 11 11 11 22 9 22 9 11 -2 11 -2 9 9 9 9 -2 11 -2"
            transform="rotate(45 10 10)"
          ></polygon>
        </svg>
      </label>
      <!-- /navbar toggler -->

       {!! Menu::renderMenuLocation('main-menu', [
                'view'    => 'menu',
                'options' => ['id' => 'nav-menu', 'class'=> 'navbar-nav order-2 hidden w-full flex-[0_0_100%] lg:order-1 lg:flex lg:w-auto lg:flex-auto lg:justify-center lg:space-x-5'],
        ]) !!}

      
      {{-- <div class="order-1 ml-auto hidden items-center md:order-2 md:ml-0 lg:flex">
        <a class="btn btn-white btn-sm" href="signin.html">Sing Up Now</a>
      </div> --}}
    </nav>
  </header>
  