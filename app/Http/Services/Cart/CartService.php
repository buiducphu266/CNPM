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

        if($product_id <= 0 || $qty <= 0 ){
            Session::flash('error','Số lượng hoặc sản phẩm không chính sách');
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
        try {

            $carts = Session::get('carts');
            if (is_null($carts)){
                return false;
            }
            $customer = Customer::create([
                'name' => (string)$request->input('name'),
                'phone' => (string)$request->input('phone'),
                'address' => (string)$request->input('address'),
                'email' => (string)$request->input('email')
            ]);

            $this->addProductCart($carts, $customer->id,$request);
            DB::commit();
            Session::flash('success', 'Đặt Hàng Thành Công');

            Session::forget('carts');
        }
        catch (\Exception $ex){
            DB::rollBack();
            Session::flash('error', 'Đặt Hàng Lỗi, Vui lòng thử lại sau');
            return false;
        }

        return true;
    }

    public function addProductCart($carts, $customerId,$request){
        if (is_null($carts)){
            return [];
        }
        try {
            $order = Cart::create([
                'customer_id' => $customerId,
                'total_price' => $request -> input('total_price'),
                'note' => $request -> input('note'),
                'status' => 0
            ]);


            $productId = array_keys($carts);


            $products = Product::where('active',1)->whereIn('id',$productId)->get();

        foreach ($products as $product){
            Cart_detail::create([
                'order_id' => $order->id,
                'product_id' => $product->id,
                'qty' => $carts[$product->id],
                'price' => $product->price_sale != 0 ? $product->price_sale : $product->price

            ]) ;
        }
        }catch (\Exception $err){
            Session::flash('error', $err->getMessage());
            return false;
        }

    }


}
