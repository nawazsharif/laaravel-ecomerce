@extends('layouts.front.app')

@section('content')
    <!-- Main content -->
    <section class="container content">
        <div class="row">
            <div class="box-body">
                @include('layouts.errors-and-messages')
            </div>
            <div class="col-md-12">
                <h2> <i class="fa fa-home"></i> My Account</h2>
                <hr>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div>
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Profile</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Orders</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Address</a>
                        </li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content customer-order-list">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            {{$customer->name}} <br /><small>{{$customer->email}}</small>
                        </div>
                        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                            @if(!$orders->isEmpty())
                                <table class="table">
                                    <tbody>
                                    <tr>
                                        <td>Date</td>
                                        <td>Total</td>
                                        <td>Status</td>
                                    </tr>
                                    </tbody>
                                    <tbody>
                                    @foreach ($orders as $order)
                                        <tr>
                                            <td>
                                                <a data-toggle="modal" data-target="#order_modal_{{$order['id']}}" title="Show order" href="javascript: void(0)">{{ date('M d, Y h:i a', strtotime($order['created_at'])) }}</a>
                                                <!-- Button trigger modal -->
                                                <!-- Modal -->
                                                <div class="modal fade" id="order_modal_{{$order['id']}}" tabindex="-1" role="dialog" aria-labelledby="MyOrders">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                                <h4 class="modal-title" id="myModalLabel">Reference #{{$order['reference']}}</h4>
                                                            </div>
                                                            <div class="modal-body">

                                                                <?php
                                                                    $order_id=$order['id'];
                                                                    $items=DB::select('SELECT * FROM `order_product` WHERE order_id= ?', [$order_id]);
                                                                ?>
                                                                <table class="table">
                                                                    <tr>
                                                                        <th>NO#</th>
                                                                        <th>Name</th>
                                                                        <th>Quentity</th>
                                                                        <th>Price</th>
                                                                    </tr>
                                                                    @foreach($items as $item)
                                                                        @php($c=0)
                                                                    <tr>
                                                                        <td><?php echo $c+1;?></td>
                                                                        <td>{{$item->product_name}}</td>

                                                                        <td>{{$item->quantity}}</td>
                                                                        <td>{{$item->product_price}}</td>
                                                                    </tr>
                                                                        @endforeach

                                                                </table>
                                                                <table class="table">
                                                                    <thead>
                                                                    <th>Address</th>
                                                                    <th>Payment Method</th>
                                                                    <th>Courier</th>
                                                                    <th>Total</th>
                                                                    <th>Status</th>
                                                                    </thead>
                                                                    <tbody>
                                                                    <tr>
                                                                        <td>
                                                                            <address>
                                                                                <strong>{{$order['address']->alias}}</strong><br />
                                                                                {{$order['address']->address_1}} {{$order['address']->address_2}}<br>
                                                                            </address>
                                                                        </td>
                                                                        <td>{{$order['payment']}}</td>
                                                                        <td>{{$order['courier']['name']}}</td>
                                                                        <td>{{ config('cart.currency_symbol') }} {{$order['total']}}</td>
                                                                        <td><p class="text-center" style="color: #ffffff; background-color: {{ $order['status']->color }}">{{ $order['status']->name }}</p></td>
                                                                    </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td><span class="label @if($order['total'] != $order['total_paid']) label-danger @else label-success @endif">{{ config('cart.currency') }} {{ $order['total'] }}</span></td>
                                            <td><p class="text-center" style="color: #ffffff; background-color: {{ $order['status']->color }}">{{ $order['status']->name }}</p></td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                                {{ $orders->links() }}
                            @else
                                <p class="alert alert-warning">No orders yet. <a href="{{ route('home') }}">Shop now!</a></p>
                            @endif
                        </div>
                        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                            <div class="row">
                                <div class="col-md-6">
                                    <a href="{{ route('customer.address.create', auth()->user()->id) }}" class="btn btn-primary">Create your address</a>
                                </div>
                            </div>
                            @if(!$addresses->isEmpty())
                                <table class="table">
                                    <thead>
                                    <th>Alias</th>
                                    <th>Address 1</th>
                                    <th>Address 2</th>
                                    <th>City</th>
                                    @if(isset($address->province))
                                        <th>Province</th>
                                    @endif
                                    <th>State</th>
                                    <th>Country</th>
                                    <th>Zip</th>
                                    <th>Phone</th>
                                    {{--<th>Actions</th>--}}
                                    </thead>
                                    <tbody>
                                    @foreach($addresses as $address)
                                        <tr>
                                            <td>{{$address->alias}}</td>
                                            <td>{{$address->address_1}}</td>
                                            <td>{{$address->address_1}}</td>
                                            <td>{{$address->city}}</td>
                                            @if(isset($address->province))
                                                <td>{{$address->province->name}}</td>
                                            @endif
                                            <td>{{$address->state_code}}</td>
                                            <td>{{$address->country->name}}</td>
                                            <td>{{$address->zip}}</td>
                                            <td>{{$address->phone}}</td>
                                            {{--<td>--}}
                                                {{--<form method="post" action="{{ route('customer.address.destroy', [auth()->user()->id, $address->id]) }}" class="form-horizontal">--}}
                                                    {{--<div class="btn-group">--}}
                                                        {{--<input type="hidden" name="_method" value="delete">--}}
                                                        {{--{{ csrf_field() }}--}}
                                                        {{--<a href="{{ route('customer.address.edit', [auth()->user()->id, $address->id]) }}" class="btn btn-primary"> <i class="fa fa-pencil"></i> Edit</a>--}}
                                                        {{--<button onclick="return confirm('Are you sure?')" type="submit" class="btn btn-danger"> <i class="fa fa-trash"></i> Delete</button>--}}
                                                    {{--</div>--}}
                                                {{--</form>--}}
                                            {{--</td>--}}
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            @else
                                <br /> <p class="alert alert-warning">No address created yet.</p>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /.content -->
@endsection
