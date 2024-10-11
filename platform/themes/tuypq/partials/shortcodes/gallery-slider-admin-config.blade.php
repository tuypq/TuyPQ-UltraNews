<div class="form-group mb-3">
    <label class="control-label">Title</label>
    <input type="text" name="title" value="{{ Arr::get($attributes, 'title') }}"  class="form-control" />
</div>
<div class="form-group mb-3">
    <label class="control-label">Gallery</label>
    <select class="form-control" name="gallery" id="gallery">
        @foreach (get_list_galleries([]) as $gallery)
            <option value="{{ $gallery->id }}"> {{ $gallery->name }} <option>
        @endforeach
    </select>
</div>
<div class="form-group mb-3">
    <label class="control-label">{{ __('Style') }}</label>
    <select name="style" class="form-control">
        <option value="1" @if (Arr::get($attributes, 'style') == 1) selected @endif>{{ __('Style 1') }}</option>
        <option value="2" @if (Arr::get($attributes, 'style') == 2) selected @endif>{{ __('Style 2') }}</option>
        <option value="3" @if (Arr::get($attributes, 'style') == 3) selected @endif>{{ __('Style 3') }}</option>
        <option value="4" @if (Arr::get($attributes, 'style') == 4) selected @endif>{{ __('Style 4') }}</option>
        <option value="5" @if (Arr::get($attributes, 'style') == 5) selected @endif>{{ __('Style 5') }}</option>
    </select>
</div>