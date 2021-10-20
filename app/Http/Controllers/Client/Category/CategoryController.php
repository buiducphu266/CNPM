<?php

namespace App\Http\Controllers\Client\Category;

use App\Http\Controllers\Controller;
use App\Http\Services\Menu\MenuService;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    protected $menuService;
    public function __construct(MenuService $menuService){
        $this->menuService = $menuService;
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

    public function search(Request $request){
//        $menu = $this->menuService->getId($request->input('menu_id'));
//        $products = $this->menuService->search($request);
//
//        return view('front-end.product.product_category',[
//            'title' => $menu->name,
//            'menu' => $menu,
//            'products' => $products
//        ]);
        dd($request->input());
    }

}
