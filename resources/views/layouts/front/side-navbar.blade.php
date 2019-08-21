
    @foreach($categories as $category)

        <li>
            @if($category->children()->count() > 0 && $category->parent_id == null )
                <a data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" href="#{{$category->name}}">{{$category->name}}</a>
                @include('layouts.front.category-sub', ['subs' => $category->children])
            @else
                @if($category->parent_id == null)

                        <a @if(request()->segment(2) == $category->slug) class="active" @endif href="{{route('front.category.slug', $category->slug)}}">{{$category->name}} </a>
                @endif
             @endif
        </li>
    @endforeach
