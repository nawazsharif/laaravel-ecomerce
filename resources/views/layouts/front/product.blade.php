
<div class="row">
    <div class="col-md-6 mb-5">
        <ul id="thumbnails" class="col-md-3 list-unstyled">
            <li>
                <a href="javascript: void(0)">
                    @if(isset($product->cover))
                        <img class="img-responsive img-thumbnail"
                             src="{{ asset("storage/$product->cover") }}"
                             alt="{{ $product->name }}"/>
                    @else
                        <img class="img-responsive img-thumbnail"
                             src="{{ asset("https://placehold.it/180x180") }}"
                             alt="{{ $product->name }}"/>
                    @endif
                </a>
            </li>
            @if(isset($images) && !$images->isEmpty())
                @foreach($images as $image)
                    <li>
                        <a href="javascript: void(0)">
                            <img class="img-responsive img-thumbnail"
                                 src="{{ asset("storage/$image->src") }}"
                                 alt="{{ $product->name }}"/>
                        </a>
                    </li>
                @endforeach
            @endif
        </ul>
        <figure class="text-center product-cover-wrap col-md-8">
            @if(isset($product->cover))
                <img id="main-image" class="product-cover img-responsive"
                     src="{{ asset("storage/$product->cover") }}?w=400"
                     data-zoom="{{ asset("storage/$product->cover") }}?w=1200">
            @else
                <img id="main-image" class="product-cover" src="https://placehold.it/300x300"
                     data-zoom="{{ asset("storage/$product->cover") }}?w=1200" alt="{{ $product->name }}">
            @endif
        </figure>
    </div>
    <div class="col-md-6">
        <div class="product-description">
            <h1>{{ $product->name }}
                <small>{{ config('cart.currency') }} {{ $product->price }}</small>
            </h1>
            <div class="description">{!! $product->description !!}</div>
            <div class="excerpt">
                <hr>{!!  str_limit($product->description, 100, ' ...') !!}</div>
            <hr>
            <div class="row">
                <div class="col-md-12">
                    @include('layouts.errors-and-messages')
                    <form action="{{ route('cart.store') }}" class="form-inline" method="post">
                        {{ csrf_field() }}
                        @if(isset($productAttributes) && !$productAttributes->isEmpty())
                            <div class="form-group">
                                <label for="productAttribute">Choose Combination</label> <br/>
                                <select name="productAttribute" id="productAttribute" class="form-control select2">
                                    @foreach($productAttributes as $productAttribute)
                                        <option value="{{ $productAttribute->id }}">
                                            @foreach($productAttribute->attributesValues as $value)
                                                {{ $value->attribute->name }} : {{ ucwords($value->value) }}
                                            @endforeach
                                            @if(!is_null($productAttribute->price))
                                                ( {{ config('cart.currency_symbol') }} {{ $productAttribute->price }})
                                            @endif
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                            <hr>
                        @endif
                        <div class="form-group">
                            <input type="text"
                                   class="form-control"
                                   name="quantity"
                                   id="quantity"
                                   placeholder="Quantity"
                                   value="{{ old('quantity') }}"/>
                            <input type="hidden" name="product" value="{{ $product->id }}"/>
                        </div>
                        <button type="submit" class="btn btn-warning"><i class="fa fa-cart-plus"></i> Add to cart
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab"
               aria-controls="pills-home" aria-selected="true">Description</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab"
               aria-controls="pills-profile" aria-selected="false">Review</a>
        </li>

    </ul>
    <div class="tab-content" id="pills-tabContent">
        <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
            <div class="std">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique
                    auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper.
                    Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. Donec a neque libero.
                    Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros
                    eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis
                    vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit
                    amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere
                    nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam
                    gravida vehicula tellus, in imperdiet ligula euismod eget. Pellentesque habitant morbi tristique
                    senectus et netus et malesuada fames ac turpis egestas. Nam erat mi, rutrum at sollicitudin rhoncus,
                    ultricies posuere erat. Duis convallis, arcu nec aliquam consequat, purus felis vehicula felis, a
                    dapibus enim lorem nec augue.</p>
                <p> Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut
                    lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere
                    cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper.
                    Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia
                    nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis.
                    Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis
                    eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.</p>
            </div>
        </div>
        <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
            <div class="box-reviews1">
                <div class="alert-box success">Successful Alert !!!</div> <div class="alert-box failure">Failure Alert !!!</div>
                <div class="form-add">

                        <div class="well well-sm">
                            <div class="mb-3">
                                <button type="button" class="btn btn-primary" id="review_btn">Submit Your Review</button>

                            </div>
                            <div id="demo" class="hide">

                                <form method="post" onsubmit="return send_information(event)">
                                    {{ csrf_field() }}
                                    <input id="ratings-hidden" name="rating" type="hidden">
                                    <input value="{{ $product->id }}" id="product_id" name="product_id" type="hidden">
                                    <textarea class="form-control animated" id="comment" cols="50" name="message" placeholder="Enter your review here..." rows="5"></textarea>

                                    <div class="text-right">
                                        <div class="stars starrr" data-rating="0"></div>
                                        <a class="btn btn-danger btn-sm" href="#" id="close-review-box" style="display:none; margin-right: 10px;">
                                            <span class="glyphicon glyphicon-remove"></span>Cancel</a>
                                        <button type="submit" class="btn btn-success btn-lg">Submit</button>
                                    </div>
                                </form>

                            </div>
                        </div>
                </div>
            </div>
            <?php if($review != ""){?>
                @foreach ($review as $data)
                <div class="review mb-4">
                    <div class="rating-box">
                        <div class="rating" style="width: {{$data->review * 20 }}%"></div>
                    </div>
                    <small>Review by <span><?php
                            $customer= DB::select('select * from customers where id ='.$data->customer_id);
                            echo $customer[0]->name;
                            ?> </span>on {{$data->date}} </small>
                    <div class="review-txt"> {{$data->comment}}</div>
                </div>
            @endforeach

            <?php
            }?>

        </div>
    </div>
