@extends('layouts.front.app')

@section('content')
    <div class="breadcrumb-area mb-60">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-wrap">
                        <nav aria-label="breadcrumb">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a
                                            href="http://demo.devitems.com/sinrato-v5/sinrato/index.html">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Checkout</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Start of Checkout Wrapper -->
    <div class="checkout-wrapper pt-10 pb-70">
        <div class="container">
            <div class="row">
                <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                    <main id="primary" class="site-main">
                        @if(!is_null($rates))
                            <div class="row">
                                <div class="col-md-12 ">
                                    <legend><i class="fa fa-truck"></i> Courier</legend>
                                    <ul class="list-unstyled">
                                        @foreach($rates as $rate)
                                            <li class="col-md-4">
                                                <label class="radio">
                                                    <input type="radio" name="rate" data-fee="{{ $rate->cost }}"
                                                           value="{{ $rate->id }}">
                                                </label>
                                                <img src="{{asset('/new-theme/images/shipping-icon.png')}}"
                                                     style="    height: 50px;" alt="">
                                                {{ $rate->name }} <br>${{ $rate->cost }}<br/>
                                                {{--{{ $rate->servicelevel->name }}--}}
                                            </li>
                                        @endforeach
                                    </ul>
                                </div>
                            </div> <br>
                        @endif
                        <div>


                            @if(!$products->isEmpty())
                                <div class="row">

                                </div>
                                <div class="checkout-area">
                                    <div class="row">
                                        <div class="col-12 col-sm-12 col-md-6 col-lg-7  order-2 order-md-1">
                                            <div class="checkout-form">
                                                <div class="section-title left-aligned">
                                                    <h3><i class="fa fa-home"></i> Billing Details</h3>
                                                </div>
                                                <p>if you want to curier in another address then add address. <a
                                                            href="">Click here...</a></p>

                                                    <div class="box-body">
                                                        @include('layouts.errors-and-messages')
                                                    </div>
                                                    @if(count($addresses) > 0)
                                                        @if(isset($addresses))
                                                            <div class="row">
                                                                <div class="col-md-12">

                                                                    <div class="row">

                                                                        <div class="col-md-2 col-2">Alias</div>
                                                                        <div class="col-md-4 col-5">Address</div>
                                                                        <div class="col-md-3 col-2">Billing Address</div>
                                                                        <div class="col-md-3 col-3">Delivery Address</div>
                                                                    </div>


                                                                        @foreach($addresses as $key => $address)
                                                                        <div class="row">
                                                                                <div class="col-md-2 col-2">{{ $address->alias }}</div>
                                                                                <div class="col-md-4 col-5">
                                                                                    {{ $address->address_1 }} {{ $address->address_2 }}
                                                                                    <br/>
                                                                                    @if(!is_null($address->province))
                                                                                        {{ $address->city }} {{ $address->province->name }}
                                                                                        <br/>
                                                                                    @endif
                                                                                    {{ $address->city }} {{ $address->state_code }}
                                                                                    <br>
                                                                                    {{ $address->country->name }} {{ $address->zip }}
                                                                                </div>
                                                                                <div class="col-md-3 col-2">
                                                                                    <label class="col-md-6 col-md-offset-3">
                                                                                        <input
                                                                                                type="radio"
                                                                                                value="{{ $address->id }}"
                                                                                                name="billing_address"
                                                                                                @if($billingAddress->id == $address->id) checked="checked" @endif>
                                                                                    </label>
                                                                                </div>
                                                                                <div class="col-md-3 col-3">
                                                                                    @if($billingAddress->id == $address->id)
                                                                                        <label for="sameDeliveryAddress">
                                                                                            <input type="checkbox"
                                                                                                   id="sameDeliveryAddress"
                                                                                                   checked="checked">
                                                                                            Same as
                                                                                            billing
                                                                                        </label>
                                                                                    @endif
                                                                                </div>
                                                                        </div>
                                                                        @endforeach



                                                                </div>
                                                            </div>
                                                        @endif


                                                    @else
                                                        <p class="alert alert-danger"><a
                                                                    href="{{ route('customer.address.create', [$customer->id]) }}">No
                                                                address found. You need to create an address first
                                                                here.</a></p>
                                                    @endif


                                            </div> <!-- end of checkout-form -->
                                            <div style="height: 20px;"></div>
                                            <div class="row d-none" id="payment_methood">
                                                <div class="col-md-12">
                                                    <legend><i class="fa fa-credit-card"></i> Payment</legend>
                                                    @if(isset($payments) && !empty($payments))
                                                        <div class="row" style="background: #7dd794;padding: 10px;">
                                                            <div class="col-md-2 col-sm-12 text-center">Name</div>
                                                            <div class="col-md-5 col-sm-12 text-center">Description
                                                            </div>
                                                            <div class="col-md-5 col-sm-12 text-center">Choose payment
                                                            </div>
                                                        </div>

                                                        @foreach($payments as $payment)
                                                            <div class="row p-2">

                                                                @include('layouts.front.payment-options', compact('payment', 'total', 'shipment'))</div>
                                                        @endforeach

                                                    @else
                                                        <p class="alert alert-danger">No payment method set</p>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-12 col-md-6 col-lg-5 order-1">
                                            <div class="order-summary">
                                                <div class="section-title left-aligned">
                                                    <h3>Your Order</h3>
                                                </div>
                                            @include('front.products.product-list-table', compact('products'))
                                            <!-- end of product-container -->
                                            </div> <!-- end of order-summary -->
                                        </div>
                                    </div> <!-- end of row -->
                                </div>
                            @else
                                <div class="row">
                                    <div class="col-md-12">
                                        <p class="alert alert-warning">No products in cart yet. <a
                                                    href="{{ route('home') }}">Show now!</a></p>
                                    </div>
                                </div>
                            @endif
                        </div>

                        <!-- end of checkout-area -->
                    </main> <!-- end of #primary -->
                </div>
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div>
    <!-- End of Checkout Wrapper -->
@endsection