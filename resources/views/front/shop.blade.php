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
        <div class="container-fluid">
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
                <div class="col-lg-3">
                    <div class="shop-sidebar-inner mb-30">
                        <!-- filter-price-content start -->
                        <div class="single-sidebar mb-45">
                            <div class="sidebar-inner-title mb-25">
                                <h3>Fillter by price</h3>
                            </div>
                            <div class="sidebar-content-box">
                                <div class="filter-price-content">
                                    <form action="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" method="post">
                                        <div id="price-slider" class="price-slider ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all"><div class="ui-slider-range ui-widget-header ui-corner-all" style="left: 16.6667%; width: 79.1667%;"></div><span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0" style="left: 0%;"></span><span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0" style="left: 100%;"></span><div class="ui-slider-range ui-widget-header ui-corner-all" style="left: 0%; width: 100%;"></div></div>
                                        <div class="filter-price-wapper">
                                            <div class="filter-price-cont">
                                                <div class="input-type">
                                                    <input id="min-price" readonly="" type="text">
                                                </div>
                                                <div class="input-type">
                                                    <input id="max-price" readonly="" type="text">
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- filte price end -->
                        <!-- categories filter start -->
                        <div class="single-sidebar mb-45">
                            <div class="sidebar-inner-title mb-25">
                                <h3>Categories</h3>
                            </div>
                            <div class="sidebar-content-box">
                                <div class="filter-attribute-container">
                                    <ul>
                                        <li><a class="active" href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html">Categories 1 (05)</a></li>
                                        <li><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html">Categories 2 (03)</a></li>
                                        <li><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html">Categories 3 (10)</a></li>
                                        <li><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html">Categories 4 (02)</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- categories filter end -->
                        <!-- categories filter start -->
                        <div class="single-sidebar mb-45">
                            <div class="sidebar-inner-title mb-25">
                                <h3>Manufacturer</h3>
                            </div>
                            <div class="sidebar-content-box">
                                <div class="filter-attribute-container">
                                    <ul>
                                        <li><a class="active" href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html">Christian Dior (2)</a></li>
                                        <li><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html">ferragamo (7)</a></li>
                                        <li><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html">hermes (7)</a></li>
                                        <li><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html">louis vuitton (6)</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- categories filter end -->
                        <!-- categories filter start -->
                        <div class="single-sidebar mb-45">
                            <div class="sidebar-inner-title mb-25">
                                <h3>Select by color</h3>
                            </div>
                            <div class="sidebar-content-box">
                                <div class="filter-attribute-container">
                                    <ul>
                                        <li><a class="active" href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html">Black (2)</a></li>
                                        <li><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html">blue (7)</a></li>
                                        <li><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html">brown (7)</a></li>
                                        <li><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html">white (6)</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- sidebar promote picture start -->
                    <div class="single-sidebar mb-30">
                        <div class="sidebar-thumb">
                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#"><img src="./Sinratoshop_files/img-static-sidebar.jpg" alt=""></a>
                        </div>
                    </div>
                    <!-- sidebar promote picture end -->
                </div>
                <div class="col-lg-9 order-first order-lg-last">
                    <div class="product-shop-main-wrapper mb-50">
                        <div class="shop-baner-img mb-70">
                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#"><img src="./Sinratoshop_files/category-image.jpg" alt=""></a>
                        </div>
                        <div class="shop-top-bar mb-30">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="top-bar-left">
                                        <div class="product-view-mode">
                                            <a class="active" href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" data-target="column_3"><span>3-col</span></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" data-target="grid" class=""><span>4-col</span></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" data-target="list" class=""><span>list</span></a>
                                        </div>
                                        <div class="product-page">
                                            <p>Showing 1 to 9 of 9 (1 Pages)</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="top-bar-right">
                                        <div class="per-page">
                                            <p>Show : </p>
                                            <select  name="sortby" >
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
                        <div class="shop-product-wrap row column_3">
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="product-item mb-30">
                                    <div class="product-thumb">
                                        <a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">
                                            <img src="./Sinratoshop_files/product-1.jpg" class="pri-img" alt="">
                                            <img src="./Sinratoshop_files/product-2.jpg" class="sec-img" alt="">
                                        </a>
                                        <div class="box-label">
                                            <div class="label-product label_new">
                                                <span>new</span>
                                            </div>
                                        </div>
                                        <div class="action-links">
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Compare"><i class="lnr lnr-sync"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-caption">
                                        <div class="manufacture-product">
                                            <p><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html">apple</a></p>
                                        </div>
                                        <div class="product-name">
                                            <h4><a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">jony XB10 Portable  Wireless Speaker</a></h4>
                                        </div>
                                        <div class="ratings">
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span><i class="lnr lnr-star"></i></span>
                                        </div>
                                        <div class="price-box">
                                            <span class="regular-price">£30.31</span>
                                        </div>
                                        <button class="btn-cart" type="button">add to cart</button>
                                    </div>
                                </div> <!-- end single grid item -->
                                <div class="sinrato-list-item mb-30">
                                    <div class="sinrato-thumb">
                                        <a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">
                                            <img src="./Sinratoshop_files/product-12.jpg" class="pri-img" alt="">
                                            <img src="./Sinratoshop_files/product-9.jpg" class="sec-img" alt="">
                                        </a>
                                        <div class="box-label">
                                            <div class="label-product label_sale">
                                                <span>-10%</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="sinrato-list-item-content">
                                        <div class="manufacture-product">
                                            <span><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#">Canon</a></span>
                                        </div>
                                        <div class="sinrato-product-name">
                                            <h4><a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">Beats EP Wired Headphone-Black</a></h4>
                                        </div>
                                        <div class="sinrato-ratings mb-15">
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                        </div>
                                        <div class="sinrato-product-des">
                                            <p>Canon's press material for the EOS 5D states that it 'defines (a) new D-SLR category', while we're not typically too concerned with marketing talk this particular statement is clearly pretty accurate...</p>
                                        </div>
                                    </div>
                                    <div class="sinrato-box-action">
                                        <div class="price-box">
                                            <span class="regular-price"><span class="special-price">£50.00</span></span>
                                            <span class="old-price"><del>£60.00</del></span>
                                        </div>
                                        <button class="btn-cart" type="button">add to cart</button>
                                        <div class="action-links sinrat-list-icon">
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Compare"><i class="lnr lnr-sync"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                    </div>
                                </div> <!-- end single list item -->
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="product-item mb-30">
                                    <div class="product-thumb">
                                        <a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">
                                            <img src="./Sinratoshop_files/product-4.jpg" class="pri-img" alt="">
                                            <img src="./Sinratoshop_files/product-11.jpg" class="sec-img" alt="">
                                        </a>
                                        <div class="box-label">
                                            <div class="label-product label_new">
                                                <span>new</span>
                                            </div>
                                            <div class="label-product label_sale">
                                                <span>-10%</span>
                                            </div>
                                        </div>
                                        <div class="action-links">
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Compare"><i class="lnr lnr-sync"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-caption">
                                        <div class="manufacture-product">
                                            <p><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html">apple</a></p>
                                        </div>
                                        <div class="product-name">
                                            <h4><a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">jony XB10 Portable  Wireless Speaker</a></h4>
                                        </div>
                                        <div class="ratings">
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span><i class="lnr lnr-star"></i></span>
                                        </div>
                                        <div class="price-box">
                                            <span class="regular-price"><span class="special-price">£50.00</span></span>
                                            <span class="old-price"><del>£60.00</del></span>
                                        </div>
                                        <button class="btn-cart" type="button">add to cart</button>
                                    </div>
                                </div> <!-- end single grid item -->
                                <div class="sinrato-list-item mb-30">
                                    <div class="sinrato-thumb">
                                        <a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">
                                            <img src="./Sinratoshop_files/product-7.jpg" class="pri-img" alt="">
                                            <img src="./Sinratoshop_files/product-3.jpg" class="sec-img" alt="">
                                        </a>
                                        <div class="box-label">
                                            <div class="label-product label_new">
                                                <span>new</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="sinrato-list-item-content">
                                        <div class="manufacture-product">
                                            <span><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#">Canon</a></span>
                                        </div>
                                        <div class="sinrato-product-name">
                                            <h4><a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">Koss KPH7 Portable Headphone</a></h4>
                                        </div>
                                        <div class="sinrato-ratings mb-15">
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                        </div>
                                        <div class="sinrato-product-des">
                                            <p>Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge w..</p>
                                        </div>
                                    </div>
                                    <div class="sinrato-box-action">
                                        <div class="price-box">
                                            <span class="regular-price"><span class="special-price">£60.00</span></span>
                                            <span class="old-price"><del>£60.00</del></span>
                                        </div>
                                        <button class="btn-cart" type="button">add to cart</button>
                                        <div class="action-links sinrat-list-icon">
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Compare"><i class="lnr lnr-sync"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                    </div>
                                </div> <!-- end single list item -->
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="product-item mb-30">
                                    <div class="product-thumb">
                                        <a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">
                                            <img src="./Sinratoshop_files/product-2.jpg" class="pri-img" alt="">
                                            <img src="./Sinratoshop_files/product-3.jpg" class="sec-img" alt="">
                                        </a>
                                        <div class="box-label">
                                            <div class="label-product label_sale">
                                                <span>-10%</span>
                                            </div>
                                        </div>
                                        <div class="action-links">
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Compare"><i class="lnr lnr-sync"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-caption">
                                        <div class="manufacture-product">
                                            <p><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html">apple</a></p>
                                        </div>
                                        <div class="product-name">
                                            <h4><a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">jony XB10 Portable  Wireless Speaker</a></h4>
                                        </div>
                                        <div class="ratings">
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span><i class="lnr lnr-star"></i></span>
                                        </div>
                                        <div class="price-box">
                                            <span class="regular-price"><span class="special-price">£50.00</span></span>
                                        </div>
                                        <button class="btn-cart" type="button">add to cart</button>
                                    </div>
                                </div> <!-- end single grid item -->
                                <div class="sinrato-list-item mb-30">
                                    <div class="sinrato-thumb">
                                        <a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">
                                            <img src="./Sinratoshop_files/product-6.jpg" class="pri-img" alt="">
                                            <img src="./Sinratoshop_files/product-7.jpg" class="sec-img" alt="">
                                        </a>
                                        <div class="box-label">
                                            <div class="label-product label_new">
                                                <span>new</span>
                                            </div>
                                            <div class="label-product label_sale">
                                                <span>-10%</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="sinrato-list-item-content">
                                        <div class="manufacture-product">
                                            <span><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#">Canon</a></span>
                                        </div>
                                        <div class="sinrato-product-name">
                                            <h4><a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">Apple iPad with Retina Display</a></h4>
                                        </div>
                                        <div class="sinrato-ratings mb-15">
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                        </div>
                                        <div class="sinrato-product-des">
                                            <p>Canon's press material for the EOS 5D states that it 'defines (a) new D-SLR category', while we're not typically too concerned with marketing talk this particular statement is clearly pretty accurate...</p>
                                        </div>
                                    </div>
                                    <div class="sinrato-box-action">
                                        <div class="price-box">
                                            <span class="regular-price"><span class="special-price">£30.00</span></span>
                                            <span class="old-price"><del>£60.00</del></span>
                                        </div>
                                        <button class="btn-cart" type="button">add to cart</button>
                                        <div class="action-links sinrat-list-icon">
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Compare"><i class="lnr lnr-sync"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                    </div>
                                </div> <!-- end single list item -->
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="product-item mb-30">
                                    <div class="product-thumb">
                                        <a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">
                                            <img src="./Sinratoshop_files/product-8.jpg" class="pri-img" alt="">
                                            <img src="./Sinratoshop_files/product-10.jpg" class="sec-img" alt="">
                                        </a>
                                        <div class="box-label">
                                            <div class="label-product label_new">
                                                <span>new</span>
                                            </div>
                                        </div>
                                        <div class="action-links">
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Compare"><i class="lnr lnr-sync"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-caption">
                                        <div class="manufacture-product">
                                            <p><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html">apple</a></p>
                                        </div>
                                        <div class="product-name">
                                            <h4><a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">jony XB10 Portable  Wireless Speaker</a></h4>
                                        </div>
                                        <div class="ratings">
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span><i class="lnr lnr-star"></i></span>
                                        </div>
                                        <div class="price-box">
                                            <span class="regular-price">£30.31</span>
                                        </div>
                                        <button class="btn-cart" type="button">add to cart</button>
                                    </div>
                                </div> <!-- end single grid item -->
                                <div class="sinrato-list-item mb-30">
                                    <div class="sinrato-thumb">
                                        <a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">
                                            <img src="./Sinratoshop_files/product-12.jpg" class="pri-img" alt="">
                                            <img src="./Sinratoshop_files/product-13.jpg" class="sec-img" alt="">
                                        </a>
                                        <div class="box-label">
                                            <div class="label-product label_sale">
                                                <span>-10%</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="sinrato-list-item-content">
                                        <div class="manufacture-product">
                                            <span><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#">Canon</a></span>
                                        </div>
                                        <div class="sinrato-product-name">
                                            <h4><a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">Beats EP Wired Headphone-Black</a></h4>
                                        </div>
                                        <div class="sinrato-ratings mb-15">
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                        </div>
                                        <div class="sinrato-product-des">
                                            <p>Intel Core 2 Duo processor Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.1GB memory, larger hard drives The new MacBook now c..</p>
                                        </div>
                                    </div>
                                    <div class="sinrato-box-action">
                                        <div class="price-box">
                                            <span class="regular-price"><span class="special-price">£12.00</span></span>
                                        </div>
                                        <button class="btn-cart" type="button">add to cart</button>
                                        <div class="action-links sinrat-list-icon">
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Compare"><i class="lnr lnr-sync"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                    </div>
                                </div> <!-- end single list item -->
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="product-item mb-30">
                                    <div class="product-thumb">
                                        <a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">
                                            <img src="./Sinratoshop_files/product-11.jpg" class="pri-img" alt="">
                                            <img src="./Sinratoshop_files/product-3.jpg" class="sec-img" alt="">
                                        </a>
                                        <div class="box-label">
                                            <div class="label-product label_new">
                                                <span>new</span>
                                            </div>
                                        </div>
                                        <div class="action-links">
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Compare"><i class="lnr lnr-sync"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-caption">
                                        <div class="manufacture-product">
                                            <p><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html">apple</a></p>
                                        </div>
                                        <div class="product-name">
                                            <h4><a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">jony XB10 Portable  Wireless Speaker</a></h4>
                                        </div>
                                        <div class="ratings">
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span><i class="lnr lnr-star"></i></span>
                                        </div>
                                        <div class="price-box">
                                            <span class="regular-price">£30.31</span>
                                        </div>
                                        <button class="btn-cart" type="button">add to cart</button>
                                    </div>
                                </div> <!-- end single grid item -->
                                <div class="sinrato-list-item mb-30">
                                    <div class="sinrato-thumb">
                                        <a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">
                                            <img src="./Sinratoshop_files/product-7.jpg" class="pri-img" alt="">
                                            <img src="./Sinratoshop_files/product-1.jpg" class="sec-img" alt="">
                                        </a>
                                        <div class="box-label">
                                            <div class="label-product label_sale">
                                                <span>-10%</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="sinrato-list-item-content">
                                        <div class="manufacture-product">
                                            <span><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#">Canon</a></span>
                                        </div>
                                        <div class="sinrato-product-name">
                                            <h4><a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">Beats EP Wired Headphone-Black</a></h4>
                                        </div>
                                        <div class="sinrato-ratings mb-15">
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                        </div>
                                        <div class="sinrato-product-des">
                                            <p>Canon's press material for the EOS 5D states that it 'defines (a) new D-SLR category', while we're not typically too concerned with marketing talk this particular statement is clearly pretty accurate...</p>
                                        </div>
                                    </div>
                                    <div class="sinrato-box-action">
                                        <div class="price-box">
                                            <span class="regular-price"><span class="special-price">£50.00</span></span>
                                            <span class="old-price"><del>£60.00</del></span>
                                        </div>
                                        <button class="btn-cart" type="button">add to cart</button>
                                        <div class="action-links sinrat-list-icon">
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Compare"><i class="lnr lnr-sync"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                    </div>
                                </div> <!-- end single list item -->
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="product-item mb-30">
                                    <div class="product-thumb">
                                        <a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">
                                            <img src="./Sinratoshop_files/product-9.jpg" class="pri-img" alt="">
                                            <img src="./Sinratoshop_files/product-8.jpg" class="sec-img" alt="">
                                        </a>
                                        <div class="box-label">
                                            <div class="label-product label_new">
                                                <span>new</span>
                                            </div>
                                            <div class="label-product label_sale">
                                                <span>-10%</span>
                                            </div>
                                        </div>
                                        <div class="action-links">
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Compare"><i class="lnr lnr-sync"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-caption">
                                        <div class="manufacture-product">
                                            <p><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html">apple</a></p>
                                        </div>
                                        <div class="product-name">
                                            <h4><a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">jony XB10 Portable  Wireless Speaker</a></h4>
                                        </div>
                                        <div class="ratings">
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span><i class="lnr lnr-star"></i></span>
                                        </div>
                                        <div class="price-box">
                                            <span class="regular-price"><span class="special-price">£50.00</span></span>
                                            <span class="old-price"><del>£60.00</del></span>
                                        </div>
                                        <button class="btn-cart" type="button">add to cart</button>
                                    </div>
                                </div> <!-- end single grid item -->
                                <div class="sinrato-list-item mb-30">
                                    <div class="sinrato-thumb">
                                        <a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">
                                            <img src="./Sinratoshop_files/product-3.jpg" class="pri-img" alt="">
                                            <img src="./Sinratoshop_files/product-1.jpg" class="sec-img" alt="">
                                        </a>
                                        <div class="box-label">
                                            <div class="label-product label_new">
                                                <span>new</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="sinrato-list-item-content">
                                        <div class="manufacture-product">
                                            <span><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#">Canon</a></span>
                                        </div>
                                        <div class="sinrato-product-name">
                                            <h4><a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">Koss KPH7 Portable Headphone</a></h4>
                                        </div>
                                        <div class="sinrato-ratings mb-15">
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                        </div>
                                        <div class="sinrato-product-des">
                                            <p>Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge w..</p>
                                        </div>
                                    </div>
                                    <div class="sinrato-box-action">
                                        <div class="price-box">
                                            <span class="regular-price"><span class="special-price">£60.00</span></span>
                                            <span class="old-price"><del>£60.00</del></span>
                                        </div>
                                        <button class="btn-cart" type="button">add to cart</button>
                                        <div class="action-links sinrat-list-icon">
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Compare"><i class="lnr lnr-sync"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                    </div>
                                </div> <!-- end single list item -->
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="product-item mb-30">
                                    <div class="product-thumb">
                                        <a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">
                                            <img src="./Sinratoshop_files/product-12.jpg" class="pri-img" alt="">
                                            <img src="./Sinratoshop_files/product-13.jpg" class="sec-img" alt="">
                                        </a>
                                        <div class="box-label">
                                            <div class="label-product label_sale">
                                                <span>-10%</span>
                                            </div>
                                        </div>
                                        <div class="action-links">
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Compare"><i class="lnr lnr-sync"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-caption">
                                        <div class="manufacture-product">
                                            <p><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html">apple</a></p>
                                        </div>
                                        <div class="product-name">
                                            <h4><a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">jony XB10 Portable  Wireless Speaker</a></h4>
                                        </div>
                                        <div class="ratings">
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span><i class="lnr lnr-star"></i></span>
                                        </div>
                                        <div class="price-box">
                                            <span class="regular-price"><span class="special-price">£50.00</span></span>
                                        </div>
                                        <button class="btn-cart" type="button">add to cart</button>
                                    </div>
                                </div> <!-- end single grid item -->
                                <div class="sinrato-list-item mb-30">
                                    <div class="sinrato-thumb">
                                        <a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">
                                            <img src="./Sinratoshop_files/product-4.jpg" class="pri-img" alt="">
                                            <img src="./Sinratoshop_files/product-7.jpg" class="sec-img" alt="">
                                        </a>
                                        <div class="box-label">
                                            <div class="label-product label_new">
                                                <span>new</span>
                                            </div>
                                            <div class="label-product label_sale">
                                                <span>-10%</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="sinrato-list-item-content">
                                        <div class="manufacture-product">
                                            <span><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#">Canon</a></span>
                                        </div>
                                        <div class="sinrato-product-name">
                                            <h4><a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">Apple iPad with Retina Display</a></h4>
                                        </div>
                                        <div class="sinrato-ratings mb-15">
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                        </div>
                                        <div class="sinrato-product-des">
                                            <p>Canon's press material for the EOS 5D states that it 'defines (a) new D-SLR category', while we're not typically too concerned with marketing talk this particular statement is clearly pretty accurate...</p>
                                        </div>
                                    </div>
                                    <div class="sinrato-box-action">
                                        <div class="price-box">
                                            <span class="regular-price"><span class="special-price">£30.00</span></span>
                                            <span class="old-price"><del>£60.00</del></span>
                                        </div>
                                        <button class="btn-cart" type="button">add to cart</button>
                                        <div class="action-links sinrat-list-icon">
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Compare"><i class="lnr lnr-sync"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                    </div>
                                </div> <!-- end single list item -->
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="product-item mb-30">
                                    <div class="product-thumb">
                                        <a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">
                                            <img src="./Sinratoshop_files/product-14.jpg" class="pri-img" alt="">
                                            <img src="./Sinratoshop_files/product-13.jpg" class="sec-img" alt="">
                                        </a>
                                        <div class="box-label">
                                            <div class="label-product label_new">
                                                <span>new</span>
                                            </div>
                                        </div>
                                        <div class="action-links">
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Compare"><i class="lnr lnr-sync"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-caption">
                                        <div class="manufacture-product">
                                            <p><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html">apple</a></p>
                                        </div>
                                        <div class="product-name">
                                            <h4><a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">jony XB10 Portable  Wireless Speaker</a></h4>
                                        </div>
                                        <div class="ratings">
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span><i class="lnr lnr-star"></i></span>
                                        </div>
                                        <div class="price-box">
                                            <span class="regular-price">£30.31</span>
                                        </div>
                                        <button class="btn-cart" type="button">add to cart</button>
                                    </div>
                                </div> <!-- end single grid item -->
                                <div class="sinrato-list-item mb-30">
                                    <div class="sinrato-thumb">
                                        <a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">
                                            <img src="./Sinratoshop_files/product-5.jpg" class="pri-img" alt="">
                                            <img src="./Sinratoshop_files/product-7.jpg" class="sec-img" alt="">
                                        </a>
                                        <div class="box-label">
                                            <div class="label-product label_sale">
                                                <span>-10%</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="sinrato-list-item-content">
                                        <div class="manufacture-product">
                                            <span><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#">Canon</a></span>
                                        </div>
                                        <div class="sinrato-product-name">
                                            <h4><a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">Beats EP Wired Headphone-Black</a></h4>
                                        </div>
                                        <div class="sinrato-ratings mb-15">
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                        </div>
                                        <div class="sinrato-product-des">
                                            <p>Intel Core 2 Duo processor Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.1GB memory, larger hard drives The new MacBook now c..</p>
                                        </div>
                                    </div>
                                    <div class="sinrato-box-action">
                                        <div class="price-box">
                                            <span class="regular-price"><span class="special-price">£12.00</span></span>
                                        </div>
                                        <button class="btn-cart" type="button">add to cart</button>
                                        <div class="action-links sinrat-list-icon">
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Compare"><i class="lnr lnr-sync"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                    </div>
                                </div> <!-- end single list item -->
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="product-item mb-30">
                                    <div class="product-thumb">
                                        <a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">
                                            <img src="./Sinratoshop_files/product-2.jpg" class="pri-img" alt="">
                                            <img src="./Sinratoshop_files/product-1.jpg" class="sec-img" alt="">
                                        </a>
                                        <div class="box-label">
                                            <div class="label-product label_new">
                                                <span>new</span>
                                            </div>
                                        </div>
                                        <div class="action-links">
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Compare"><i class="lnr lnr-sync"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-caption">
                                        <div class="manufacture-product">
                                            <p><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html">apple</a></p>
                                        </div>
                                        <div class="product-name">
                                            <h4><a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">jony XB10 Portable  Wireless Speaker</a></h4>
                                        </div>
                                        <div class="ratings">
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span><i class="lnr lnr-star"></i></span>
                                        </div>
                                        <div class="price-box">
                                            <span class="regular-price">£30.31</span>
                                        </div>
                                        <button class="btn-cart" type="button">add to cart</button>
                                    </div>
                                </div> <!-- end single grid item -->
                                <div class="sinrato-list-item mb-30">
                                    <div class="sinrato-thumb">
                                        <a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">
                                            <img src="./Sinratoshop_files/product-12.jpg" class="pri-img" alt="">
                                            <img src="./Sinratoshop_files/product-9.jpg" class="sec-img" alt="">
                                        </a>
                                        <div class="box-label">
                                            <div class="label-product label_sale">
                                                <span>-10%</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="sinrato-list-item-content">
                                        <div class="manufacture-product">
                                            <span><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#">Canon</a></span>
                                        </div>
                                        <div class="sinrato-product-name">
                                            <h4><a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">Beats EP Wired Headphone-Black</a></h4>
                                        </div>
                                        <div class="sinrato-ratings mb-15">
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                        </div>
                                        <div class="sinrato-product-des">
                                            <p>Canon's press material for the EOS 5D states that it 'defines (a) new D-SLR category', while we're not typically too concerned with marketing talk this particular statement is clearly pretty accurate...</p>
                                        </div>
                                    </div>
                                    <div class="sinrato-box-action">
                                        <div class="price-box">
                                            <span class="regular-price"><span class="special-price">£50.00</span></span>
                                            <span class="old-price"><del>£60.00</del></span>
                                        </div>
                                        <button class="btn-cart" type="button">add to cart</button>
                                        <div class="action-links sinrat-list-icon">
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Compare"><i class="lnr lnr-sync"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                    </div>
                                </div> <!-- end single list item -->
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="product-item mb-30">
                                    <div class="product-thumb">
                                        <a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">
                                            <img src="./Sinratoshop_files/product-11.jpg" class="pri-img" alt="">
                                            <img src="./Sinratoshop_files/product-4.jpg" class="sec-img" alt="">
                                        </a>
                                        <div class="box-label">
                                            <div class="label-product label_new">
                                                <span>new</span>
                                            </div>
                                            <div class="label-product label_sale">
                                                <span>-10%</span>
                                            </div>
                                        </div>
                                        <div class="action-links">
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Compare"><i class="lnr lnr-sync"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-caption">
                                        <div class="manufacture-product">
                                            <p><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html">apple</a></p>
                                        </div>
                                        <div class="product-name">
                                            <h4><a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">jony XB10 Portable  Wireless Speaker</a></h4>
                                        </div>
                                        <div class="ratings">
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span><i class="lnr lnr-star"></i></span>
                                        </div>
                                        <div class="price-box">
                                            <span class="regular-price"><span class="special-price">£50.00</span></span>
                                            <span class="old-price"><del>£60.00</del></span>
                                        </div>
                                        <button class="btn-cart" type="button">add to cart</button>
                                    </div>
                                </div> <!-- end single grid item -->
                                <div class="sinrato-list-item mb-30">
                                    <div class="sinrato-thumb">
                                        <a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">
                                            <img src="./Sinratoshop_files/product-7.jpg" class="pri-img" alt="">
                                            <img src="./Sinratoshop_files/product-3.jpg" class="sec-img" alt="">
                                        </a>
                                        <div class="box-label">
                                            <div class="label-product label_new">
                                                <span>new</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="sinrato-list-item-content">
                                        <div class="manufacture-product">
                                            <span><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#">Canon</a></span>
                                        </div>
                                        <div class="sinrato-product-name">
                                            <h4><a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">Koss KPH7 Portable Headphone</a></h4>
                                        </div>
                                        <div class="sinrato-ratings mb-15">
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                        </div>
                                        <div class="sinrato-product-des">
                                            <p>Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge w..</p>
                                        </div>
                                    </div>
                                    <div class="sinrato-box-action">
                                        <div class="price-box">
                                            <span class="regular-price"><span class="special-price">£60.00</span></span>
                                            <span class="old-price"><del>£60.00</del></span>
                                        </div>
                                        <button class="btn-cart" type="button">add to cart</button>
                                        <div class="action-links sinrat-list-icon">
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Compare"><i class="lnr lnr-sync"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                    </div>
                                </div> <!-- end single list item -->
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="product-item mb-30">
                                    <div class="product-thumb">
                                        <a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">
                                            <img src="./Sinratoshop_files/product-13.jpg" class="pri-img" alt="">
                                            <img src="./Sinratoshop_files/product-7.jpg" class="sec-img" alt="">
                                        </a>
                                        <div class="box-label">
                                            <div class="label-product label_sale">
                                                <span>-10%</span>
                                            </div>
                                        </div>
                                        <div class="action-links">
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Compare"><i class="lnr lnr-sync"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-caption">
                                        <div class="manufacture-product">
                                            <p><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html">apple</a></p>
                                        </div>
                                        <div class="product-name">
                                            <h4><a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">jony XB10 Portable  Wireless Speaker</a></h4>
                                        </div>
                                        <div class="ratings">
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span><i class="lnr lnr-star"></i></span>
                                        </div>
                                        <div class="price-box">
                                            <span class="regular-price"><span class="special-price">£50.00</span></span>
                                        </div>
                                        <button class="btn-cart" type="button">add to cart</button>
                                    </div>
                                </div> <!-- end single grid item -->
                                <div class="sinrato-list-item mb-30">
                                    <div class="sinrato-thumb">
                                        <a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">
                                            <img src="./Sinratoshop_files/product-10.jpg" class="pri-img" alt="">
                                            <img src="./Sinratoshop_files/product-7.jpg" class="sec-img" alt="">
                                        </a>
                                        <div class="box-label">
                                            <div class="label-product label_new">
                                                <span>new</span>
                                            </div>
                                            <div class="label-product label_sale">
                                                <span>-10%</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="sinrato-list-item-content">
                                        <div class="manufacture-product">
                                            <span><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#">Canon</a></span>
                                        </div>
                                        <div class="sinrato-product-name">
                                            <h4><a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">Apple iPad with Retina Display</a></h4>
                                        </div>
                                        <div class="sinrato-ratings mb-15">
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                        </div>
                                        <div class="sinrato-product-des">
                                            <p>Canon's press material for the EOS 5D states that it 'defines (a) new D-SLR category', while we're not typically too concerned with marketing talk this particular statement is clearly pretty accurate...</p>
                                        </div>
                                    </div>
                                    <div class="sinrato-box-action">
                                        <div class="price-box">
                                            <span class="regular-price"><span class="special-price">£30.00</span></span>
                                            <span class="old-price"><del>£60.00</del></span>
                                        </div>
                                        <button class="btn-cart" type="button">add to cart</button>
                                        <div class="action-links sinrat-list-icon">
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Compare"><i class="lnr lnr-sync"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                    </div>
                                </div> <!-- end single list item -->
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="product-item mb-30">
                                    <div class="product-thumb">
                                        <a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">
                                            <img src="./Sinratoshop_files/product-10.jpg" class="pri-img" alt="">
                                            <img src="./Sinratoshop_files/product-8.jpg" class="sec-img" alt="">
                                        </a>
                                        <div class="box-label">
                                            <div class="label-product label_new">
                                                <span>new</span>
                                            </div>
                                        </div>
                                        <div class="action-links">
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Compare"><i class="lnr lnr-sync"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                    </div>
                                    <div class="product-caption">
                                        <div class="manufacture-product">
                                            <p><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html">apple</a></p>
                                        </div>
                                        <div class="product-name">
                                            <h4><a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">jony XB10 Portable  Wireless Speaker</a></h4>
                                        </div>
                                        <div class="ratings">
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span class="yellow"><i class="lnr lnr-star"></i></span>
                                            <span><i class="lnr lnr-star"></i></span>
                                        </div>
                                        <div class="price-box">
                                            <span class="regular-price">£30.31</span>
                                        </div>
                                        <button class="btn-cart" type="button">add to cart</button>
                                    </div>
                                </div> <!-- end single grid item -->
                                <div class="sinrato-list-item mb-30">
                                    <div class="sinrato-thumb">
                                        <a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">
                                            <img src="./Sinratoshop_files/product-13.jpg" class="pri-img" alt="">
                                            <img src="./Sinratoshop_files/product-12.jpg" class="sec-img" alt="">
                                        </a>
                                        <div class="box-label">
                                            <div class="label-product label_sale">
                                                <span>-10%</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="sinrato-list-item-content">
                                        <div class="manufacture-product">
                                            <span><a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#">Canon</a></span>
                                        </div>
                                        <div class="sinrato-product-name">
                                            <h4><a href="http://demo.devitems.com/sinrato-v5/sinrato/product-details.html">Beats EP Wired Headphone-Black</a></h4>
                                        </div>
                                        <div class="sinrato-ratings mb-15">
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                            <span><i class="fa fa-star"></i></span>
                                        </div>
                                        <div class="sinrato-product-des">
                                            <p>Intel Core 2 Duo processor Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.1GB memory, larger hard drives The new MacBook now c..</p>
                                        </div>
                                    </div>
                                    <div class="sinrato-box-action">
                                        <div class="price-box">
                                            <span class="regular-price"><span class="special-price">£12.00</span></span>
                                        </div>
                                        <button class="btn-cart" type="button">add to cart</button>
                                        <div class="action-links sinrat-list-icon">
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Wishlist"><i class="lnr lnr-heart"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Compare"><i class="lnr lnr-sync"></i></a>
                                            <a href="http://demo.devitems.com/sinrato-v5/sinrato/shop-grid-left-sidebar.html#" title="Quick view" data-target="#quickk_view" data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                    </div>
                                </div> <!-- end single list item -->
                            </div>
                        </div>
                        <div class="pagination-area pt-35 pb-20">
                            <p>Showing 1 to 9 of 9 (1 Pages)</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- shop page main wrapper end -->

    <!-- scroll to top -->
    <div class="scroll-top not-visible">
        <i class="fa fa-angle-up"></i>
    </div> <!-- /End Scroll to Top -->

    @include('mailchimp::mailchimp')
@endsection