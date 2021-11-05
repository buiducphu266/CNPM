<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Services\Contact\ContactService;
use App\Models\Contact;
use Illuminate\Http\Request;

class ContactController extends Controller
{

    protected $contactService;

    public function __construct(ContactService $contactService)
    {
        $this->contactService = $contactService;
    }

    public function index(){
        return view('admin.contact.list',[
            'title' => 'Thông tin liện hệ',
            'contact' => $this->contactService->getContact()
        ]);
    }

    public function show(){
        return view('admin.contact.edit',[
            'title' => 'Cập nhật liên hệ',
            'contact' => $this->contactService->getContact()
        ]);
    }

    public function update(Request $request, Contact $contact){
        if ($this->contactService->update($request,$contact)){
            return redirect('/admin/contact');
        }
        return redirect()->back();
    }
}
