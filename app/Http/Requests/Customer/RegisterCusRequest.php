<?php


namespace App\Http\Requests\Customer;


use Illuminate\Foundation\Http\FormRequest;

class RegisterCusRequest extends FormRequest
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
            'name' => 'required|max:100',
            'username' => 'required|unique:members|max:50',
            'password' => 'required|confirmed|min:6',
            'phone' => 'required',
            'address' => 'required',
            'email' => 'required|email:filter'
        ];
    }

//    public function messages() : array
//    {
//        return [
//
//        ];
//    }

}
