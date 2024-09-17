<section>
    <h2 class="h4 mb-4">
    Bài viết liên quan
    </h2>
    <div class="row">
        @foreach ($relatedPosts as $post)
            {!! Theme::partial('components.post-card-1-block', [
                'post' => $post,
                'columnStyle' => [4,8],
                'showReadMoreText' => false
            ]) !!}
    @endforeach
    </div>
</section>
