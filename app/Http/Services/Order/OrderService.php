<?php

namespace App\Http\Services\Order;

use App\Models\Cart;
use App\Models\Cart_detail;
use App\Models\Customer;
use Illuminate\Support\Facades\Session;

class OrderService
{
    public function getOrder(){
        return Cart::orderByDesc('id')->with('customer')->paginate(20);
    }

    public function destroy($request){
        try {
            $id = (int)$request->input('id');
            $Customer = Customer::where('id', $id)->first();

            if ($Customer) {
                return Customer::where('id', $id)->delete();
            }

            Session::flash('success' , 'Xoá đơn hàng thành công');
        }
        catch (\Exception $err){
            Session::flash('error', $err->getMessage());
            return false;
        }

        return true;
    }

    public function getCartById($id){
        return Cart::where('id',$id)->with('customer')->firstOrFail();
    }

    public function getCart_details($id){
         $carts_id = Cart::select('id')->where('id',$id)->get();
         return Cart_detail::whereIn('order_id',$carts_id)->with('product')->get();
    }

    public function search($request){

        $html = '';
        $carts = Customer::where('name','LIKE','%'.$request->keyword.'%')->get();
        foreach ($carts as $cart){
            $html .= '
                    <tr>
                        <td>' . $cart -> id . '</td>
                        <td>' . $cart->name . '</td>
                        <td>' . $cart -> phone . '</td>
                        <td>' . $cart -> email . '</td>
                        <td>' . $cart -> created_at . '</td>
                        <td>
                            <a class="btn btn-primary btn-sm" href="/admin/order/view/' . $cart->id . '">
                                <i class="fas fa-eye"></i>
                            </a>
                            <a href="#" class="btn btn-danger btn-sm"
                                onclick="removeRow(' . $cart->id . ', \'/admin/order/destroy\')">
                                <i class="fas fa-trash"></i>
                            </a>
                        </td>
                    </tr>
                ';
        }
        return $html;
    }

}
