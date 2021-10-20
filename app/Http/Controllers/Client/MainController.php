<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Http\Services\Menu\MenuService;
use App\Http\Services\Product\ProductService;
use App\Http\Services\Slider\SliderService;
use App\Models\Menu;
use Illuminate\Http\Request;

class MainController extends Controller
{
    protected $sliderService,$menuService,$productService;
    public function __construct(SliderService $sliderService, MenuService $menuService, ProductService $productService)
    {
        $this->sliderService = $sliderService;
        $this->menuService = $menuService;
        $this->productService = $productService;
    }

    public function index(){
        return view('front-end.home',[
            'title' => 'Trang chủ',
            'menus' => $this->menuService->show(),
            'sliders' => $this->sliderService->show(),
            'products' => $this->productService->get()
        ]);
    }

    public function loadProduct(Request $request)
    {
        $page = $request->input('page', 0);
        $result = $this->productService->get($page);
        if (count($result) != 0) {
            $html = view('front-end.product.product', ['products' => $result ])->render();

            return response()->json([ 'html' => $html ]);
        }

        return response()->json(['html' => '' ]);
    }
}
