<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Services\Order\OrderService;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    protected $orderService;

    public function __construct(OrderService $orderService){
        $this->orderService = $orderService;
    }

    public function show(){
        return view('admin.order.list',[
           'title' => 'Danh sách đơn hàng',
            'orders' => $this->orderService->getOrder()
        ]);
    }

    public function destroy(Request $request){
        $result = $this->orderService->destroy($request);
        if ($result) {
            return response()->json([
                'error' => false,
                'message' => 'Xóa thành công đơn hàng'
            ]);
        }

        return response()->json([
            'error' => true
        ]);
    }

    public function show_detail($id){
        return view('admin.order.detail',[
            'title' => 'Chi tiết đơn hàng',
            'cart' => $this->orderService->getCartById($id),
            'cart_details' => $this->orderService->getCart_details($id)
        ]);
    }

    public function search(Request $request){
        $result = $this->orderService->search($request);
        return response()->json([
            'error' => false,
            'html' => $result
        ]);


    }
}
