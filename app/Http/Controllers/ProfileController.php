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

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
