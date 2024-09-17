<section>
    <h1><span class="color2">{{ SeoHelper::getTitle() }}</span></h1>
    {!! Theme::partial('breadcrumbs') !!}
    @if (theme_option('enable_show_post_author_detail', 'yes') == 'yes' && class_exists($post->author_type) && $post->author && $post->author->id)
    <div class="mt-6 mb-5 flex items-center space-x-2">
        <a href="{{ $post->author->url }}">
        <div class="blog-author-avatar h-[58px] w-[58px]  border-2 border-primary p-0.5">
          <img src="{{ RvMedia::getImageUrl($post->author->avatar->url, 'thumb', false, RvMedia::getDefaultImage()) }}" alt="">
        </div>
        </a>
        <div class="">
            <a href="{{ $post->author->url }}">
            <p class="text-dark">{{ $post->author->name }}</p>
            </a>
          <span class="text-sm"> <i class="fa-solid fa-calendar-days"></i> {{ $post->created_at->format(post_date_format()) }}<span class="hit-count"> <i class="fa-solid fa-eye"></i> {{ number_format($post->views) . ' ' . __('views') }}</span></span>
        </div>
      </div>
    @endif
</section>