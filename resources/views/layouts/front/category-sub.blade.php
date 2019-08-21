

<ul class="collapse list-unstyled" id="{{$category->name}}">
        @foreach($subs as $sub)
        <li>
            @if($sub->children()->count() > 0)
                <a data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" href="#{{$sub->name}}">{{$sub->name}}</a>
                        @include('layouts.front.category-sub-sub', ['subs' => $sub->children])
            @else
                @if($sub->children()->count() == 0)

                <a @if(request()->segment(2) == $sub->slug) class="active" @endif href="{{route('front.category.slug', $sub->slug)}}">{{$sub->name}} </a>
            @endif
            @endif
        </li>
        @endforeach
</ul>
{{--<ul class="collapse list-unstyled" id="{{$category->name}}">--}}
        {{--@foreach($subs as $sub)--}}
        {{--@if($sub->children()->count() > 0)--}}
            {{--<a data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" href="#{{$sub->name}}"></a>--}}
            {{--<ul>--}}
                {{--<li><a href="{{route('front.category.slug', $sub->slug)}}">{{$sub->name}}</a></li>--}}
            {{--</ul>--}}
        {{--@else--}}
            {{--<li><a href="{{route('front.category.slug', $sub->slug)}}">{{$sub->name}}</a></li>--}}
        {{--@endif--}}
        {{--@endforeach--}}
{{--</ul>--}}


{{--<ul class="mega-menu mega-full">--}}
    {{--@foreach($category as $sub)--}}
    {{--<li><a href="{{route('front.category.slug', $sub->slug)}}">{{$sub->name}}</a></li>--}}
        {{--@endforeach--}}
{{--</ul>--}}