<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Http\Services\Cart\CartService;
use Illuminate\Http\Request;
use \Illuminate\Support\Facades\Session;


class CartController extends Controller
{
    protected $cartService;

    public function __construct(CartService $cartService)
    {
        $this->cartService = $cartService;
    }

    public function store(Request $request){
        $result = $this->cartService->create($request);
        if($result){
            return redirect('/carts');
        }
        else{
            return redirect()->back();
        }

    }

    public function show(){
        $products = $this->cartService->getProducts();
        return view('front-end.cart.list',[
            'title' => 'Danh sách giỏ hàng',
            'products' => $products,
            'customer' => $this->cartService->getCus(),
            'carts' => Session::get('carts')
        ]);
    }

    public function update(Request $request){
        if($this->cartService->updateCart($request)){
            return redirect('/carts');
        }
        else{
            return redirect()->back();
        }

    }

    public function destroy($id){
        if($this->cartService->destroy($id)){
            return redirect('/carts');
        }
    }

    public function login(Request $request){
        return redirect('/login');
    }

    public function addCart(Request $request){
        $this->cartService->addCart($request);
        return redirect()->back();
    }

}
