<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserCreateRequest;
use App\Http\Requests\UserRequest;
use App\Http\Requests\UserUpdateRequest;
use App\Models\User;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;

/**
 * Class UserController
 * @package App\Http\Controllers
 */
class UserController extends Controller
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Controlling selected data and conditions
        $Select = [
            'id',
            'first_name',
            'last_name',
            'email',
            'phone'
        ];
        $Where = [
            ['is_Delete', '=', 0],
        ];

        // Don't care
        $result = User::getListUsers($Select, $Where)->get();
        $res = collect($result)->toArray();

        return response()->json($res);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(UserRequest $request)
    {
        //Create field
        $Create = [
            'first_name',
            'last_name',
            'email',
            'phone',
            'password'
        ];


        //Dont care
        $content = $request->only($Create);
        $user = DB::table('users')
                  ->insert($content);

        return response()->json($user, 200);
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
        $Select = ['*'];
        $Where = [
            ['id', '=', $id],
            ['is_Delete', '=', 0]
        ];


        //Don't care
        $user = User::getListUsers($Select, $Where)->get();
        $User = collect($user)->toArray();
        //  var_dump($User);die;
        $result = ($User !== []) ? 1 : 0;

        return response()->json([
            'result' => $result,
            'data'   => $user
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(UserUpdateRequest $request, $id)
    {
        //Select ,where, update column here
        $Select = ['*'];
        $Where = [
            ['id', '=', $id],
            ['is_Delete', '=', 0]
        ];
        $Update = [
            'first_name',
            'last_name',
            'phone'
        ];


        //Ignore it if you dont change your structure
        $findUser = User::getListUsers($Select, $Where);
        //var_dump($findUser->get());die;
        //   $result = (empty($findUser->get())) ? 0 : 1;
        $requestContent = $request->only($Update);
        //remove null on content
        $requestContent = array_diff($requestContent, [null, ""]);
        $result = $findUser->update($requestContent);

        return response()->json($result, Response::HTTP_ACCEPTED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //Select ,where, update column here
        $Select = ['*'];
        $Where = [
            ['id', '=', $id],
            ['is_Delete', '=', 0]
        ];
        $Destroy = [
            'is_Delete' => 1
        ];

        //Ignore it if you dont change your structure
        $user = User::getListUsers($Select, $Where);
        // var_dump($user);die;
        $res = $user->update($Destroy);

        return response()->json($res);
    }
}
