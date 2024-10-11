<section class="section services">
    <div class="container">
      <div class="tab row gx-5 items-center" data-tab-group="integration-tab">
        <div class="lg:col-7 lg:order-2">
          <div class="tab-content" data-tab-content>
            @php
            $i = 0;
            @endphp
            @foreach (gallery_meta_data($gallery) as $image)
            <div class="tab-content-panel" data-tab-panel="{{$i}}">
              <img
                class="w-full object-contain"
                src="{{ RvMedia::getImageUrl(Arr::get($image, 'img')) }}"
              />
            </div>
            @php $i++; @endphp
            @endforeach
          </div>
        </div>
        <div class="mt-6 lg:col-5 lg:order-1 lg:mt-0">
          <div class="text-container">
            @if(!empty($title))
            <h2 class="lg:text-4xl">
                {{ $title }}
            </h2>
            @endif
            @if(!empty($gallery->description))
            <p class="mt-4">
              {{$gallery->description}}
            </p>
            @endif
            <ul class="tab-nav -ml-4 mt-8 border-b-0" data-tab-nav>
            @php
            $x = 0;
            @endphp
            @foreach (gallery_meta_data($gallery) as $image)
              <li class=" tab-nav-item active" data-tab="{{$x}}">
                <div class="flex flex-col justify-center items-center h-full mr-2">
                    <div>
                    <i class="fa-solid fa-circle-check text-blue-500"></i>
                    </div>
                </div>
                {{ clean(Arr::get($image, 'description')) }}
              </li>
            @php
            $x ++;
            @endphp
            @endforeach
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- ./end Services -->
  