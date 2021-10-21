<?php


namespace App\Http\Services\Customer;


use App\Models\Customer;
use App\Models\Member;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

class CustomerService
{
    public function store($request){
        try {
            $member = Member::create([
                'username' => (string)$request->input('username'),
                'password' => Hash::make((string)$request->input('password')),
            ]);

            $this->addCustomer($request, $member->id);
            DB::commit();
            Session::flash('success', 'Đăng kí member thành công');

        }catch (\Exception $err){
            DB::rollBack();
            Session::flash('error', $err->getMessage());
            return false;
        }

        return true;
    }

    public function addCustomer($request, $member_id){
        try {
            Customer::create([
                'id_member' => $member_id,
                'name' => $request->name,
                'phone' => $request->phone,
                'address' => $request->address,
                'email' => $request->email,

            ]) ;

        }catch (\Exception $err){
            Session::flash('error', $err->getMessage());
            return false;
        }
    }

}
