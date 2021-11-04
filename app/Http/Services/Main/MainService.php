<?php


namespace App\Http\Services\Main;


use App\Models\About;
use App\Models\Contact;

class MainService
{
    public function contact(){
        return Contact::first();
    }

    public function about(){
        return About::get();
    }

}
