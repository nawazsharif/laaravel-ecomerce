@extends('layouts.front.app')

@section('content')

    <div>
        @if(!$cartItems->isEmpty())

            <div class="box-body">
                @include('layouts.errors-and-messages')
            </div>

            <div class="shopping-cart-wrapper pb-70">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                            <main id="primary" class="site-main">
                                <div class="shopping-cart">
                                    <div class="row">
                                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                            <div class="section-title">
                                                <h3>Shopping Cart</h3>
                                            </div>

                                            <div class="table-responsive">


                                                @include('layouts.front.shop-cart-list-table',['cartItems'=>$cartItems])

                                                <div class="cart-accordion-wrapper mt-full mt-40">
                                                    <h3>What would you like to do next?</h3>
                                                    <p>Choose if you have a discount code or reward points you want to use or would like to estimate your delivery cost.</p>
                                                    <div id="cart_accordion" class="mt-4" role="tablist">
                                                        <div class="card">
                                                            <div class="card-header" role="tab" id="headingCoupon">
                                                                <h4 class="mb-0">
                                                                    <a data-toggle="collapse" href="#collapseCoupon" aria-expanded="false" aria-controls="collapseCoupon" class="collapsed">Use Coupon Code<i class="ion ion-ios-arrow-down"></i></a>
                                                                </h4>
                                                            </div>
                                                            <div id="collapseCoupon" class="collapse" role="tabpanel" aria-labelledby="headingCoupon" data-parent="#cart_accordion" style="">
                                                                <div class="card-body">
                                                                    <div class="input-group">
                                                                        <label class="col-12 col-sm-12 col-md-3" for="input-coupon">Enter your coupon here</label>
                                                                        <div class="col-12 col-sm-12 col-md-9">
                                                                            <div class="input-group">
                                                                                <input type="text" name="coupon" value="" placeholder="Enter your coupon here" id="input-coupon" class="form-control">
                                                                                <input type="button" value="Apply Coupon" id="button-coupon" class="btn btn-secondary cart-pg">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>


                                                        <div class="card">
                                                            <div class="card-header" role="tab" id="headingGift">
                                                                <h4 class="mb-0">
                                                                    <a class="collapsed" data-toggle="collapse" href="#collapseGift" aria-expanded="false" aria-controls="collapseGift">Use Gift Certificate<i class="ion ion-ios-arrow-down"></i></a>
                                                                </h4>
                                                            </div>
                                                            <div id="collapseGift" class="collapse" role="tabpanel" aria-labelledby="headingGift" data-parent="#cart_accordion" style="">
                                                                <div class="card-body">
                                                                    <div class="input-group">
                                                                        <label class="col-12 col-sm-12 col-md-3" for="input-voucher">Enter your gift certificate code here</label>
                                                                        <div class="col-12 col-sm-12 col-md-9">
                                                                            <div class="input-group">
                                                                                <input type="text" name="voucher" value="" placeholder="Enter your gift certificate code here" id="input-voucher" class="form-control">
                                                                                <input type="button" value="Apply Gift Certificate" id="button-boucher" class="btn btn-secondary cart-pg">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="cart-amount-wrapper">
                                                    <div class="row">
                                                        <div class="col-12 col-sm-12 col-md-4 offset-md-8">
                                                            <table class="table table-bordered">
                                                                <tbody>
                                                                <tr>
                                                                    <td><strong>Sub-Total:</strong></td>
                                                                    <td>{{config('cart.currency')}} {{ number_format($subtotal, 2, '.', ',') }}</td>
                                                                </tr>
                                                                {{--<tr>--}}
                                                                    {{--<td><strong>Shipping:</strong></td>--}}
                                                                    {{--<td>--}}
                                                                        {{--<span id="shipping-cost-span" class="color-primary">{{config('cart.currency')}} 0 </span>--}}
                                                                    {{--</td>--}}
                                                                {{--</tr>--}}
                                                                {{--<tr>--}}
                                                                    {{--<td><strong>Tax:</strong></td>--}}
                                                                    {{--<td>--}}
                                                                        {{--<span class="color-primary">{{config('cart.currency')}} {{ number_format($tax, 2) }}</span>--}}
                                                                    {{--</td>--}}
                                                                {{--</tr>--}}
                                                                <tr>
                                                                    <td><strong>Total:</strong></td>
                                                                    <td>
                                                                        <div style="display: -webkit-inline-box;">
                                                                            <span class="color-primary" style="margin-right: 10px;" >{{config('cart.currency')}}</span>
                                                                        <span id="shop-cart-total-price">{{ number_format($total, 2, '.', ',') }}</span>

                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="cart-button-wrapper d-flex justify-content-between mt-4">
                                                    <a href="{{ route('home') }}" class="btn btn-secondary">Continue Shopping</a>
                                                    <a href="{{ route('checkout.index') }}" class="btn btn-secondary dark align-self-end">Checkout</a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </main>
                        </div>
                    </div>
                </div>
            </div>


        @else
            <div class="row">
                <div class="col-md-12">
                    <p class="alert alert-warning">No products in cart yet. <a href="{{ route('home') }}">Shop now!</a>
                    </p>
                </div>
            </div>
        @endif
    </div>
@endsection
@section('css')
    <style type="text/css">
        .product-description {
            padding: 10px 0;
        }

        .product-description p {
            line-height: 18px;
            font-size: 14px;
        }

        .product-qty {
            width: 130px !important;
        }

        .product-qty button.btn.btn-primary {
            position: relative;
            top: -39px;
            right: -60px;
            z-index: 1;
        }

        button.btn.btn-danger {
            position: relative;
            top:0px;
            right: -52px;
        }
        .table-responsive{
            overflow-x: inherit;
        }
    </style>
@endsection
