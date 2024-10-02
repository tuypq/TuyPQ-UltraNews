
<h6>{{__('Categories')}}</h6>
        <ul>
            @foreach(get_popular_categories(5) as $category)
        <li>
          <a href="{{ $category->url }}">{{ $category->name }}</a>
        </li>
        @endforeach
        </ul>

