<?php

namespace App\Http\Controllers\Front;
use App\Http\Controllers\Admin\Brands\BrandController;
use App\Shop\Products\Product;
use Illuminate\Support\Facades\DB;
use App\Shop\Categories\Repositories\CategoryRepository;
use App\Shop\Categories\Repositories\Interfaces\CategoryRepositoryInterface;
use App\Http\Controllers\Controller;
use Illuminate\Pagination\Paginator;

class CategoryController extends Controller
{
    /**
     * @var CategoryRepositoryInterface
     */
    private $categoryRepo;

    /**
     * CategoryController constructor.
     *
     * @param CategoryRepositoryInterface $categoryRepository
     */
    public function __construct(CategoryRepositoryInterface $categoryRepository)
    {
        $this->categoryRepo = $categoryRepository;
    }

    /**
     * Find the category via the slug
     *
     * @param string $slug
     * @return \App\Shop\Categories\Category
     */
    public function getCategory(string $slug)
    {
        $brand =DB::select('select * from brands');
        $category = $this->categoryRepo->findCategoryBySlug(['slug' => $slug]);
        $results = DB::select('select * from categories');
        $repo = new CategoryRepository($category);
        $products = $repo->findProducts()
            ->where('status', 1)->all();
//        ->where('brand_id','2')->all();

        return view('front.categories.category', [
            'category' => $category,
            'products' => $repo->paginateArrayResults($products, 20),
            'allcategory' => $results,
            'brand'=>$brand
        ]);
    }
    /**
     * Find the category via the slug
     *
     * @param string $slug
     * @return \App\Shop\Categories\Category
     */
    public function getCategorybrand(string $slug,int $brandid)
    {
        $brand =DB::select('select * from brands');
        $category = $this->categoryRepo->findCategoryBySlug(['slug' => $slug]);
        $results = DB::select('select * from categories');
        $repo = new CategoryRepository($category);
        $products = $repo->findProducts()
            ->where('status', 1)
        ->where('brand_id',$brandid)->all();

        return view('front.categories.category', [
            'category' => $category,
            'products' => $repo->paginateArrayResults($products, 20),
            'allcategory' => $results,
            'brand'=>$brand
        ]);
    }
}
