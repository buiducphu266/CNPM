<?php

namespace App\Http\Controllers\Client\Category;

use App\Http\Controllers\Controller;
use App\Http\Services\Menu\MenuService;
use App\Http\Services\Product\ProductService;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    protected $menuService,$productService;
    public function __construct(MenuService $menuService, ProductService $productService){
        $this->menuService = $menuService;
        $this->productService = $productService;
    }

    public function index(Request $request, $id , $slug){
        $menu = $this->menuService->getId($id);
        $products = $this->menuService->getProduct($request,$menu);

        return view('front-end.product.product_category',[
            'title' => $menu->name,
            'menu' => $menu,
            'products' => $products
        ]);
    }

    public function search(Request $request, $id){
        $result = $this->productService->search($request,$id);
        return response()->json([
            'error' => false,
            'html' => $result
        ]);
    }

}
