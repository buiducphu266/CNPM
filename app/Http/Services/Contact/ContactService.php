<?php


namespace App\Http\Services\Contact;


use App\Models\Contact;
use Illuminate\Support\Facades\Session;

class ContactService
{
    public function getContact(){
        return Contact::first();
    }

    public function update($request,$contact){
        try {

            $contact->fill($request->input());
            $contact->save();

            Session::flash('success','Cập nhật thành công');
        }catch (\Exception $err){
            Session::flash('error', $err->getMessage());
            return false;
        }

        return true;
    }
}
