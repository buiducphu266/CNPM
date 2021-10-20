<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    use HasFactory;

    protected $fillable = [
        'customer_id',
        'total_price',
        'note',
        'status'

    ];

    public function customer(){
        return $this->hasOne(Customer::class,'id','customer_id');
    }

    public function cart_details(){
        return $this->hasMany(Cart_detail::class,'order_id','id');
    }


}
