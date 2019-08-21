
<!-- jQuery CDN - Slim version (=without AJAX) -->
{{--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>--}}

<script src="{{ asset('https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js') }}"></script>
<!-- Popper.JS -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<!-- Bootstrap JS -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-star-rating/4.0.2/js/star-rating.min.js"></script>
<script src="{{'new-theme/script/script.js'}}"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#sidebarCollapse').on('click', function() {
            $('#sidebar').toggleClass('active');
            $(this).toggleClass('active');
            $('#content').toggleClass('slide');
            $(this).toggleClass('slide');
        });
    });
    $(function() {
        $('[data-toggle="tooltip"]').tooltip()
    })
</script>


<script>
    $('.owl-product').owlCarousel({
        loop: true,
        dots:false,
        margin: 30,
        nav:true,
        navText:['<i class="lnr lnr-arrow-left"></i>','<i class="lnr lnr-arrow-right"></i>'],
        autoplay: false,
        stagePadding: 0,
        smartSpeed: 700,
        responsive:{
            0:{
                items:2,
                nav:false
            },

            480:{
                items:2,

                nav:false
            },

            768:{
                items:2
            },

            992:{
                items:4
            },

            1024:{
                items:4
            },
            1600:{
                items:5
            }
        }
    })
</script>
<script>
    $('.owl-topsell').owlCarousel({
        loop: true,
        dots:false,
        margin: 30,
        nav:true,
        navText:['<i class="lnr lnr-arrow-left"></i>','<i class="lnr lnr-arrow-right"></i>'],
        autoplay: false,
        stagePadding: 0,
        smartSpeed: 700,
        responsive:{
            0:{
                items:2,
                nav:false
            },

            480:{
                items:2,

                nav:false
            },

            768:{
                items:2
            },

            992:{
                items:3
            },

            1024:{
                items:3
            },
            1600:{
                items:3
            }
        }
    })
</script>
<script>
    $('.owl-brand').owlCarousel({
        loop: true,
        dots:false,
        margin: 30,
        nav:true,
        navText:['<i class="lnr lnr-arrow-left"></i>','<i class="lnr lnr-arrow-right"></i>'],
        autoplay: false,
        stagePadding: 0,
        smartSpeed: 700,
        responsive:{
            0:{
                items:1,
                nav:false
            },

            480:{
                items:2,

                nav:false
            },

            768:{
                items:3
            },

            992:{
                items:3
            },

            1024:{
                items:3
            },
            1600:{
                items:3
            }
        }
    })
</script>
<script>
    $('.owl-brand-icon').owlCarousel({
        loop: true,
        dots:false,
        margin: 30,
        nav:true,
        navText:['<i class="lnr lnr-arrow-left"></i>','<i class="lnr lnr-arrow-right"></i>'],
        autoplay: false,
        stagePadding: 0,
        smartSpeed: 700,
        responsive:{
            0:{
                items:1,
                nav:false
            },

            480:{
                items:2,

                nav:false
            },

            768:{
                items:2
            },

            992:{
                items:4
            },

            1024:{
                items:5
            },
            1600:{
                items:5
            }
        }
    })
</script>

<script type="text/javascript">
    $('#abcd').on('change','input[name=opt]:checked',function(){
        var value = $(this).val();
        document.getElementById("shipping-cost-span").innerHTML = 'usd ' + value;
        var total= ($("#shop-cart-total-price").text());
        var iNum = parseInt(total)+parseInt(value);
        document.getElementById("shop-cart-total-price").innerHTML =  iNum;
        document.getElementById("checkout-total-price").innerHTML =  iNum;

    });

</script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#credential').on('click', function() {
            $('#dropdown_content').toggleClass('hide');
            $(this).toggleClass('hide');
        });
    });
</script>