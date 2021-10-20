<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Http\Requests\Customer\RegisterCusRequest;
use App\Http\Services\Customer\CustomerService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class CustomerController extends Controller
{
    protected $customerService;

    public function __construct(CustomerService $customerService)
    {
        $this->customerService = $customerService;
    }

    public function index(){

        return view('front-end.customer.login',[
            'title' => 'Đăng nhập tài khoản'
        ]);
    }

    public function login(Request $request)
    {
        $this->validate($request, [
            'username' => 'required|min:8',
            'password' => 'required|min:6'
        ]);

        if (Auth::guard('member')->attempt([
            'username' => $request->input('username'),
            'password' => $request->input('password')
        ], $request->input('remember'))) {

            return redirect()->route('home');
        }

        Session::flash('error', 'Email hoặc Password không đúng');
        return redirect()->back();
    }

    public function register(){

        return view('front-end.customer.register',[
            'title' => 'Đăng kí tài khoản'
        ]);
    }

    public function store(RegisterCusRequest $request){
        return redirect()->back();
    }
}
