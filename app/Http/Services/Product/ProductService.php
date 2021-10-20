<?php

namespace App\Http\Services\Product;

use App\Models\Product;

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
}
