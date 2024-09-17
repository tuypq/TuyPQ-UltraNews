      <section class="section pt-0">
    <div class="container">
      <h2 class="h4 mb-4">{{ $title }}</h2>
      <div class="row">
        @foreach ($posts as $post)
        {!! Theme::partial('components.post-card-1-block', [
                    'post' => $post
                ]) !!}
        @endforeach
      </div>
    </div>
  </section>
  
  