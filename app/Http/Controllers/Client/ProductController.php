<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Http\Services\Product\ProductService;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    protected $productService;

    public function __construct(ProductService $productService){
        $this->productService = $productService;
    }

    public function index($id = '',$slug = ''){

        $product_detail = $this->productService->show($id);
        return view('front-end.product.product_detail',[
            'title' => $product_detail->name,
            'product_detail' => $product_detail,
            'products' => $this->productService->loadMore($id)
        ]);
    }
}
