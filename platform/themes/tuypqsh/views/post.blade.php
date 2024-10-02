@php
    Theme::layout('full');
    $totalComment = get_total_comment($post);
    MetaBox::getMetaData($post, 'time_to_read', true);
    $singleLayout = MetaBox::getMetaData($post, 'layout', true);
    if (empty($singleLayout)) {
        $singleLayout = theme_option('single_layout', 'default');
    }

    $videoLink = MetaBox::getMetaData($post, 'video_link', true);
    $videoEmbedCode = MetaBox::getMetaData($post, 'video_embed_code', true);
    $videoUploadId = MetaBox::getMetaData($post, 'video_upload_id', true);
    if ($videoLink || $videoUploadId) {
        $singleLayout = 'default';
    }

    if (is_plugin_active('pro-posts')) {
        Theme::asset()->container('footer')->usePath(false)->add('favorite-post', 'vendor/core/plugins/pro-posts/js/favorite-posts.js');
        Theme::asset()->container('footer')->usePath()->add('post-js', 'js/post.js');
    }
@endphp

<!--main content-->
<div class="main_content sidebar_right pb-50 @if($singleLayout == 'default' || empty($singleLayout)) pt-50 @endif">
    <div data-post-id="{{ $post->id }}"></div>
    @switch($singleLayout)
        @case('top-full')
            {!! Theme::partial('components.single.headers.top-full', compact('post', 'totalComment')) !!}
            @break;

        @case('inline')
            {!! Theme::partial('components.single.headers.inline', compact('post', 'totalComment')) !!}
            @break;
    @endswitch

    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-12 col-sm-12">
                @if($singleLayout == 'default' || empty($singleLayout))
                    {!! Theme::partial('components.single.headers.default', compact('post', 'totalComment', 'videoLink', 'videoEmbedCode', 'videoUploadId')) !!}
                @endif

                {{-- <div class="single-excerpt">
                    <p class="font-large">{!! clean($post->description) !!}</p>
                </div> --}}
                <div class="entry-main-content wow fadeIn animated">
                    @if (defined('GALLERY_MODULE_SCREEN_NAME') && !empty($galleries = gallery_meta_data($post)))
                        {!! render_object_gallery($galleries, ($post->categories()->first() ?
                        $post->categories()->first()->name
                        : __('Uncategorized'))) !!}
                    @endif
                    <div class="ck-content">{!! BaseHelper::clean($post->content) !!}</div>
                </div>

                @if(is_plugin_active('external-source') && !empty($post->source_link))
                    <div class="entry-bottom mt-50 mb-30">
                        <p>{{ __('Source link') }}:
                            <a href="{{ $post->source_link }}" class="blue" target="_blank">{{ $post->source_link }}</a>
                        </p>
                    </div>
                @endif

                <div class="entry-bottom mt-50 mb-30">
                    @if (!$post->tags->isEmpty())
                    <div class="category-filter mb-10 mt-3 rounded-xl bg-[#EEEEEE] px-4">
                        <ul class="filter-list">
                            @foreach ($post->tags as $tag)
                          <li>
                            <a class="filter-btn filter-btn-active btn btn-sm" href="{{ $tag->url }}">{{ $tag->name }}</a>
                          </li>
                          @endforeach
                        </ul>
                      </div>
                    @endif  
                </div>

                <div class="single-social-share clearfix wow fadeIn animated">
                    <ul class="d-inline-block list-inline float-right">
                        {!! Theme::partial('components.social-share-post', compact('post')) !!}
                    </ul>
                </div>

                <div class="bt-1 border-color-1 mt-30 mb-30"></div>
                @switch(theme_option('comment_type_in_post', ''))
                    @case('facebook')
                        {!! apply_filters(BASE_FILTER_PUBLIC_COMMENT_AREA, Theme::partial('comments')) !!}
                        @break

                    @case('member')
                        @if (is_plugin_active('comment') && comment_object_enable($post))
                            [comment type="{{ addslashes(get_class($post)) }}" type_id="{{ $post->id }}"][/comment]
                        @endif
                        @break
                @endswitch

                @php $relatedPosts = get_related_posts($post->id, 3); @endphp

                @if ($relatedPosts->count() > 0)
                    {!! Theme::partial('components.single.related-posts', ['relatedPosts' => $relatedPosts ]) !!}
                @endif

            </div>

            <div class="col-lg-4 col-md-12 col-sm-12 primary-sidebar sticky-sidebar">
                <div class="widget-area pl-30">
                    {!! dynamic_sidebar('primary_sidebar') !!}
                </div>
            </div>
        </div>

        @if(theme_option('recently_viewed_posts_enable', 'yes') == 'yes')
            <div class="row recently-viewed-posts">
                <div class="col-md-12">
                    [recently-viewed-posts title="{{ __('Recently Viewed Posts') }}"
                    subtitle="{{ __('Your currently viewed posts.') }}"][/recently-viewed-posts]
                </div>
            </div>
        @endif
    </div>
</div>
