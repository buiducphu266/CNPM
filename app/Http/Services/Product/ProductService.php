<?php

namespace App\Http\Services\Product;

use App\Models\Contact;
use App\Models\Product;
use Illuminate\Support\Str;

class ProductService
{
    const LIMIT = 12;

    public function get($page = null)
    {
        return Product::select('id', 'name', 'price', 'price_sale', 'thumb','qty')
            ->orderByDesc('id')
            ->when($page != null, function ($query) use ($page) {
                $query->offset($page * self::LIMIT);
            })
            ->limit(self::LIMIT)
            ->get();
    }

    public function show( $id ){

        return Product::where('id',$id)->with('menu')->where('active',1)->firstOrFail();

    }

    public function loadMore($id){
        return Product::where('id','!=',$id)->where('active',1)->limit(4)->get();
    }

    public function search($request,$id){
        $html = '';
        $products = Product::where('name', 'LIKE', '%' . $request->keyword . '%')->where('menu_id',$id)->get();
        $html .= '<div class="row isotope-grid">';
        foreach ($products as $product){
            $html .= '<div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
            <div class="block2">
                <div class="block2-pic hov-img0">
                    <img src="'. $product->thumb .'" alt="IMG-PRODUCT">

                </div>

                <div class="block2-txt flex-w flex-t p-t-14">
                    <div class="block2-txt-child1 flex-col-l ">
                        <a href="/san-pham/'. $product->id .'-'. Str::slug($product->name, '-') .'.html" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">'
            . $product->name . '</a>

                        <span class="stext-105 cl3">' . \App\Helpers\Helper::price($product) .'</span>


                    </div>


                </div>
            </div>
        </div>';
        }
        $html .= '</div>';

        return $html;
    }

    public function search_all($request){
        $html = '';
        $products = Product::where('name', 'LIKE', '%' . $request->keyword . '%')->limit(3)->get();
        $html .= '<ul class="header-cart-wrapitem w-full">';
        foreach ($products as $product){
            $html .= '<li class="header-cart-item flex-w flex-t m-b-12">
                            <div class="header-cart-item-img">
                                <img src="'.$product->thumb.'" alt="IMG">
                            </div>

                            <div class="header-cart-item-txt p-t-8">
                                <a href="/san-pham/'.$product->id.'-'. Str::slug($product->name, '-').'.html" class="header-cart-item-name m-b-18 hov-cl1 trans-04">'
                                    .$product->name.'</a>

                                <span class="header-cart-item-info">'
                                    .number_format($product->price_sale != 0 ? $product->price_sale : $product->price).'</span>
                            </div>
                        </li>';
        }
        $html .= '</ul>';

        return $html;
    }
}
