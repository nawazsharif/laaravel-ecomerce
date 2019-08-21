<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{ config('app.name') }}</title>
    <title>Laracom - Laravel FREE E-Commerce Software</title>
    <meta name="description" content="Modern open-source e-commerce framework for free">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="tags"
          content="modern, opensource, open-source, e-commerce, framework, free, laravel, php, php7, symfony, shop, shopping, responsive, fast, software, blade, cart, test driven, adminlte, storefront">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
          integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">


    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="{{ asset('new-theme/css/style5.css') }}">
    <link rel="stylesheet"
          href="{{asset('https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css')}}">
    <!-- Font Awesome JS -->
    {{--<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"--}}
    {{--integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ"--}}
    {{--crossorigin="anonymous"></script>--}}
    {{--<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"--}}
    {{--integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY"--}}
    {{--crossorigin="anonymous"></script>--}}

    {{--<link rel="stylesheet" href="{{ asset('new-theme/css/font-awesome.min.css') }}">--}}
    <link href="{{ asset('new-theme/css/linear-icon.css') }}" rel="stylesheet">
    <link href="{{ asset('https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css') }}"
          rel="stylesheet">
    <link href="{{ asset('https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css') }}"
          rel="stylesheet">
    {{--<link rel="stylesheet" href="{{ asset('new-theme/css/slicknav.min.css') }}"/>--}}
    <link href="{{ asset('new-theme/css/test.css') }}" rel="stylesheet">
    {{--<link href="{{ asset('new-theme/css/style.css') }}" rel="stylesheet">--}}

    {{--<link href="{{ asset('css/style.min.css') }}" rel="stylesheet">--}}

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="{{ asset('https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js')}}"></script>
    <script src="{{ asset('https://oss.maxcdn.com/respond/1.4.2/respond.min.js')}}"></script>
    <![endif]-->
    <link rel="apple-touch-icon" sizes="57x57" href="{{ asset('favicons/apple-icon-57x57.png')}}">
    <link rel="apple-touch-icon" sizes="60x60" href="{{ asset('favicons/apple-icon-60x60.png')}}">
    <link rel="apple-touch-icon" sizes="72x72" href="{{ asset('favicons/apple-icon-72x72.png')}}">
    <link rel="apple-touch-icon" sizes="76x76" href="{{ asset('favicons/apple-icon-76x76.png')}}">
    <link rel="apple-touch-icon" sizes="114x114" href="{{ asset('favicons/apple-icon-114x114.png')}}">
    <link rel="apple-touch-icon" sizes="120x120" href="{{ asset('favicons/apple-icon-120x120.png')}}">
    <link rel="apple-touch-icon" sizes="144x144" href="{{ asset('favicons/apple-icon-144x144.png')}}">
    <link rel="apple-touch-icon" sizes="152x152" href="{{ asset('favicons/apple-icon-152x152.png')}}">
    <link rel="apple-touch-icon" sizes="180x180" href="{{ asset('favicons/apple-icon-180x180.png')}}">
    <link rel="icon" type="image/png" sizes="192x192" href="{{ asset('favicons/android-icon-192x192.png')}}">
    <link rel="icon" type="image/png" sizes="32x32" href="{{ asset('favicons/favicon-32x32.png')}}">
    <link rel="icon" type="image/png" sizes="96x96" href="{{ asset('favicons/favicon-96x96.png')}}">
    <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('favicons/favicon-16x16.png')}}">
    <link rel="manifest" href="{{ asset('favicons/manifest.json')}}">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="{{ asset('favicons/ms-icon-144x144.png')}}">
    <meta name="theme-color" content="#ffffff">
    @yield('css')
    <meta property="og:url" content="{{ request()->url() }}"/>
    @yield('og')
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="{{ asset('https://code.jquery.com/jquery-3.3.1.min.js') }}"></script>
    {{--<script src="{{ asset('https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.3/jquery.min.js') }}"></script>--}}
</head>
<body>
<noscript>
    <p class="alert alert-danger">
        You need to turn on your javascript. Some functionality will not work if this is disabled.
        <a href="https://www.enable-javascript.com/" target="_blank">Read more</a>
    </p>
</noscript>
<header class="nav_style">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3 col-2 d-inline-flex">
                <button type="button" id="sidebarCollapse" class="navbar-btn">
                    <span></span>
                    <span></span>
                    <span></span>
                </button>
                <a class="navbar-brand d-none d-md-block" href="/">Taza Fal</a>
            </div>
            <div class="col-md-6 col-8 searchbar">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search this blog">
                    <div class="input-group-append">
                        <button class="btn btn-secondary" type="button">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-2 ml-auto">
                <ul class="hidden-sm hidden-xs top-nav-option d-none d-md-inline-flex">
                    <li>Need Help<span class="questionIcon">?</span></li>
                    <li id="cart" class="menubar-cart">
                        <a href="{{ route('cart.index') }}" title="View Cart" class="awemenu-icon menu-shopping-cart">
                            Cart <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <span class="cart-number">{{ $cartCount }}</span>
                        </a>
                    </li>
                    <li style="border-right: none;" class="account">Account
                        <div class="account-dropdown">
                            <ul>
                                @if(auth()->check())
                                    <li><a href="{{ route('accounts', ['tab' => 'profile']) }}"><i
                                                    class="fa fa-home"></i> My Account</a></li>
                                    <li><a href="{{ route('logout') }}"><i class="fa fa-sign-out"></i> Logout</a></li>
                                @else
                                    <li><a href="{{ route('login') }}"> <i class="fa fa-lock"></i> Login</a></li>
                                    <li><a href="{{ route('register') }}"> <i class="fa fa-sign-in"></i> Register</a>
                                    </li>
                                @endif
                            </ul>
                        </div>
                    </li>

                </ul>


            </div>
        </div>


    </div>
</header>


<div class="dropdown credential d-block d-md-none">
    <ul>
        {{--<li>--}}
        {{--<a href="cart">cart</a>--}}
        {{--</li>--}}
        <li>
            <button class="btn" id="credential">
                :
            </button>
            <div class="dropdown_content hide" id="dropdown_content">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <a class="dropdown-item" href="#">Something else here</a>
            </div>
        </li>
    </ul>


</div>
<div class="wrapper">
    {{--@php(dd($categories))--}}
    <nav id="sidebar" class="active">
        <!-- <div class="sidebar-header">
            <h3>Bootstrap Sidebar</h3>
        </div> -->
        <ul class="list-unstyled components">
            <li class="">
                <a href="/">Home</a>
            </li>

            <li class="">
                <a href="/">Cart</a>
            </li>
            <li class="">
                <a href="{{route('contact')}}">Contact</a>
            </li>
            <hr>
            <li>
                {{--<a href="#category" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Category</a>--}}
                @include('layouts.front.side-navbar')
            </li>
        </ul>
    </nav>
    <div id="content" class="slide">
        @yield('content')
        @include('layouts.front.footer')
    </div>

</div>

{{--<script src="{{ asset('js/front.min.js') }}"></script>--}}
{{--<script src="{{ asset('js/custom.js') }}"></script>--}}
@yield('js')
</body>
</html>