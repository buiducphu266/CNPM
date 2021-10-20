<?php


namespace App\Http\Services\Product;


use App\Models\Menu;
use App\Models\Product;
use Illuminate\Support\Facades\Session;

class ProductAdminService
{
    public function getMenu()
    {
        return Menu::where('active', 1)->get();
    }

    public function isValPrice($request){
        if( (int)$request->input('price_sale') > 0
            && (int)$request->input('price') > 0
            && (int)$request->input('price_sale') >= (int)$request->input('price')){
            Session::flash('error', 'Giá chưa giảm phải lớn hơn hoặc bằng giá giảm');
            return false;
        }

        if( $request -> input('qty') < 0 || $request -> input('qty') > 100  ){
            Session::flash('error', 'Số lượng sản phẩm trong khoảng từ 0 -> 100');
            return false;
        };

        return true ;
    }

    public function insert($request){
        $isValPrice = $this->isValPrice($request);
        if($isValPrice === false) return false;

        try {
            $request->except(['_token']);
            Product::create($request->all());

            Session::flash('success','Thêm sản phẩm thành công');

        } catch (\Exception $err){
            Session::flash('error', $err->getMessage());
            return false;
        }

        return true;
    }

    public function getAllProduct(){
        return Product::with('menu')
        ->orderByDesc('id')->paginate(15);
    }

    public function update($request,$product){

        $isValidPrice = $this->isValPrice($request);
        if($isValidPrice === false) return false;

        try {
            $product->fill($request->input());
            $product->save();

            Session::flash('success','Cập nhật sản phẩm thành công');

        } catch (\Exception $err){
            Session::flash('error', $err->getMessage());
            return false;
        }

        return true;
    }

    public function destroy($request)
    {
        try {
            $id = (int)$request->input('id');
            $product = Product::where('id', $id)->first();

            if ($product) {
                return Product::where('id', $id)->delete();
            }

            Session::flash('success' , 'Xoá sản phẩm thành công');
        }
        catch (\Exception $err){
            Session::flash('error', $err->getMessage());
            return false;
        }

        return true;

    }

    public function search($request)
    {

        $html = '';
        $products = Product::where('name', 'LIKE', '%' . $request->keyword . '%')->with('menu')->get();
        foreach ($products as $product) {

            $html .= '
                    <tr>
                        <td>' . $product->id . '</td>
                        <td>
                            <a target="_blank" href="'. $product->thumb .'"><img width="100px" src="'. $product->thumb .'"></a>
                        </td>
                        <td>' . $product->name . '</td>
                        <td>' . $product -> menu ->name . '</td>
                        <td>' . $product -> price . '</td>
                        <td>' . $product -> price_sale . '</td>
                        <td>' . \App\Helpers\Helper::active($product->active) . '</td>
                        <td>' . $product -> updated_at . '</td>
                        <td>
                            <a class="btn btn-primary btn-sm" href="/admin/products/edit/' . $product->id . '">
                                <i class="fas fa-edit"></i>
                            </a>
                            <a href="#" class="btn btn-danger btn-sm"
                                onclick="removeRow(' . $product->id . ', \'/admin/products/destroy\')">
                                <i class="fas fa-trash"></i>
                            </a>
                        </td>
                    </tr>
                ';
        }
        return $html;
    }


}
