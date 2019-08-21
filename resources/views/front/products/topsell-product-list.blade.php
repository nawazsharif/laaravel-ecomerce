<div class="owl-carousel owl-topsell owl-theme">



@foreach($topproduct as $product)

<div class="item">
    <div class="product-item">
        <div class="product-thumb">
            <a href="{{ route('front.get.product', str_slug($product->slug)) }}">
                @if(isset($product->cover))
                    <img src="{{ asset("storage/$product->cover") }}" alt="{{ $product->name }}" class="img-bordered img-responsive">
                @else
                    <img src="https://placehold.it/263x330" alt="{{ $product->name }}" class="img-bordered img-responsive" />
                @endif
            </a>
            {{--<div class="box-label">--}}
            {{--<div class="label-product label_new">--}}
            {{--<span>new</span>--}}
            {{--</div>--}}
            {{--<div class="label-product label_sale">--}}
            {{--<span>-10%</span>--}}
            {{--</div>--}}
            {{--</div>--}}
            <div class="action-links">


                {{--<a href="#" title="Compare"><i class="lnr lnr-sync"></i></a>--}}
                <a href="{{ route('front.get.product', str_slug($product->slug)) }}" title="Quick view" data-target="#quickk_view"
                   data-toggle="modal"><i class="lnr lnr-magnifier"></i></a>
            </div>
        </div>
        <div class="product-caption">
            <div class="manufacture-product">
                <p><a href="shop-grid-left-sidebar.html">jony</a></p>
            </div>
            <div class="product-name">
                <h4><a href="{{ route('front.get.product', str_slug($product->slug)) }}">{{ $product->name }}</a>
                </h4>
            </div>
            <div class="ratings">
                <span class="yellow"><i class="lnr lnr-star"></i></span>
                <span class="yellow"><i class="lnr lnr-star"></i></span>
                <span class="yellow"><i class="lnr lnr-star"></i></span>
                <span><i class="lnr lnr-star"></i></span>
                <span><i class="lnr lnr-star"></i></span>
            </div>
            <div class="price-box">
                <span class="regular-price"><span class="special-price"><?php if($product->sale_price != null){echo '£'.$product->sale_price;}
                else{
                    echo '£'.$product->price;
                }?></span></span>
                <span class="old-price"><del><?php if($product->sale_price != null){echo '£'.$product->price;}
                        else{
                            echo '';
                        }?> </del></span>
            </div>
            <form action="{{ route('cart.store') }}" class="form-inline" method="post">
                {{ csrf_field() }}
                <input type="hidden" name="quantity" value="1" />
                <input type="hidden" name="product" value="{{ $product->id }}">
                <button id="add-to-cart-btn" class="btn-cart" type="submit" data-target="#cart-modal">add to cart</button>
            </form>
            <form action="{{ route('cart.store') }}" class="form-inline" method="post">
            {{ csrf_field() }}
            <input type="hidden" name="quantity" value="1" />
            <input type="hidden" name="product" value="{{ $product->id }}">
            <button id="add-to-cart-btn" class="btn-cart" type="submit" data-target="#cart-modal">add to cart</button>
            </form>

        </div>
    </div>

</div>
    @endforeach

</div>
