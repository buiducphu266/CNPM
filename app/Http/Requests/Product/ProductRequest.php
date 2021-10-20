<?php

namespace App\Http\Requests\Product;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required|max:255',
            'price' => 'required|',
            'qty' => 'required|',
            'thumb' => 'required'
        ];
    }
    public function messages() : array
    {
        return [
            'name.required' => 'Vui lòng nhập sản phẩm',
            'thumb.required' => 'Vui lòng chọn ảnh',
            'qty.required' => 'Vui lòng nhập số lượng',

            'name.max' => 'Tên sản phẩm vượt quá 255 kí tự',
            'price.required' => 'Vui lòng nhập giá sản phẩm',
        ];
    }
}
