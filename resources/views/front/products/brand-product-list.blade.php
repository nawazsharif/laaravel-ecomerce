

<?php
for ($i = 0; $i < count($brandproduct); $i++) {?>
<div class="item">
    <div class="single-module-home4">
    <div class="product-module-four-item mb-30">
            <div class="product-module-caption">
                <div class="manufacture-com">
                    <p><a href="{{ route('front.get.product', str_slug($brandproduct[$i]->slug)) }}">{{$brandproduct[$i]->name}}</a></p>
                </div>

                <p>{{$brandproduct[$i]->brandname}}</p>
                {{--<div class="ratings">--}}
                    {{--<span><i class="lnr lnr-star"></i></span>--}}
                    {{--<span><i class="lnr lnr-star"></i></span>--}}
                    {{--<span><i class="lnr lnr-star"></i></span>--}}
                    {{--<span><i class="lnr lnr-star"></i></span>--}}
                    {{--<span><i class="lnr lnr-star"></i></span>--}}
                {{--</div>--}}
                <div class="price-box-module">
                    <span class="regular-price"><span class="special-price">£{{$brandproduct[$i]->price}}</span></span>
                    {{--<span class="old-price"><del>£60.00</del></span>--}}
                </div>
            </div>
            <div class="product-module-thumb thumb4">
                <a href="{{ route('front.get.product', str_slug($brandproduct[$i]->slug)) }}">
                    @if(isset($brandproduct[$i]->cover))
                        <img src="<?php echo 'storage/'.$brandproduct[$i]->cover ;?>" alt="{{ $brandproduct[$i]->name }}" class="img-bordered img-responsive">
                    @else
                        <img src="https://placehold.it/263x330" alt="{{ $brandproduct[$i]->name }}" class="img-bordered img-responsive" />
                    @endif
                </a>
                {{--<div class="box-label">--}}
                    {{--<div class="label-product label_sale">--}}
                        {{--<span>-10%</span>--}}
                    {{--</div>--}}
                {{--</div>--}}
            </div>
        </div>
    </div>
   <?php if(($i+1)<count($brandproduct) ){?>


    <div class="single-module-home4">
        <div class="product-module-four-item mb-30">
            <div class="product-module-caption">
                <div class="manufacture-com">
                    <p><a href="{{ route('front.get.product', str_slug($brandproduct[$i+1]->slug)) }}">{{$brandproduct[$i+1]->name}}</a></p>
                </div>

                <p>{{$brandproduct[$i+1]->brandname}}</p>
                {{--<div class="ratings">--}}
                {{--<span><i class="lnr lnr-star"></i></span>--}}
                {{--<span><i class="lnr lnr-star"></i></span>--}}
                {{--<span><i class="lnr lnr-star"></i></span>--}}
                {{--<span><i class="lnr lnr-star"></i></span>--}}
                {{--<span><i class="lnr lnr-star"></i></span>--}}
                {{--</div>--}}
                <div class="price-box-module">
                    <span class="regular-price"><span class="special-price">£{{$brandproduct[$i+1]->price}}</span></span>
                    {{--<span class="old-price"><del>£60.00</del></span>--}}
                </div>
            </div>
            <div class="product-module-thumb thumb4">
                <a href="{{ route('front.get.product', str_slug($brandproduct[$i+1]->slug)) }}">
                    @if(isset($brandproduct[$i+1]->cover))
                        <img src="<?php echo 'storage/'.$brandproduct[$i+1]->cover ;?>" alt="{{ $brandproduct[$i+1]->name }}" class="img-bordered img-responsive">
                    @else
                        <img src="https://placehold.it/263x330" alt="{{ $brandproduct[$i+1]->name }}" class="img-bordered img-responsive" />
                    @endif
                </a>
                {{--<div class="box-label">--}}
                {{--<div class="label-product label_sale">--}}
                {{--<span>-10%</span>--}}
                {{--</div>--}}
                {{--</div>--}}
            </div>
        </div>
    </div>
    <?php    }?>

</div>
<?php
    $i++;
}

?>

