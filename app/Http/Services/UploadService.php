<?php


namespace App\Http\Services;


use Carbon\Carbon;

class UploadService
{
    public function store($request)
    {

        if ($request->hasFile('file')) {
            try {
                $mytime = Carbon::now()->format('d.m.Y H.i.s');
                $arr = explode(" ",$mytime);
                $name = $arr[1].$request->file('file')->getClientOriginalName();
                $pathFull = 'uploads/' . date("Y/m/d");

                $request->file('file')->storeAs(
                    'public/' . $pathFull, $name
                );

                return '/storage/' . $pathFull . '/' . $name;
            } catch (\Exception $error) {
                return false;
            }
        }
    }
}
