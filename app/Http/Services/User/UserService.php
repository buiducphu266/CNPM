<?php


namespace App\Http\Services\User;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;


class UserService
{
    public function getRoles(){
        return Role::all();
    }

    public function insert($request)
    {
        if ((string)$request->input('password') != (string)$request->input('password2')) {
            Session::flash('error', 'Mật khẩu nhập lại không trùng khớp');
            return false;
        }
        try {
            $user = User::create([
                'name' => (string)$request->input('name'),
                'email' => (string)$request->input('email'),
                'password' => Hash::make((string)$request->input('password'))
            ]);

            $role = Role::findById((string)$request->input('role_id'));
            $user_a = User::find($user->id);

            $user_a->syncRoles($role);

            Session::flash('success', 'Tạo User thành công');
        } catch (\Exception $err) {
            Session::flash('error', $err->getMessage());
            return false;
        }

        return true;
    }

    public function getUsers(){
        return User::with('roles')->orderByDesc('id')->paginate(15);
    }

    public function destroy($request)
    {
        try {
            $id = (int)$request->input('id');
            $user = User::find($id);

            if ($user) {

                return $user->delete();
            }

            Session::flash('success' , 'Xoá Slider thành công');
        }
        catch (\Exception $err){
            Session::flash('error', $err->getMessage());
            return false;
        }

        return true;

    }

    public function update($request,$user){

        if ((string)$request->input('password') != (string)$request->input('password2')) {
            Session::flash('error', 'Mật khẩu nhập lại không trùng khớp');
            return false;
        }

        try {

            $user->name = (string)$request->input('name');
            $user->password = (string)$request->input('password');
            $user->save();

            $role = Role::findById((string)$request->input('role_id'));
            $user->syncRoles($role);

            Session::flash('success','Cập nhật Slider thành công');

        } catch (\Exception $err){
            Session::flash('error', $err->getMessage());
            return false;
        }

        return true;
    }
    public function search($request){

        $html = '';
        $users = User::where('name','LIKE','%'.$request->keyword.'%')->get();
        foreach ($users as $user){
            $html .= '
                    <tr>
                        <td>' . $user->id . '</td>
                        <td>' . $user->name . '</td>
                        <td>' . $user -> email . '</td>
                        <td>' . $user -> password . '</td>';
            foreach($user->roles as $role) {
                $html .= '<td> '.$role -> name.' </td>';
            }
            $html .= '  <td>
                            <a class="btn btn-primary btn-sm" href="/admin/users/edit/' . $user->id . '">
                                <i class="fas fa-edit"></i>
                            </a>
                            <a href="#" class="btn btn-danger btn-sm"
                                onclick="removeRow(' . $user->id . ', \'/admin/users/destroy\')">
                                <i class="fas fa-trash"></i>
                            </a>
                        </td>
                    </tr>
                ';
        }
        return $html;
    }
}

