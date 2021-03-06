<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Http\Requests\Customer\AccCusRequest;
use App\Http\Requests\Customer\ChangePassRequest;
use App\Http\Requests\Customer\RegisterCusRequest;
use App\Http\Services\Customer\CustomerService;
use App\Models\Member;
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

    public function logout(){
        Auth::guard('member')->logout();
        return redirect()->back();
    }

    public function register(){

        return view('front-end.customer.register',[
            'title' => 'Đăng kí tài khoản'
        ]);
    }

    public function store(RegisterCusRequest $request){
        if($this->customerService->store($request)){
            return redirect('/login');

        }else {
            return redirect()->back();
        }
    }

    public function show_acc(){
        return view('front-end.customer.view_acc',[
            'title' => 'My Account',
            'customer' => $this->customerService->getCus()
        ]);
    }

    public function update_acc(AccCusRequest $request){
        $this->customerService->update_acc($request);
        return redirect()->back();
    }

    public function change_password(){
        return view('front-end.customer.change_pass',[
            'title' => 'Change Password'
        ]);
    }

    public function update_change(ChangePassRequest $request,Member $member){
        $this->customerService->change_pass($request,$member);
        return redirect()->back();
    }
}
