<?php

namespace App\Http\Services\Cart;

use App\Models\Cart;
use App\Models\Cart_detail;
use App\Models\Customer;
use App\Models\Product;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class CartService
{
    public function create($request){
        $product_id = $request->product_id;
        $qty = $request->num_product;
        $product = Product::where('active',1)->where('id',$product_id)->first();

        if($product_id <= 0 || $qty <= 0 ){
            Session::flash('error','Số lượng hoặc sản phẩm không chính sách');
            return false;
        }

        if ($qty > $product->qty){
            Session::flash('error','Số lượng quá lớn');
            return false;
        }
        $carts = Session::get('carts');
        if(is_null($carts)){
            Session::put('carts',[
                $product_id => $qty
            ]);

            return true;
        }

        $exists = Arr::exists($carts, $product_id);
        if ($exists){
            $carts[$product_id] = $carts[$product_id] + $qty;
            Session::put('carts',$carts);

            return true;
        }

        $carts[$product_id] = $qty;
        Session::put('carts',$carts);

        return true;

    }

    public function getProducts(){
        $carts = Session::get('carts');
        if (is_null($carts)){
            return [];
        }

        $productId = array_keys($carts);

        return Product::where('active',1)->whereIn('id',$productId)->get();

    }

    public function getCus(){
        $member_id = \auth()->guard('member')->id();

        return Customer::where('id_member',$member_id)->first();
    }

    public function updateCart($request){
        Session::put('carts', $request->input('num_product'));
        return true;
    }

    public function destroy($id){
        $carts = Session::get('carts');
        unset($carts[$id]);
        Session::put('carts',$carts);
        return true;

    }

    public function addCart($request){
        $carts = Session::get('carts');

        if (is_null($carts)){
            return false;
        }

        try {
            $order = Cart::create([
                'member_id' => \auth()->guard('member')->id(),
                'total_price' => $request -> input('total_price'),
                'note' => $request -> input('note'),
                'status' => 0
            ]);

            $productId = array_keys($carts);

            $products = Product::where('active',1)->whereIn('id',$productId)->get();

            foreach ($products as $product){
                $product -> qty = $product->qty - $carts[$product->id];
                $product -> save();
            }

            foreach ($products as $product){
                Cart_detail::create([
                    'order_id' => $order->id,
                    'product_id' => $product->id,
                    'qty' => $carts[$product->id],
                    'price' => $product->price_sale != 0 ? $product->price_sale : $product->price
                ]) ;
            }

            Session::flash('success', 'Đặt hàng thành công');
            Session::forget('carts');

        }catch (\Exception $err){
            Session::flash('error', $err->getMessage());
            return false;
        }

    }
}
