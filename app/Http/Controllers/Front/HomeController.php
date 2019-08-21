<?php

namespace App\Http\Controllers\Front;
use Illuminate\Support\Facades\DB;
use App\Shop\Categories\Repositories\Interfaces\CategoryRepositoryInterface;
use App\Shop\Categories\Repositories\Interfaces\ProductRepositoryInterface;

class HomeController
{
    /**
     * @var CategoryRepositoryInterface
     */
    private $categoryRepo;

    /**
     * HomeController constructor.
     * @param CategoryRepositoryInterface $categoryRepository
     */
    public function __construct(CategoryRepositoryInterface $categoryRepository)
    {
        $this->categoryRepo = $categoryRepository;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index()
    {
        $cat1 = $this->categoryRepo->all();
        $cat2=$this->categoryRepo->listCategories()->where('parent_id','');


        $results = DB::select('select * from products where  topsell = 1');



        return view('front.index', [

            'category'=>$cat1,
            'results'=>$results
        ]);
    }
}