</div>
<div class="row">
    <div class="product-wrapper3 pt-15">
        <div class="container">
            <div class="section-title product-spacing">
                <h3><span>Releted</span> products</h3>

            </div>
            <div class="row">
                <div class="col-lg-4 col-md-5 col-6 offset-3 offset-md-0">
                    <div class="pro-gallary-banner">
                        <a href="#"><img src="{{asset('new-theme/images/product/img-module1.jpg')}}" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-8 col-md-7">
                    <div class="owl-carousel owl-topsell owl-theme">

                        @if(!empty($products) && !collect($products)->isEmpty())
                            @foreach($products as $product)
                                <div class="item">
                                    @include('layouts.front.single-product', ['product' => $product])
                                </div>
                            @endforeach
                        @endif
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
@section('js')
    <script type="text/javascript">
        $(document).ready(function () {
            var productPane = document.querySelector('.product-cover');
            var paneContainer = document.querySelector('.product-cover-wrap');

            new Drift(productPane, {
                paneContainer: paneContainer,
                inlinePane: false
            });
        });
    </script>
    <script>

        $( "#review_btn" ).on( "click", function() {
            $('#demo').toggleClass('hide');
        });

        (function(e){var t,o={className:"autosizejs",append:"",callback:!1,resizeDelay:10},i='<textarea tabindex="-1" style="position:absolute; top:-999px; left:0; right:auto; bottom:auto; border:0; padding: 0; -moz-box-sizing:content-box; -webkit-box-sizing:content-box; box-sizing:content-box; word-wrap:break-word; height:0 !important; min-height:0 !important; overflow:hidden; transition:none; -webkit-transition:none; -moz-transition:none;"/>',n=["fontFamily","fontSize","fontWeight","fontStyle","letterSpacing","textTransform","wordSpacing","textIndent"],s=e(i).data("autosize",!0)[0];s.style.lineHeight="99px","99px"===e(s).css("lineHeight")&&n.push("lineHeight"),s.style.lineHeight="",e.fn.autosize=function(i){return this.length?(i=e.extend({},o,i||{}),s.parentNode!==document.body&&e(document.body).append(s),this.each(function(){function o(){var t,o;"getComputedStyle"in window?(t=window.getComputedStyle(u,null),o=u.getBoundingClientRect().width,e.each(["paddingLeft","paddingRight","borderLeftWidth","borderRightWidth"],function(e,i){o-=parseInt(t[i],10)}),s.style.width=o+"px"):s.style.width=Math.max(p.width(),0)+"px"}function a(){var a={};if(t=u,s.className=i.className,d=parseInt(p.css("maxHeight"),10),e.each(n,function(e,t){a[t]=p.css(t)}),e(s).css(a),o(),window.chrome){var r=u.style.width;u.style.width="0px",u.offsetWidth,u.style.width=r}}function r(){var e,n;t!==u?a():o(),s.value=u.value+i.append,s.style.overflowY=u.style.overflowY,n=parseInt(u.style.height,10),s.scrollTop=0,s.scrollTop=9e4,e=s.scrollTop,d&&e>d?(u.style.overflowY="scroll",e=d):(u.style.overflowY="hidden",c>e&&(e=c)),e+=w,n!==e&&(u.style.height=e+"px",f&&i.callback.call(u,u))}function l(){clearTimeout(h),h=setTimeout(function(){var e=p.width();e!==g&&(g=e,r())},parseInt(i.resizeDelay,10))}var d,c,h,u=this,p=e(u),w=0,f=e.isFunction(i.callback),z={height:u.style.height,overflow:u.style.overflow,overflowY:u.style.overflowY,wordWrap:u.style.wordWrap,resize:u.style.resize},g=p.width();p.data("autosize")||(p.data("autosize",!0),("border-box"===p.css("box-sizing")||"border-box"===p.css("-moz-box-sizing")||"border-box"===p.css("-webkit-box-sizing"))&&(w=p.outerHeight()-p.height()),c=Math.max(parseInt(p.css("minHeight"),10)-w||0,p.height()),p.css({overflow:"hidden",overflowY:"hidden",wordWrap:"break-word",resize:"none"===p.css("resize")||"vertical"===p.css("resize")?"none":"horizontal"}),"onpropertychange"in u?"oninput"in u?p.on("input.autosize keyup.autosize",r):p.on("propertychange.autosize",function(){"value"===event.propertyName&&r()}):p.on("input.autosize",r),i.resizeDelay!==!1&&e(window).on("resize.autosize",l),p.on("autosize.resize",r),p.on("autosize.resizeIncludeStyle",function(){t=null,r()}),p.on("autosize.destroy",function(){t=null,clearTimeout(h),e(window).off("resize",l),p.off("autosize").off(".autosize").css(z).removeData("autosize")}),r())})):this}})(window.jQuery||window.$);

        var __slice=[].slice;(function(e,t){var n;n=function(){function t(t,n){var r,i,s,o=this;this.options=e.extend({},this.defaults,n);this.$el=t;s=this.defaults;for(r in s){i=s[r];if(this.$el.data(r)!=null){this.options[r]=this.$el.data(r)}}this.createStars();this.syncRating();this.$el.on("mouseover.starrr","span",function(e){return o.syncRating(o.$el.find("span").index(e.currentTarget)+1)});this.$el.on("mouseout.starrr",function(){return o.syncRating()});this.$el.on("click.starrr","span",function(e){return o.setRating(o.$el.find("span").index(e.currentTarget)+1)});this.$el.on("starrr:change",this.options.change)}t.prototype.defaults={rating:void 0,numStars:5,change:function(e,t){}};t.prototype.createStars=function(){var e,t,n;n=[];for(e=1,t=this.options.numStars;1<=t?e<=t:e>=t;1<=t?e++:e--){n.push(this.$el.append("<span class='glyphicon .glyphicon-star-empty'></span>"))}return n};t.prototype.setRating=function(e){if(this.options.rating===e){e=void 0}this.options.rating=e;this.syncRating();return this.$el.trigger("starrr:change",e)};t.prototype.syncRating=function(e){var t,n,r,i;e||(e=this.options.rating);if(e){for(t=n=0,i=e-1;0<=i?n<=i:n>=i;t=0<=i?++n:--n){this.$el.find("span").eq(t).removeClass("glyphicon-star-empty").addClass("glyphicon-star")}}if(e&&e<5){for(t=r=e;e<=4?r<=4:r>=4;t=e<=4?++r:--r){this.$el.find("span").eq(t).removeClass("glyphicon-star").addClass("glyphicon-star-empty")}}if(!e){return this.$el.find("span").removeClass("glyphicon-star").addClass("glyphicon-star-empty")}};return t}();return e.fn.extend({starrr:function(){var t,r;r=arguments[0],t=2<=arguments.length?__slice.call(arguments,1):[];return this.each(function(){var i;i=e(this).data("star-rating");if(!i){e(this).data("star-rating",i=new n(e(this),r))}if(typeof r==="string"){return i[r].apply(i,t)}})}})})(window.jQuery,window);$(function(){return $(".starrr").starrr()})

        $(function(){

            $('#new-review').autosize({append: "\n"});

            var reviewBox = $('#post-review-box');
            var newReview = $('#new-review');
            var openReviewBtn = $('#open-review-box');
            var closeReviewBtn = $('#close-review-box');
            var ratingsField = $('#ratings-hidden');

            openReviewBtn.click(function(e)
            {
                reviewBox.slideDown(400, function()
                {
                    $('#new-review').trigger('autosize.resize');
                    newReview.focus();
                });
                openReviewBtn.fadeOut(100);
                closeReviewBtn.show();
            });

            closeReviewBtn.click(function(e)
            {
                e.preventDefault();
                reviewBox.slideUp(300, function()
                {
                    newReview.focus();
                    openReviewBtn.fadeIn(200);
                });
                closeReviewBtn.hide();

            });

            $('.starrr').on('starrr:change', function(e, value){
                ratingsField.val(value);
            });
        });


        function send_information(event)  {

            event.preventDefault();


            var rating = jQuery('#ratings-hidden').val();
            var message = jQuery('#comment').val();
            var product_id = jQuery('#product_id').val();


            if(rating =='')  {
                alert('Review is required field');
                jQuery('#rating').focus();
                return false;
            }
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });



            $.ajax({
                url: "./review",
                type: "POST",
                data: { rating:rating,message:message,product_id:product_id},
                success:function(result){

                    // return false;


                    if(result.problem =='')  {
                        if(result.status == "send")  {

                            $('input[type=text], textarea').val('');
                            jQuery( "div.success" ).fadeIn( 300 ).delay( 1500 ).fadeOut( 400 );
                            jQuery('div.success').html(result.message);
                            jQuery('#from_id').val(result.fid);
                            return false;
                        }
                        else  {
                            jQuery('#return_message').addClass('alert-danger show');
                            jQuery$( "div.failure" ).fadeIn( 300 ).delay( 1500 ).fadeOut( 400 );
                            jQuery('#return_message').html(result.message);
                            jQuery('#from_id').val(result.fid);
                            return false;
                        }
                    }
                    else  {
                        //alert(result);
                        $('input[type=text], textarea').val('');
                        jQuery( "div.failure" ).fadeIn( 300 ).delay( 1500 ).fadeOut( 400 );
                        jQuery('div.failure').html(result.message);
                        jQuery('#from_id').val(result.fid);
                        return false;
                    }
                },
                error:function(xhr,status,error){
                    return false;
                    alert(status);
                }
            });
        }


    </script>
@endsection