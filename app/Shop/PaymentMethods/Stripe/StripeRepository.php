<?php

namespace App\Shop\PaymentMethods\Stripe;

use App\Shop\Checkout\CheckoutRepository;
use App\Shop\Couriers\Courier;
use App\Shop\Couriers\Repositories\CourierRepository;
use App\Shop\Customers\Customer;
use App\Shop\Customers\Repositories\CustomerRepository;
use App\Shop\PaymentMethods\Stripe\Exceptions\StripeChargingErrorException;
use Gloudemans\Shoppingcart\Facades\Cart;
use Ramsey\Uuid\Uuid;
use Stripe\Charge;
use Illuminate\Support\Facades\DB;

class StripeRepository
{
    /**
     * @var Customer
     */
    private $customer;

    /**
     * StripeRepository constructor.
     * @param Customer $customer
     */
    public function __construct(Customer $customer)
    {
        $this->customer = $customer;
    }

    /**
     * @param array $data Cart data
     * @param $total float Total items in the cart
     * @param $tax float The tax applied to the cart
     * @return Charge Stripe charge object
     * @throws StripeChargingErrorException
     */
    public function execute(array $data, $total, $tax) : Charge
    {

        $courier_detail= DB::select('select * from couriers  where id='.$data['courier'].'');


        try {

            $shipping = $courier_detail[0]->cost;
            $totalComputed = $total + $shipping;
            if ($data['delivery_address']!=null){
                $address=$data['delivery_address'];
            }
            else{$address=$data['billing_address'];}

            $customerRepo = new CustomerRepository($this->customer);
            $options['source'] = $data['stripeToken'];
            $options['currency'] = config('cart.currency');
            $checkoutRepo = new CheckoutRepository;
            $checkoutRepo->buildCheckoutItems([
                'reference' => Uuid::uuid4()->toString(),
                'courier_id' => $courier_detail[0]->id,
                'customer_id' => $this->customer->id,
                'address_id' => $address,
                'order_status_id' => 1,
                'payment' => strtolower(config('stripe.name')),
                'discounts' => 0,
                'total_products' => $total,
                'total' => $totalComputed,
                'total_paid' => $totalComputed,
                'tax' => $tax
            ]);
            if ($charge = $customerRepo->charge($totalComputed, $options)) {
                Cart::destroy();
            }

            return $charge;
        } catch (\Exception $e) {
            throw new StripeChargingErrorException($e);
        }
    }
}
