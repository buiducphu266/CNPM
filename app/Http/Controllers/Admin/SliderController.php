<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Slider\SliderRequest;
use App\Http\Services\Slider\SliderService;
use App\Models\Slider;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\JsonResponse;

class SliderController extends Controller
{
    protected $sliderService;

    public function __construct(SliderService $sliderService)
    {
        $this->sliderService = $sliderService;
    }

    public function create(){
        return view('admin.slider.add',[
            'title' => 'Thêm Slider mới'
        ]);
    }

    public function store(SliderRequest $request){
        $this->sliderService->insert($request);
        return redirect()->back();
    }

    public function index()
    {
        return view('admin.slider.list', [
            'title' => 'Danh Sách Slider',
            'sliders' => $this->sliderService->getAllSlider()
        ]);
    }

    public function show(Slider $slider){
        return view('admin.slider.edit', [
            'title' => 'Cập nhật Slider',
            'slider' => $slider
        ]);
    }

    public function update(SliderRequest $request,Slider $slider){
        $result = $this->sliderService->update($request,$slider);
        if($result){
            return redirect('/admin/sliders/list');
        }
        return redirect()->back();
    }

    public function destroy(Request $request): JsonResponse
    {
        $result = $this->sliderService->destroy($request);
        if ($result) {
            return response()->json([
                'error' => false,
                'message' => 'Xóa thành công Slider'
            ]);
        }

        return response()->json([
            'error' => true
        ]);

    }
    public function search(Request $request){
        $result = $this->sliderService->search($request);
        return response()->json([
            'error' => false,
            'html' => $result
        ]);


    }
}
