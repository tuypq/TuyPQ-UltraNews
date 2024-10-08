<div class="tabbable-custom">
    <ul class="nav nav-tabs ">
        <li class="nav-item">
            <a href="#categories-tab-post-left-tab" class="nav-link active"
               data-bs-toggle="tab">{{ __('Left column') }}</a>
        </li>
        <li class="nav-item">
            <a href="#categories-tab-post-right-tab" class="nav-link" data-bs-toggle="tab">{{ __('Right column') }}</a>
        </li>
    </ul>
    <div class="tab-content">
        <div class="tab-pane active" id="categories-tab-post-left-tab">
            <div class="form-group mb-3">
                <label class="control-label">{{ __('Title') }}</label>
                <input name="title" value="{{ Arr::get($attributes, 'title') }}" class="form-control" placeholder="POPULAR">
            </div>

            <div class="form-group mb-3">
                <label class="control-label">{{ __('Sub title') }}</label>
                <input name="subtitle" value="{{ Arr::get($attributes, 'subtitle') }}" class="form-control" placeholder="Sub title">
            </div>

            <div class="form-group mb-3">
                <label class="control-label">{{ __('Number of posts') }}</label>
                <input name="limit" class="form-control" value="{{ Arr::get($attributes, 'limit', 5) }}">
            </div>

            <div class="form-group mb-3">
                <label class="control-label">{{ __('Get posts from Categories') }}</label>
                <select name="categories_ids[]" class="select2 form-control" multiple>
                    @foreach($categories as $category)
                        <option value="{{ $category->id }}"
                                @if (in_array($category->id, explode(',', Arr::get($attributes, 'categories_ids')))) selected @endif>
                            {{ $category->name }}
                        </option>
                    @endforeach
                </select>
            </div>

            <div class="form-group mb-3">
                <label class="control-label">{{ __('Background style') }}</label>
                {!! Form::select('background_style', get_background_styles(), Arr::get($attributes, 'background_style'), ['class' => 'form-control']) !!}
            </div>
        </div>

        <div class="tab-pane" id="categories-tab-post-right-tab">
            <div class="form-group mb-3">
                <input name="show_follow_us_section" {{ Arr::get($attributes, 'show_follow_us_section', true) ? 'checked' : '' }} type="checkbox" value="1">
                <label class="control-label">{{ __('Show Follow Us section') }}</label>
            </div>
            <div class="form-group mb-3">
                <input name="show_text_section" {{ Arr::get($attributes, 'show_text_section', true) ? 'checked' : '' }} type="checkbox" value="1">
                <label class="control-label">{{ __('Show Text section') }}</label>
            </div>
            <div class="form-group mb-3">
                <label class="control-label">{{ __('Number of posts in each tab') }}</label>
                <input name="tab_post_limit" class="form-control" value="{{ Arr::get($attributes, 'tab_post_limit', 4) }}">
            </div>
            <div class="form-group mb-3">
                <label class="control-label">{{ __('Number of posts category') }}</label>
                <input name="right_limit" class="form-control" value="{{ Arr::get($attributes, 'right_limit', 5) }}">
            </div>
            <div class="form-group mb-3">
                <label class="control-label">{{ __('Get posts from Categories') }}</label>
                <select name="right_categories_ids[]" class="select2 form-control" multiple>
                    @foreach($categories as $category)
                        <option value="{{ $category->id }}"
                                @if (in_array($category->id, explode(',', Arr::get($attributes, 'right_categories_ids')))) selected @endif>
                            {{ $category->name }}
                        </option>
                    @endforeach
                </select>
            </div>
            <div class="form-group mb-3">
                <label class="control-label">{{ __('Ads location') }}</label>
                {!! Form::select('ads_location', AdsManager::getLocations(), Arr::get($attributes, 'ads_location'), ['class' => 'form-control']) !!}
            </div>
        </div>
    </div>
</div>
