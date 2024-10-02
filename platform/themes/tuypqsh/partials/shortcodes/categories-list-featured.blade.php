<!-- Key features -->
<section class="section key-feature relative">
    <img
      class="absolute left-0 top-0 -z-[1] -translate-y-1/2"
      src="images/icons/feature-shape.svg"
      alt=""
    />
    <div class="container">
      <div class="row justify-between text-center lg:text-start">
        <div class="lg:col-5">
          <h2>Lĩnh vực hoạt động</h2>
        </div>
        <div class="mt-6 lg:col-5 lg:mt-0">
          {{-- <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi egestas
            Werat viverra id et aliquet. vulputate egestas sollicitudin .
          </p> --}}
        </div>
      </div>
      <div
        class="key-feature-grid mt-10 grid grid-cols-2 gap-7 md:grid-cols-3 xl:grid-cols-4"
      >
      @foreach($categoriesData as $category)
        <div
          class="flex flex-col justify-between rounded-lg bg-white p-5 shadow-lg"
        >
        <a href="{{ $category->url }}">
          <div>
            <h3 class="h4 text-xl lg:text-2xl">{{$category->name}}</h3>
            <p>{{$category->description}}</p>
          </div>
        </a>
          <span class="icon mt-4">
            {!! $category->icon !!}
          </span>
        
        </div>
        @endforeach
        </div>
      </div>
    </div>
  </section>
  <!-- ./end Key features -->