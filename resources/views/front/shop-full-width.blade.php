@extends('layouts.front.app')

@section('og')
    <meta property="og:type" content="home"/>
    <meta property="og:title" content="{{ config('app.name') }}"/>
    <meta property="og:description" content="{{ config('app.name') }}"/>
    @endsection

@section('content')
    	<!--[if lte IE 9]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
    <![endif]-->

    <!-- header area end -->

    <!-- breadcrumb area start -->
    <div class="breadcrumb-area mb-30">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-wrap">
                        <nav aria-label="breadcrumb">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="http://demo.devitems.com/sinrato-v5/sinrato/index.html">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Shop grid left sidebar</li>
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
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="product-shop-main-wrapper mb-50">
                        <div class="shop-baner-img mb-70">
                            <a href="/"><img src="{{asset('new-theme/images/banner/category-image.jpg')}}" alt=""></a>
                        </div>
                        <div class="shop-top-bar mb-30">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="top-bar-left">
                                        <div class="product-view-mode">
                                            <a class="active" href="{{route('shop')}}#" data-target="column_3"><span>3-col</span></a>
                                            <a href="{{route('shop')}}#" data-target="grid"><span>4-col</span></a>
                                            <a  href="{{route('shop')}}#" data-target="list"><span>list</span></a>
                                        </div>
                                        <div class="product-page">

                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="top-bar-right">
                                        <div class="per-page">
                                            <p>Show : </p>
                                            <select  name="sortby">
                                                <option value="trending">10</option>
                                                <option value="sales">20</option>
                                                <option value="sales">30</option>
                                                <option value="rating">40</option>
                                                <option value="date">50</option>
                                                <option value="price-asc">60</option>
                                                <option value="price-asc">70</option>
                                                <option value="price-asc">100</option>
                                            </select>
                                        </div>
                                        <div class="product-short">
                                            <p>Sort By : </p>
                                            <select  name="sortby">
                                                <option value="trending">Relevance</option>
                                                <option value="sales">Name (A - Z)</option>
                                                <option value="sales">Name (Z - A)</option>
                                                <option value="rating">Price (Low &gt; High)</option>
                                                <option value="date">Rating (Lowest)</option>
                                                <option value="price-asc">Model (A - Z)</option>
                                                <option value="price-asc">Model (Z - A)</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="shop-product-wrap grid row">
                            <?php foreach ($cat1 as $product): ?>
                                @include('front.products.show-single-product', ['product' => $product])

    <?php endforeach; ?>


                        </div>
                        <div class="pagination-area pt-35 pb-20">
                            <p><?php echo $cat1->render(); ?></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- shop page main wrapper end -->


    @include('mailchimp::mailchimp')
@endsection