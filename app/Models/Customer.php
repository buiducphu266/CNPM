<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    use HasFactory;

    protected $fillable = [
        'id_member',
        'name',
        'phone',
        'address',
        'email'
    ];

    public function member(){
        return $this->hasOne(Member::class,'id','id_member');
    }


}
