@extends('layouts.front.app')

@section('og')
    <meta property="og:type" content="home"/>
    <meta property="og:title" content="{{ config('app.name') }}"/>
    <meta property="og:description" content="{{ config('app.name') }}"/>
@endsection

@section('content')

    @include('layouts.front.home-slider')
    <!-- Button trigger modal -->



    {{--############## top 3 image section ################--}}
    <div class="banner-statics pb-5">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-4 col-md-4">
                    <div class="single-banner-statics">
                        <a href="shop-grid-left-sidebar.html"><img
                                    src="{{asset('new-theme/images/banner/img1-top-sinrato3.jpg')}}" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4">
                    <div class="single-banner-statics">
                        <a href="shop-grid-left-sidebar.html"><img
                                    src="{{asset('new-theme/images/banner/img2-top-sinrato3.jpg')}}" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4">
                    <div class="single-banner-statics">
                        <a href="shop-grid-left-sidebar.html"><img
                                    src="{{asset('new-theme/images/banner/img3-top-sinrato3.jpg')}}" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{--############### ALl category and product #################--}}
    <?php //var_dump($category);die();?>
    <div class="container-fluid categorylist pt-5">
        <div class="row justify-content-center">
            @foreach($category as $cat)
                @if($cat->parent_id == null)
                <div class="img-block-category"><a href="{{route('front.category.slug', $cat->slug)}}">
                        <div class="banner-details">

                            <div class="banner-title">{{$cat->name}}</div>
                            <div class="line"></div>

                        </div>
                        @if(isset($cat->cover))
                            <img src="{{ asset("storage/$cat->cover") }}" alt="{{ $cat->name }}"
                                 class="img-bordered img-responsive">
                        @else
                            <img src="{{asset('new-theme/images/banner/organic-fruits.jpg')}}" alt="{{ $cat->name }}"
                                 class="img-bordered img-responsive"/>
                        @endif
                    </a>
                </div>
                @endif
            @endforeach
        </div>
    </div>
    {{--##############################################################--}}


    {{--############### middle banner #################--}}

    <div class="banner-statics">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="single-banner-statics">
                        <a href="shop-grid-left-sidebar.html"><img
                                    src="{{asset('new-theme/images/banner/bottom-banner.jpg')}}" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {{--########################################################--}}
    <div class="product-wrapper fix pb-5">
        <div class="container">
            <div class="section-title product-spacing hm-11">
                <h3><span>our</span> product</h3>
                <div class="boxx-tab">
                    <ul class="nav my-tab">

                        <?php for ($j=0;$j<$category->count(); $j++){
                            if ($category[$j]->parent_id == null){?>
                        <li>
                        <a class="" data-toggle="tab" href="#{{ $category[$j]->name }}">{{ $category[$j]->name }}</a>
                        </li>
                        <?php }}?>

                    </ul>
                </div>
            </div>
            <div class="tab-content">

                <?php for($i = 0;$i < $category->count();$i++){
                ?>
                <div class="tab-pane <?php if ($i == 0) {
                    echo "show active";
                } else {
                    echo "fade";
                }?>" id="{{ $category[$i]->name }}">
                    <div class="product-gallary-wrapper">
                        <div class="owl-product owl-carousel owl-theme">

                            @include('front.products.product-list', ['products' => $category[$i]->products->where('status', 1)])

                        </div>
                    </div>

                </div>
                <?php
                }
                ?>

            </div>
        </div>
    </div>

    {{--###############  4 logo ####################--}}

    <div class="feature-style-one pt-5 pb-5">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="feature-inner fix">
                        <div class="col">
                            <div class="feature-item">
                                <div class="feature-icon">
                                    <img src="{{asset('new-theme/images/icon/wrapper1.png')}}" alt="">
                                </div>
                                <div class="feature-content">
                                    <h4>free shipping</h4>
                                    <p>free shipping on all us order</p>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="feature-item">
                                <div class="feature-icon">
                                    <img src="{{asset('new-theme/images/icon/wrapper2.png')}}" alt="">
                                </div>
                                <div class="feature-content">
                                    <h4>Support 24/7</h4>
                                    <p>Contact us 24 hours a day</p>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="feature-item">
                                <div class="feature-icon">
                                    <img src="{{asset('new-theme/images/icon/wrapper3.png')}}" alt="">
                                </div>
                                <div class="feature-content">
                                    <h4>100% Money Back</h4>
                                    <p>You have 30 days to Return</p>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="feature-item">
                                <div class="feature-icon">
                                    <img src="{{asset('new-theme/images/icon/wrapper4.png')}}" alt="">
                                </div>
                                <div class="feature-content">
                                    <h4>90 Days Return</h4>
                                    <p>If goods have problems</p>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="feature-item">
                                <div class="feature-icon">
                                    <img src="{{asset('new-theme/images/icon/wrapper5.png')}}" alt="">
                                </div>
                                <div class="feature-content">
                                    <h4>Payment Secure</h4>
                                    <p>We ensure secure payment</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{--################# Hot product ###############--}}

    <div class="product-wrapper3 mb-5">
    <div class="container">
        <div class="section-title product-spacing">
            <h3><span>hot</span> product</h3>

        </div>
        <div class="row">
            <div class="col-lg-4 col-md-5 col-6 offset-3 offset-md-0">
                <div class="pro-gallary-banner">
                    <a href="#"><img src="{{asset('new-theme/images/product/img-module1.jpg')}}" alt=""></a>
                </div>
            </div>
            <div class="col-lg-8 col-md-7">
                <div class="owl-carousel owl-topsell owl-theme">

                        @if(!empty($results) && !collect($results)->isEmpty())
                        @foreach($results as $product)
                            <div class="item">
                            @include('front.products.show-single-product', ['product' => $product])
                            </div>
                        @endforeach
                        @endif
                </div>

            </div>
        </div>
    </div>
    </div>


    <div class="banner-statics">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="single-banner-statics">
                        <a href="shop-grid-left-sidebar.html"><img
                                    src="{{asset('new-theme/images/banner/img1-middle-sinrato1.jpg')}}" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single-banner-statics">
                        <a href="shop-grid-left-sidebar.html"><img
                                    src="{{asset('new-theme/images/banner/img2-middle-sinrato1.jpg')}}" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </div>




    <div class="brand-area mb-5">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h3><span>Brand</span> sale</h3>
                    </div>
                </div>
                <div class="col-12">
                    <ul class="owl-carousel owl-brand-icon owl-theme">
                        <?php $brands = DB::select('SELECT * from brands'); ?>
                        @foreach($brands as $data)
                            <div class="item">
                                <li>
                                    <a href="#brand-two" data-toggle="tab">
                                        <img src="{{asset('new-theme/images/brand/brand2.png')}}" alt="">
                                    </a>
                                </li>
                            </div>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
    </div>

@endsection
