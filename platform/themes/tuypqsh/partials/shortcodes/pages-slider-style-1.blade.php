<!-- Banner -->
<section class="section banner relative">
    <div class="container">
        @foreach ($posts as $key => $post)
      <div class="row items-center">
        <div class="lg:col-6">
          <h2 class="banner-title">
            {{ $post->name }}
          </h2>
          <p class="mt-6">
            {{ clean($post->description ) }}
          </p>
          <a class="btn btn-white mt-8" href="{{ get_external_link($post) }}">Xem thêm</a>
        </div>
        <div class="lg:col-6">
          <img
            class="w-full object-contain"
            src="{{ RvMedia::getImageUrl($post->image, 'medium_large', false, RvMedia::getDefaultImage()) }}"
            width="603"
            height="396"
            alt=""
          />
        </div>
        @endforeach
      </div>
    </div>
    <img
      class="banner-shape absolute -top-28 right-0 -z-[1] w-full max-w-[30%]"
      src="https://themewagon.github.io/pinwheel/images/banner-shape.svg"
      alt=""
    />
  </section>
  <!-- ./end Banner -->