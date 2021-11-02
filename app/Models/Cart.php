<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    use HasFactory;

    protected $fillable = [
        'member_id',
        'total_price',
        'note',
        'status'

    ];

    public function member(){
        return $this->hasOne(Member::class,'id','member_id');
    }

    public function cart_details(){
        return $this->hasMany(Cart_detail::class,'order_id','id');
    }


}
