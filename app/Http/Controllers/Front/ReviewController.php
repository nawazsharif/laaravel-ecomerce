<?php

namespace App\Http\Controllers\Front;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Shop\Customers\Repositories\CustomerRepository;
use App\Shop\Customers\Repositories\Interfaces\CustomerRepositoryInterface;
use Illuminate\Support\Facades\DB;
use mysql_xdevapi\Exception;

class ReviewController extends Controller
{

    private $customerRepo;

    public function __construct(
        CustomerRepositoryInterface $customerRepository
    ) {
        $this->customerRepo = $customerRepository;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create( Request $request )
    {
        if(\Auth::check()) {
            $customer = $this->customerRepo->findCustomerById(auth()->user()->id);
            if ($customer->id != null) {
                $rating = $_POST['rating'];
                $message = $_POST['message'];
                $product_id = $_POST['product_id'];
                try {
                    DB::table('review')->insert(
                        ['customer_id' => $customer->id, 'product_id' => $product_id, 'comment' => $message, 'review' => $rating]
                    );

                    $data = [
                        "status" => "send",
                        "problem" => "",
                        "message" => "Review Submited"
                    ];
                    return response()->json($data);
                } catch (Exception $e) {
                    $data = [
                        "status" => "not send",
                        "problem" => "something wrong",
                        "message" => "Login First"
                    ];
                    return response()->json($data);
                }
            }
        }
        else{
            $data = [
                "status" => "not send",
                "problem" => "something wrong",
                "message" => "Login First"

            ];
            return response()->json($data);
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

}
