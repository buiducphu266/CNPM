<?php

namespace App\Http\View\Composers;

use App\Models\Menu;
use Illuminate\View\View;

class MenuComposer
{

    protected $users;


    public function __construct()
    {

    }


    public function compose(View $view)
    {
        $menus = Menu::where('active', 1)->get();
        $view->with('menus', $menus);
    }
}
