

@if($product != null)

    <div class="product">

        <div class="imageWrapper">
            <div class="imageWrapperWrapper">
                @if(isset($product->cover))
                    <img src="{{ asset("storage/$product->cover") }}" alt="{{ $product->name }}"
                         class="img-bordered img-responsive">
                @else
                    <img src="{{asset('https://placehold.it/263x330')}}" alt="{{ $product->name }}"
                         class="img-bordered img-responsive"/>
                @endif
            </div>
            <div class="name">{{ $product->name }}</div>
            <div class="subText">{{ $product->weight }} gm</div>
            <div class="price"><span>৳ {{ $product->price }} </span>
                <span>
                {{--@if(!is_null($product->attributes->where('default', 1)->first()))--}}
                    {{--@if(!is_null($product->attributes->where('default', 1)->first()->sale_price))--}}
                    {{--{{ number_format($product->attributes->where('default', 1)->first()->sale_price, 2) }}--}}
                    {{--<p class="text text-danger">Sale!</p>--}}
                    {{--@else--}}
                    {{--{{ number_format($product->attributes->where('default', 1)->first()->price, 2) }}--}}
                    {{--@endif--}}
                    {{--@else--}}
                    {{--{{ number_format($product->price, 2) }}--}}
                    {{--@endif--}}
            </span>
            </div>
            <a href="{{ route('front.get.product', str_slug($product->slug)) }}">
                <div class="overlay text">
                    <p class="addText">View Product Details...</p>

                </div>
            </a>
        </div>
        <section class="addButtonWrapper border-radius-small">
            <!-- <p class="buyText">Add to bag</p> -->
            <div class="cart-btn">


                {{--<button class="acart" data-toggle="tooltip" title="" type="button" data-original-title="Go to the pape">--}}
                {{--<a href="{{ route('front.get.product', str_slug($product->slug)) }}"></a>--}}
                {{--<i class="fa fa-shopping-bag"></i>--}}
                {{--</button>--}}


                {{--<button type="button" data-toggle="tooltip" title="" data-original-title="Add to Wish List">--}}
                {{--<i class="fas fa-shopping-bag"></i>--}}
                {{--</button>--}}

                {{--<button type="button" class="btn btn-warning" data-toggle="modal" data-target="#myModal_{{ $product->id }}"> <i class="fa fa-eye"></i> Quick View</button>--}}
                <form action="{{ route('cart.store') }}" class="form-inline" method="post">
                    {{ csrf_field() }}
                    <input type="hidden" name="quantity" value="1"/>
                    <input type="hidden" name="product" value="{{ $product->id }}">
                    <button id="add-to-cart-btn" data-toggle="tooltip" data-original-title="Add to Cart" type="submit" data-target="#cart-modal"><i class="fa fa-shopping-bag"></i> Add to Cart</button>
                </form>
            </div>
        </section>

    </div>
@endif
