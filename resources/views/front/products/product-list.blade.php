
@if(!empty($products) && !collect($products)->isEmpty())
    @foreach($products as $product)
<div class="item">
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
            <div class="price"><span>৳ </span>
                <span>
                @if(!is_null($product->attributes->where('default', 1)->first()))
                        @if(!is_null($product->attributes->where('default', 1)->first()->sale_price))
                            {{ number_format($product->attributes->where('default', 1)->first()->sale_price, 2) }}
                            <p class="text text-danger">Sale!</p>
                        @else
                            {{ number_format($product->attributes->where('default', 1)->first()->price, 2) }}
                        @endif
                    @else
                        {{ number_format($product->price, 2) }}
                    @endif
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
                <form onsubmit="return add_to_cart(event)" class="form-inline" method="post">
                    {{ csrf_field() }}
                    <input type="hidden" id="p_quantity" name="quantity" value="1"/>
                    <input type="hidden" id="p_id" name="product" value="{{ $product->id }}">
                    <button id="add-to-cart-btn" data-toggle="tooltip" data-original-title="Add to Cart" type="submit" data-target="#cart-modal"><i class="fa fa-shopping-bag"></i> Add to Cart</button>
                </form>
            </div>
        </section>

    </div>

</div>

    @endforeach
@else
    <p class="alert alert-warning">No products yet.</p>
@endif