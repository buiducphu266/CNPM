<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Product\ProductRequest;
use App\Http\Services\Product\ProductAdminService;
use App\Models\Product;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    protected $productService;

    public function __construct(ProductAdminService $productService)
    {
        $this->productService = $productService;
    }

    public function index()
    {
        return view('admin.product.list', [
            'title' => 'Danh Sách Sản Phẩm',
            'products' => $this->productService->getAllProduct()
        ]);
    }

    public function create()
    {
        return view('admin.product.add', [
            'title' => 'Thêm Sản Phẩm Mới',
            'menus' => $this->productService->getMenu()
        ]);
    }

    public function store(ProductRequest $request){
        $this->productService->insert($request);
        return redirect()->back();
    }

    public function show(Product $product){
        return view('admin.product.edit', [
            'title' => 'Cập nhật Sản Phẩm',
            'menus' => $this->productService->getMenu(),
            'product' => $product
        ]);
    }

    public function update(ProductRequest $request,Product $product){
        $result = $this->productService->update($request,$product);
        if($result){
            return redirect('/admin/products/list');
        }
        return redirect()->back();
    }

    public function destroy(Request $request): JsonResponse
    {
        $result = $this->productService->destroy($request);
        if ($result) {
            return response()->json([
                'error' => false,
                'message' => 'Xóa thành công Sản phẩm'
            ]);
        }

        return response()->json([
            'error' => true
        ]);

    }

    public function search(Request $request){
        $result = $this->productService->search($request);
        return response()->json([
            'error' => false,
            'html' => $result
        ]);


    }


}
