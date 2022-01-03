<?php


namespace App\Helpers;

use App\Models\Customer;
use Illuminate\Support\Str;
use phpDocumentor\Reflection\Types\True_;

class Helper
{
    public static function menu($menus, $parent_id = 0, $char = '')
    {
        $html = '';

        foreach ($menus as $key => $menu) {
            if ($menu->parent_id == $parent_id) {
                $html .= '
                    <tr>
                        <td>' . $menu->id . '</td>
                        <td>' . $char . $menu->name . '</td>
                        <td>' . self::active($menu->active) . '</td>
                        <td>' . $menu->updated_at . '</td>
                        <td>
                            <a class="btn btn-primary btn-sm" href="/admin/menus/edit/' . $menu->id . '">
                                <i class="fas fa-edit"></i>
                            </a>
                            <a href="#" class="btn btn-danger btn-sm"
                                onclick="removeRow(' . $menu->id . ', \'/admin/menus/destroy\')">
                                <i class="fas fa-trash"></i>
                            </a>
                        </td>
                    </tr>
                ';

                unset($menus[$key]);

                $html .= self::menu($menus, $menu->id, $char . '|--');
            }
        }

        return $html;
    }

    public static function active($active = 0): string
    {
        return $active == 0 ? '<span class="btn btn-danger btn-xs">NO</span>'
            : '<span class="btn btn-success btn-xs">YES</span>';
    }

    public static function menus($menus, $parent_id = 0) :string
    {
        $html = '';
        foreach ($menus as $key => $menu) {
            if ($menu->parent_id == $parent_id) {
                $html .= '
                    <li>
                        <a href="/danh-muc/' . $menu->id . '-' . Str::slug($menu->name, '-') . '.html">
                            ' . $menu->name . '
                        </a>';

                unset($menus[$key]);

                if (self::isChild($menus, $menu->id)) {
                    $html .= '<ul class="sub-menu">';
                    $html .= self::menus($menus, $menu->id);
                    $html .= '</ul>';
                }

                $html .= '</li>';
            }
        }

        return $html;
    }

    public static function isChild($menus, $id) : bool
    {
        foreach ($menus as $menu) {
            if ($menu->parent_id == $id) {
                return true;
            }
        }

        return false;
    }

    public static function price($product){

        if((int)$product->price != 0 && (int)$product->price_sale != 0 && (int)$product->qty > 0) return '<p style="color: red"><del style="color: black;">' . number_format($product->price) .'VNĐ</del>'. number_format($product->price_sale) .'VNĐ</p>';
        if((int)$product->price != 0 && (int)$product->priceSale == 0 && (int)$product->qty > 0) return '<p style="color: red">'. number_format($product->price) .'VNĐ</p>';
        if((int)$product->qty == 0) return '<p style="color: red;"><del style="color: black;">' . number_format($product->price) .'VNĐ</del> HẾT HÀNG</p>';
    }

    public static function getNameCus($id){
        $cus = Customer::where('id_member',$id)->first();
        return $cus;
    }



}
