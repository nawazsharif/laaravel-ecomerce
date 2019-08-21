@extends('layouts.front.app')

@section('og')
    <meta property="og:type" content="home"/>
    <meta property="og:title" content="{{ config('app.name') }}"/>
    <meta property="og:description" content="{{ config('app.name') }}"/>
    @endsection

@section('content')
    	<!--[if lte IE 9]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a
            href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
    <![endif]-->

    <!-- header area end -->
    <div class="shop-baner-img mb-70">
        <a href="/"><img src="{{asset('new-theme/images/banner/category-image.jpg')}}" alt=""></a>
    </div>


    <!-- breadcrumb area start -->
    <div class="breadcrumb-area mb-30">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-wrap">
                        <nav aria-label="breadcrumb">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="/">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Category</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area end -->

    <!-- shop page main wrapper start -->
    <div class="main-wrapper pt-35">
        <div class="container-fluid">

            @if($category->children()->count() >0)
                <div class="row justify-content-center mt-5">
                @foreach($category->children as $cat)
                    <div class="img-block-category"><a href="{{route('front.category.slug', $cat->slug)}}">
                            <div class="banner-details">

                                <div class="banner-title">{{$cat->name}}</div>
                                <div class="line"></div>

                            </div>
                            @if(isset($cat->cover))
                                <img src="{{ asset("storage/$cat->cover") }}" alt="{{ $cat->name }}"
                                     class="img-bordered img-responsive">
                            @else
                                <img src="{{asset('new-theme/images/banner/organic-fruits.jpg')}}"
                                     alt="{{ $cat->name }}"
                                     class="img-bordered img-responsive"/>
                            @endif
                        </a>
                    </div>
                @endforeach
            </div>
            @else

                <div class="row">
                    <div class="col-lg-12 order-first order-lg-last">
                        <div class="product-shop-main-wrapper mb-50">


                            <div class="shop-product-wrap row column_3">

                                @include('front.products.category-product', ['product' => $products])

                            </div>
                            <div class="pagination-area pt-35 pb-20">

                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>
    @endif
    <!-- shop page main wrapper end -->

@endsection




{{--@extends('layouts.front.app')--}}

{{--@section('og')--}}
{{--<meta property="og:type" content="category"/>--}}
{{--<meta property="og:title" content="{{ $category->name }}"/>--}}
{{--<meta property="og:description" content="{{ $category->description }}"/>--}}
{{--@if(!is_null($category->cover))--}}
{{--<meta property="og:image" content="{{ asset("storage/$category->cover") }}"/>--}}
{{--@endif--}}
{{--@endsection--}}

{{--@section('content')--}}
{{--<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>--}}
{{--<![endif]-->--}}

{{--<!-- header area end -->--}}

{{--<!-- breadcrumb area start -->--}}
{{--<div class="breadcrumb-area mb-30">--}}
{{--<div class="container-fluid">--}}
{{--<div class="row">--}}
{{--<div class="col-12">--}}
{{--<div class="breadcrumb-wrap">--}}
{{--<nav aria-label="breadcrumb">--}}
{{--<ul class="breadcrumb">--}}
{{--<li class="breadcrumb-item"><a href="http://demo.devitems.com/sinrato-v5/sinrato/index.html">Home</a></li>--}}
{{--<li class="breadcrumb-item active" aria-current="page">Shop grid left sidebar</li>--}}
{{--</ul>--}}
{{--</nav>--}}
{{--</div>--}}
{{--</div>--}}
{{--</div>--}}
{{--</div>--}}
{{--</div>--}}
{{--<!-- breadcrumb area end -->--}}

{{--<!-- shop page main wrapper start -->--}}
{{--<div class="main-wrapper pt-35">--}}
{{--<div class="container">--}}
{{--<div class="row">--}}
{{--<div class="col-lg-3">--}}
{{--<div class="shop-sidebar-inner mb-30">--}}
{{--<!-- filter-price-content start -->--}}
{{--<div class="single-sidebar mb-45">--}}
{{--<div class="sidebar-inner-title mb-25">--}}
{{--<h3>Fillter by price</h3>--}}
{{--</div>--}}
{{--<div class="sidebar-content-box">--}}
{{--<div class="filter-price-content">--}}
{{--<form action="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" method="post">--}}
{{--<div id="price-slider" class="price-slider ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all"><div class="ui-slider-range ui-widget-header ui-corner-all" style="left: 16.6667%; width: 79.1667%;"></div><span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0" style="left: 0%;"></span><span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0" style="left: 100%;"></span><div class="ui-slider-range ui-widget-header ui-corner-all" style="left: 0%; width: 100%;"></div></div>--}}
{{--<div class="filter-price-wapper">--}}
{{--<div class="filter-price-cont">--}}
{{--<div class="input-type">--}}
{{--<input id="min-price" readonly="" type="text">--}}
{{--</div>--}}
{{--<div class="input-type">--}}
{{--<input id="max-price" readonly="" type="text">--}}
{{--</div>--}}
{{--</div>--}}
{{--</div>--}}
{{--</form>--}}
{{--</div>--}}
{{--</div>--}}
{{--</div>--}}
{{--<!-- filte price end -->--}}
{{--<!-- categories filter start -->--}}
{{--<div class="single-sidebar mb-45">--}}
{{--<div class="sidebar-inner-title mb-25">--}}
{{--<h3>Categories</h3>--}}
{{--</div>--}}
{{--<div class="sidebar-content-box">--}}
{{--<div class="filter-attribute-container">--}}
{{----}}
{{--<div class="container">--}}
{{--<hr>--}}
{{--<div class="row">--}}
{{--<div class="category-top col-md-12">--}}
{{--<h2>{{ $category->name }}</h2>--}}
{{--{!! $category->description !!}--}}
{{--</div>--}}
{{--</div>--}}
{{----}}
{{----}}
{{----}}
{{----}}
{{----}}
{{--<hr>--}}
{{--<div class="col-md-3">--}}
{{--@include('front.categories.sidebar-category')--}}
{{--</div>--}}
{{--<div class="col-md-9">--}}
{{--<div class="row">--}}
{{--<div class="category-image">--}}
{{--@if(isset($category->cover))--}}
{{--<img src="{{ asset("storage/$category->cover") }}" alt="{{ $category->name }}" class="img-responsive" />--}}
{{--@else--}}
{{--<img src="https://placehold.it/1200x200" alt="{{ $category->cover }}" class="img-responsive" />--}}
{{--@endif--}}
{{--</div>--}}
{{--</div>--}}
{{--<hr>--}}
{{--<div class="row">--}}
{{--@include('front.products.product-list', ['products' => $products])--}}
{{--</div>--}}
{{--</div>--}}
{{--</div>--}}
{{--@endsection--}}
