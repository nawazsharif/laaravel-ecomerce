@if(!$products->isEmpty())
    <div class="product-container">
        @foreach($cartItems as $cartItem)
            <div class="product-list">
                <div class="product-inner media align-items-center">
                    <div class="product-image mr-4 mr-sm-5 mr-md-4 mr-lg-5">
                        <a href="{{ route('front.get.product', [$cartItem->product->slug]) }}">
                            @if(isset($cartItem->cover))
                                <img src="{{$cartItem->cover}}"
                                     alt="{{ $cartItem->name }}"
                                     class="img-responsive img-thumbnail">
                            @else
                                <img src="https://placehold.it/120x120" alt=""
                                     class="img-responsive img-thumbnail">
                            @endif
                            {{--<img src="./aaa_files/product-13.jpg" alt="Compete Track Tote" title="Compete Track Tote">--}}
                        </a>
                    </div>
                    <div class="media-body">
                        <h5>{{ $cartItem->name }}</h5>
                        <p class="product-quantity">Quantity: {{ $cartItem->qty }}</p>
                        <p class="product-final-price">{{ number_format($cartItem->price, 2) }}</p>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
    <div class="order-review">
        <div class="table-responsive">
            <table class="table table-bordered">
                <tbody>
                <tr class="cart-subtotal">
                    <th>Subtotal</th>
                    <td class="text-center">{{config('cart.currency')}} {{ number_format($subtotal, 2, '.', ',') }}</td>
                </tr>
                <tr class="cart-subtotal">
                    <th>Shipping</th>
                    <td class="text-center">{{config('cart.currency')}} <span id="shippingFee">{{ number_format(0, 2) }}</td>
                </tr>
                <tr class="order-total">
                    <th>Total</th>
                    <td class="text-center" id="checkout-total-price"><strong>{{config('cart.currency')}} <span id="grandTotal" data-total="{{ $total }}">{{ number_format($total, 2, '.', ',') }}</strong></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
@endif
<script type="text/javascript">
    $(document).ready(function () {
        let courierRadioBtn = $('input[name="rate"]');
        courierRadioBtn.click(function () {
            $('#shippingFee').text($(this).data('fee'));
            let totalElement = $('span#grandTotal');
            let shippingFee = $(this).data('fee');
            let total = totalElement.data('total');
            let grandTotal = parseFloat(shippingFee) + parseFloat(total);
            totalElement.html(grandTotal.toFixed(2));
        });
    });
</script>