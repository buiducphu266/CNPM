<?php

namespace App\Http\Controllers\Admin;

use App\Http\Services\User\UserService;
use App\Models\User;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class UserController extends Controller
{
    protected $userServive;

    public function __construct(UserService $userService){
        $this->userServive = $userService;
    }

    public function create(){
        return view('admin.users.add',[
            'title' => 'Thêm User',
            'roles' => $this->userServive->getRoles()
        ]);
    }

    public function store(Request $request){
        $this->userServive->insert($request);
        return redirect()->back();
    }

    public function index(){
        return view('admin.users.list',[
            'title' => 'Danh sách User',
            'users' => $this->userServive->getUsers()
        ]);
    }

    public function show(User $user){
        return view('admin.users.edit',[
            'title' => 'Cập nhật User',
            'user' => $user,
            'roles' => $this->userServive->getRoles()
        ]);
    }

    public function update(Request $request,User $user){
        $result = $this->userServive->update($request,$user);
        if($result){
            return redirect('/admin/users/list');
        }
        return redirect()->back();
    }

    public function destroy(Request $request){
        $result = $this->userServive->destroy($request);
        if ($result) {
            return response()->json([
                'error' => false,
                'message' => 'Xóa thành công User'
            ]);
        }

        return response()->json([
            'error' => true
        ]);
    }

    public function search(Request $request){
        $result = $this->userServive->search($request);
        return response()->json([
            'error' => false,
            'html' => $result
        ]);


    }
}
