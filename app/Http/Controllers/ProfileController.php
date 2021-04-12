<?php

namespace App\Http\Controllers;

use App\Http\Requests\FileRequest;
use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Image;

class ProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function upload_image(FileRequest $request)
    {
        $img = $request->user_image;
        $image = Image::make($img);
        $image->backup();
        $res = $image->resize(300, null, function ($constraint) {
            $constraint->aspectRatio();
        })->save('C:/xampp/htdocs/large.png');
        $res->reset()->save('C:/xampp/htdocs/backup.png');
        var_dump($res);
        die;
        $fileName = $img->getClientOriginalName();
//        $result = $img->move('C:/xampp/htdocs/', $img->getCLientOriginalName());
        $result = Storage::disk('huy')->put($fileName, file_get_contents($img->getRealPath()));

        return response()->json([
            'result' => $result
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function get_image(Request $request)
    {
        //
        return Storage::disk('huy')->download('42tpwq.png');
    }

}
