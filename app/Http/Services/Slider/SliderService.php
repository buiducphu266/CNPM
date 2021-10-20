<?php

namespace App\Http\Services\Slider;

use App\Models\Slider;
use Illuminate\Support\Facades\Session;


class SliderService
{
    public function insert($request){

        try {
            $request->except(['_token']);
            Slider::create($request->all());

            Session::flash('success','Thêm slider thành công');

        } catch (\Exception $err){
            Session::flash('error', $err->getMessage());
            return false;
        }

        return true;
    }

    public function getAllSlider(){
        return Slider::orderByDesc('id')->paginate(15);
    }

    public function update($request,$slider){

        try {
            $slider->fill($request->input());
            $slider->save();

            Session::flash('success','Cập nhật Slider thành công');

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
            $slider = Slider::where('id', $id)->first();

            if ($slider) {
                $path = str_replace('storage','public',$slider->thumb);
                return $slider->delete();
            }

            Session::flash('success' , 'Xoá Slider thành công');
        }
        catch (\Exception $err){
            Session::flash('error', $err->getMessage());
            return false;
        }

        return true;

    }

    public function show(){
        return Slider::where('active',1)->orderByDesc('sort_by')->get();
    }

    public function search($request)
    {

        $html = '';
        $sliders = Slider::where('name', 'LIKE', '%' . $request->keyword . '%')->get();
        foreach ($sliders as $slider) {

            $html .= '
                    <tr>
                        <td>' . $slider -> id . '</td>
                        <td>' . $slider -> name . '</td>
                        <td>
                            <a target="_blank" href="' . $slider -> thumb . '"><img width="100px" src="' . $slider -> thumb . '"></a>
                        </td>
                        <td>' . $slider -> url . '</td>
                        <td>' . \App\Helpers\Helper::active($slider -> active) . '</td>
                        <td>' . $slider->updated_at . '</td>
                        <td>
                            <a class="btn btn-primary btn-sm" href="/admin/sliders/edit/' . $slider->id . '">
                                <i class="fas fa-edit"></i>
                            </a>
                            <a href="#" class="btn btn-danger btn-sm"
                                onclick="removeRow(' . $slider->id . ', \'/admin/sliders/destroy\')">
                                <i class="fas fa-trash"></i>
                            </a>
                        </td>
                    </tr>
                ';
        }
        return $html;
    }
}
