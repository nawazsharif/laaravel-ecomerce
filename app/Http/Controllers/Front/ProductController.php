<?php

namespace App\Http\Controllers\Front;
use Illuminate\Support\Facades\DB;
use App\Shop\Products\Product;
use App\Shop\Review;
use App\Shop\Products\Repositories\Interfaces\ProductRepositoryInterface;
use App\Http\Controllers\Controller;
use App\Shop\Products\Transformations\ProductTransformable;
use App\Shop\Categories\Repositories\CategoryRepository;
use App\Shop\Categories\Repositories\Interfaces\CategoryRepositoryInterface;
use FontLib\Table\Type\name;

class ProductController extends Controller
{
    use ProductTransformable;

    /**
     * @var ProductRepositoryInterface
     */
    private $productRepo;
    private $categoryRepo;

    /**
     * ProductController constructor.
     * @param ProductRepositoryInterface $productRepository
     */
    public function __construct(ProductRepositoryInterface $productRepository,CategoryRepositoryInterface $categoryRepository)
    {
        $this->productRepo = $productRepository;
        $this->categoryRepo = $categoryRepository;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function search()
    {
        if (request()->has('q') && request()->input('q') != '') {
            $list = $this->productRepo->searchProduct(request()->input('q'));
        } else {
            $list = $this->productRepo->listProducts();
        }

        $products = $list->where('status', 1)->map(function (Product $item) {
            return $this->transformProduct($item);
        });

        return view('front.products.product-search', [
            'products' => $this->productRepo->paginateArrayResults($products->all(), 10)
        ]);
    }

    /**
     * Get the product
     *
     * @param string $slug
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function show(string $slug)
    {


        $product = $this->productRepo->findProductBySlug(['slug' => $slug]);
        $images = $product->images()->get();
        $category = $product->categories()->first();
        $product_id=$product->id;
        $review= DB::select('select product_id,customer_id,review,comment,DATE(created_at) as date from review WHERE product_id='.$product_id);
        $categoryProduct = $this->categoryRepo->findCategoryBySlug(['slug' => $category->name]);
        $repo = new CategoryRepository($category);
        $products = $repo->findProducts()
            ->where('status', 1)->all();


        $productAttributes = $product->attributes;

        return view('front.products.product', compact(
            'product',
            'images',
            'productAttributes',
            'category',
            'combos',
            'products',
            'review'
        ));
    }
}
