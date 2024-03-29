@extends('layouts.front.app')

@section('og')
    <meta property="og:type" content="home"/>
    <meta property="og:title" content="{{ config('app.name') }}"/>
    <meta property="og:description" content="{{ config('app.name') }}"/>
@endsection

@section('content')




    <!-- breadcrumb area start -->
    <div class="breadcrumb-area mb-30">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-wrap">
                        <nav aria-label="breadcrumb">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="http://demo.devitems.com/sinrato-v5/sinrato/index.html">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Contact</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area end -->

    <!-- contact us area -->
    <section class="contact-style-2 pt-30 pb-35">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="contact2-title text-center mb-65">
                        <h2>contact us</h2>
                        <p> Claritas est etiam processus dynamicus, Maria Denardo is the Fashion Director at theFashionSpot<br>mutationem consuetudium lectorum. </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="contact-single-info mb-30 text-center">
                        <div class="contact-icon">
                            <i class="fa fa-map-marker"></i>
                        </div>
                        <h3>address street</h3>
                        <p>Address : No 40 Baria Sreet<br>NewYork City, United States.</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="contact-single-info mb-30 text-center">
                        <div class="contact-icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <h3>number phone</h3>
                        <p>Phone 1: 0(1234) 567 89012<br>Phone 2: 0(987) 567 890</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="contact-single-info mb-30 text-center">
                        <div class="contact-icon">
                            <i class="fa fa-fax"></i>
                        </div>
                        <h3>number fax</h3>
                        <p>Fax 1: 0(1234) 567 89012<br>Fax 2: 0(987) 567 890</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="contact-single-info mb-30 text-center">
                        <div class="contact-icon">
                            <i class="fa fa-envelope"></i>
                        </div>
                        <h3>address email</h3>
                        <p>info@roadthemes.com<br>yourname@roadthemes.com</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- contact form two -->
    <div class="contact-two-area pt-60 pb-70">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="contact2-title text-center mb-60">
                        <h2>tell us your project</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="contact-message">
                        <form id="contact-form" action="http://demo.devitems.com/sinrato-v5/sinrato/assets/php/mail.php" method="post" class="contact-form">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <input name="first_name" placeholder="Name *" type="text">
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <input name="phone" placeholder="Phone *" type="text">
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <input name="email_address" placeholder="Email *" type="text">
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <input name="contact_subject" placeholder="Subject *" type="text">
                                </div>
                                <div class="col-12">
                                    <div class="contact2-textarea text-center">
                                        <textarea placeholder="Message *" name="message" class="form-control2" required=""></textarea>
                                    </div>
                                    <div class="contact-btn text-center">
                                        <button class="btn btn-secondary" type="submit">Send Message</button>
                                    </div>
                                </div>
                                <div class="col-12 d-flex justify-content-center">
                                    <p class="form-messege"></p>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @include('mailchimp::mailchimp')
@endsection