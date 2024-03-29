
    <div class="col-md-2 col-sm-12">
        @if(isset($payment['name']))
            {{ ucwords($payment['name']) }}
        @else
            <p class="alert alert-danger">You need to have <strong>name</strong> key in your config</p>
        @endif
    </div>
    <div class="col-md-5 col-sm-12">
        @if(isset($payment['description']))
            {{ $payment['description'] }}
        @endif
    </div>
    <div class="col-md-5 col-sm-12">
        <form action="{{ route('bank-transfer.index') }}">
            <input type="hidden" class="billing_address" name="billing_address" value="">
            <input type="hidden" class="rate" name="rate" value="">
            <input type="hidden" name="shipment_obj_id" value="{{ $shipment_object_id }}">
            <button type="submit" class="btn btn-warning pull-right">Pay with {{ ucwords($payment['name']) }} <i class="fa fa-bank"></i></button>
        </form>
    </div>


<script type="text/javascript">
    $(document).ready(function () {
        let billingAddressId = $('input[name="billing_address"]').val();
        $('.billing_address').val(billingAddressId);

        let courierRadioBtn = $('input[name="rate"]');
        courierRadioBtn.click(function () {
            $('.rate').val($(this).val())
        });
    });
</script>