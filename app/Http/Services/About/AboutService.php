<?php


namespace App\Http\Services\About;


use App\Http\Controllers\Admin\AboutController;
use App\Models\About;
use Illuminate\Support\Facades\Session;

class AboutService
{
    public function insert($request){

        try {
            $request->except(['_token']);
            About::create($request->all());

            Session::flash('success','Thêm thành công');

        } catch (\Exception $err){
            Session::flash('error', $err->getMessage());
            return false;
        }

        return true;
    }

    public function getAll(){
        return About::orderByDesc('id')->paginate(15);
    }

    public function update($request,$about){

        try {
            $about->fill($request->input());
            $about->save();

            Session::flash('success','Cập nhật thành công');

        } catch (\Exception $err){
            Session::flash('error', $err->getMessage());
            return false;
        }

        return true;
    }

    public function destroy($request)
    {
        try {
            $id = (int)$request->input('id');
            $about = About::where('id', $id)->first();

            if ($about) {
                $path = str_replace('storage','public',$about->thumb);
                return $about->delete();
            }

            Session::flash('success' , 'Xoá Slider thành công');
        }
        catch (\Exception $err){
            Session::flash('error', $err->getMessage());
            return false;
        }

        return true;

    }
}
