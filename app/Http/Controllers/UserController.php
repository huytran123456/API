<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserCreateRequest;
use App\Http\Requests\UserRequest;
use App\Http\Requests\UserUpdateRequest;
use App\Models\User;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
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
        $select = [
            'id',
            'first_name',
            'last_name',
            'email',
            'phone'
        ];
        $where = [
            ['is_delete', '=', 0],
        ];

        // Don't care
        $model = new User();
        $result = $model->getListUsers($select, $where)->get();
        $res = collect($result)->toArray();

        return response()->json($res);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param App\Http\Requests\UserRequest $request
     * @return \Illuminate\Http\Response
     */
    public function store(UserRequest $request)
    {
        //Create field
        $create = [
            'first_name',
            'last_name',
            'email',
            'phone',
            'password'
        ];


        //Dont care
        $content = $request->only($create);
        $content['password'] = bcrypt($content['password']);
        $user = DB::table('users')
                  ->insert($content);

        return response()->json($user);
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
        $select = ['*'];
        $where = [
            ['id', '=', $id],
            ['is_delete', '=', 0]
        ];


        //Don't care
        $model = new User();
        $user = $model->getListUsers($select, $where)->get();
        $listUser = collect($user)->toArray();
        //  var_dump($User);die;
        $result = ($listUser !== []) ? 1 : 0;

        return response()->json([
            'result' => $result,
            'data'   => $user
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param App\Http\Requests\UserUpdateRequest $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(UserUpdateRequest $request, $id)
    {
        //Select ,where, update column here
        $select = ['*'];
        $where = [
            ['id', '=', $id],
            ['is_delete', '=', 0]
        ];
        $update = [
            'first_name',
            'last_name',
            'phone'
        ];


        //Ignore it if you dont change your structure
        $model = new User();
        $findUser = $model->getListUsers($select, $where);
        //var_dump($findUser->get());die;
        //   $result = (empty($findUser->get())) ? 0 : 1;
        $requestContent = $request->only($update);
        //remove null on content
        $requestContent = array_diff($requestContent, [null, ""]);
        $result = $findUser->update($requestContent);

        return response()->json($result);
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
        $select = ['*'];
        $where = [
            ['id', '=', $id],
            ['is_delete', '=', 0]
        ];
        $destroy = [
            'is_delete' => 1
        ];

        //Ignore it if you dont change your structure
        $model = new User();
        $user = $model->getListUsers($select, $where);
        // var_dump($user);die;
        $res = $user->update($destroy);

        return response()->json($res);
    }
}
