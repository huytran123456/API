<?php

namespace App\Http\Controllers;

use App\Http\Requests\FileRequest;
use DB;
use Illuminate\Http\Request;
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
//        //
//        // Storage::disk('local')->put('example.txt', 'Contents');
//        $validated = $request->validate([
//            'id'    => 'string|max:40',
//            'user_image' => 'image|max:2048',
//        ]);
//        dd($request->user_image);
//        $image=$request->user_image;
//      //  $img=Image::make($image);
//     //   Response::make($img->encode('jpeg'));
//        $img=base64_encode($image);
//        //var_dump($img);die;
//        //dd($img);
//        $result=DB::table('users')->where('id',$request->id)
//            ->update(['avatar'=>$img]);

        $img = $request->user_image;
        $result = $img->move('C:/xampp/htdocs/', $img->getCLientOriginalName());

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
