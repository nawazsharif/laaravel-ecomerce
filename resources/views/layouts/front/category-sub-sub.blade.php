

<ul class="collapse list-unstyled" id="{{$sub->name}}">
    @foreach($subs as $sub)
        <li>
            @if($sub->children()->count() > 0)
                <a data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" href="#{{$sub->name}}">{{$sub->name}}</a>
                @include('layouts.front.category-sub-sub', ['subs_sub' => $sub->children])
            @else
                    <a @if(request()->segment(2) == $sub->slug) class="active" @endif href="{{route('front.category.slug', $sub->slug)}}">{{$sub->name}} </a>

            @endif
        </li>
    @endforeach
</ul>