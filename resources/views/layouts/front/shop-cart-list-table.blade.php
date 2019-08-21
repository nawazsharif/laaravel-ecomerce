<table class="table table-bordered">
    <thead>
    <td>Image</td>
    <td>Product Name</td>
    <td>Quantity</td>
    <td>Unit Price</td>
    {{--<td>Total</td>--}}
    </thead>
    <tbody>
    @foreach($cartItems as $cartItem)
        <tr>
            <td>
                <a href="{{ route('front.get.product', [$cartItem->product->slug]) }}">
                    @if(isset($cartItem->cover))
                        <img src="{{$cartItem->cover}}"
                             alt="{{ $cartItem->name }}"
                             class="img-responsive img-thumbnail">
                    @else
                        <img src="https://placehold.it/120x120" alt=""
                             class="img-responsive img-thumbnail">
                    @endif
                </a>
            </td>
            <td>
                <a href="{{ route('front.get.product', [$cartItem->product->slug]) }}">{{ $cartItem->name }}</a>
                @if($cartItem->options->has('combination'))
                    @foreach($cartItem->options->combination as $option)
                        <small class="label label-primary">{{$option['value']}}</small>
                    @endforeach
                @endif
                <span>
                                            {!! $cartItem->product->description !!}
                                        </span>
            </td>
            <td>

                <div class="input-group btn-block">
                    <form action="{{ route('cart.update', $cartItem->rowId) }}"
                          class="form-inline" method="post">
                        {{ csrf_field() }}
                        <input type="hidden" name="_method" value="put">
                        <div class="product-qty mr-3">
                            <input type="text" name="quantity"
                                   value="{{ $cartItem->qty }}">
                            {{--<span class="dec qtybtn"><i class="fa fa-minus"></i></span>--}}
                            {{--<span class="inc qtybtn"><i class="fa fa-plus"></i></span>--}}
                            <span class="input-group-btn"><button
                                        class="btn btn-primary"><i
                                            class="fa fa-refresh"></i></button></span>
                        </div>
                    </form>
                    <form action="{{ route('cart.destroy', $cartItem->rowId) }}"
                          method="post" style="position: absolute;">
                        {{ csrf_field() }}
                        <input type="hidden" name="_method"
                               value="delete">
                        <button onclick="return confirm('Are you sure?')"
                                class="btn btn-danger"><i
                                    class="fa fa-times"></i></button>
                    </form>
                </div>

            </td>
            <td>{{config('cart.currency')}} {{ number_format($cartItem->price, 2) }}</td>
        </tr>
    @endforeach
    </tbody>


</table>