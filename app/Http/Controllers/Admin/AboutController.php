<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Services\About\AboutService;
use App\Models\About;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    protected $aboutService;

    public function __construct(AboutService $aboutService)
    {
        $this->aboutService = $aboutService;
    }

    public function create(){
        return view('admin.about.add',[
            'title' => 'Thêm About'
        ]);
    }

    public function store(Request $request)
    {
        $this->aboutService->insert($request);

        return redirect()->back();
    }

    public function index()
    {
        return view('admin.about.list', [
            'title' => 'Danh Sách About',
            'abouts' => $this->aboutService->getAll()
        ]);
    }

    public function show(About $about){
        return view('admin.about.edit', [
            'title' => 'Cập nhật About',
            'about' => $about
        ]);
    }

    public function update(Request $request,About $about){
        $result = $this->aboutService->update($request,$about);
        if($result){
            return redirect('/admin/abouts/list');
        }
        return redirect()->back();
    }

    public function destroy(Request $request): JsonResponse
    {
        $result = $this->aboutService->destroy($request);
        if ($result) {
            return response()->json([
                'error' => false,
                'message' => 'Xóa thành công About'
            ]);
        }

        return response()->json([
            'error' => true
        ]);

    }
}
