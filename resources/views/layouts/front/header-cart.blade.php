
{{--<ul class="mini-cart-drop-down ha-dropdown">--}}
    {{--@if(isset($shippingFee) && $shippingFee != 0)--}}
        {{--<tr>--}}
            {{--<td class="bg-warning">Shipping</td>--}}
            {{--<td class="bg-warning"></td>--}}
            {{--<td class="bg-warning"></td>--}}
            {{--<td class="bg-warning"></td>--}}
            {{--<td class="bg-warning">{{config('cart.currency')}} {{ $shippingFee }}</td>--}}
        {{--</tr>--}}
    {{--@endif--}}
    {{--<li class="mb-30">--}}
        {{--<div class="cart-img">--}}
            {{--<a href="product-details.html"><img alt="" src="assets/img/cart/cart-1.jpg"></a>--}}
        {{--</div>--}}


        {{--<div class="cart-info">--}}
            {{--<h4><a href="product-details.html">Koss Porta Pro On Ear Headphones </a>--}}
            {{--</h4>--}}
            {{--<span> <span>1 x </span>£165.00</span>--}}
        {{--</div>--}}
        {{--<div class="del-icon">--}}
            {{--<i class="fa fa-times-circle"></i>--}}
        {{--</div>--}}
    {{--</li>--}}
    {{--<li>--}}
        {{--<div class="subtotal-text">Sub-total:</div>--}}
        {{--<div class="subtotal-price">£48.94</div>--}}
    {{--</li>--}}
    {{--<li>--}}
        {{--<div class="subtotal-text">Eco Tax (-2.00):</div>--}}
        {{--<div class="subtotal-price">£1.51</div>--}}
    {{--</li>--}}
    {{--<li>--}}
        {{--<div class="subtotal-text">Vat (20%):</div>--}}
        {{--<div class="subtotal-price">£9.79</div>--}}
    {{--</li>--}}
    {{--<li>--}}
        {{--<div class="subtotal-text">Total:</div>--}}
        {{--<div class="subtotal-price"><span>£60.24</span></div>--}}
    {{--</li>--}}
    {{--<li class="mt-30">--}}
        {{--<a class="cart-button" href="{{ route('cart.index') }}">view cart</a>--}}
    {{--</li>--}}
    {{--<li>--}}
        {{--<a class="cart-button" href="">checkout</a>--}}
    {{--</li>--}}
{{--</ul>--}}


<!-- Collect the nav links, forms, and other content for toggling -->
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    @include('layouts.front.category-nav')
    <ul class="nav navbar-nav navbar-right">
        @if(auth()->check())
            <li class="visible-xs"><a href="{{ route('accounts', ['tab' => 'profile']) }}"><i class="fa fa-home"></i> My Account</a></li>
            <li class="visible-xs"><a href="{{ route('logout') }}"><i class="fa fa-sign-out"></i> Logout</a></li>
        @else
            <li class="visible-xs"><a href="{{ route('login') }}"> <i class="fa fa-lock"></i> Login</a></li>
            <li class="visible-xs"><a href="{{ route('register') }}"> <i class="fa fa-sign-in"></i> Register</a></li>
        @endif
        <li id="cart" class="menubar-cart visible-xs">
            <a href="{{ route('cart.index') }}" title="View Cart" class="awemenu-icon menu-shopping-cart">
                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                <span class="cart-number">{{ $cartCount }}</span>
            </a>
        </li>
        <li>
            <!-- search form -->
            <form action="{{route('search.product')}}" method="GET" class="form-inline" style="margin: 15px 0 0;">
                <div class="input-group">
                    <input type="text" name="q" class="form-control" placeholder="Search..." value="{!! request()->input('q') !!}">
                    <span class="input-group-btn">
                        <button type="submit" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i> Search</button>
                    </span>
                </div>
            </form>
            <!-- /.search form -->
        </li>
    </ul>
</div><!-- /.navbar-collapse -->