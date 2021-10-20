<?php


namespace App\Http\Services\Customer;


use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class CustomerService
{
    public function login($request){
        $this->validate($request, [
            'email' => 'required|email:filter',
            'password' => 'required'
        ]);

        if (Auth::guard('member')->attempt([
            'email' => $request->input('email'),
            'password' => $request->input('password')
        ], $request->input('remember'))) {

            return redirect()->route('home');
        }

        Session::flash('error', 'Email hoặc Password không đúng');
        return redirect()->back();
    }

}
