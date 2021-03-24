<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserCreateRequest;
use Cassandra\Tinyint;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Validator;
use Illuminate\Pagination\Paginator;
use App\Http\Requests\UserRequest;
use App\Http\Requests\UserUpdateRequest;

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
        //
        $UsersList = DB::table('users')
                       ->where('is_Delete', 0)
                       ->get();
        $result = collect($UsersList)->toArray();

        // var_dump($result);die;

        return response()->json($result);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(UserRequest $request)
    {
        //
        $user = User::create([
            'first_name' => $request['first_name'],
            'last_name' => $request['last_name'],
            'email' => $request['email'],
            'phone' => $request['phone'],
            'password' => md5($request['password']),
        ]);

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
        $user = DB::table('users')
                  ->where('id', $id)
                  ->where('is_Delete', 0)
                  ->get();
        $User=collect($user)->toArray();
       //  var_dump($User);die;
        $result = ($User!==[]) ? 1 : 0;

        return response()->json([
            'result' => $result,
            'data' => $user
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
        //
        $findUser = DB::table('users')
                      ->where('id', $id)
                      ->where('is_Delete', 0);
        //var_dump($findUser->get());die;
        $result = (empty($findUser->get())) ? 0 : 1;
        $requestContent = $request->only('first_name', 'last_name', 'phone');
        //remove null on content
        $requestContent = array_diff($requestContent, [null, ""]);
        $user = ($result === 0)
            ? false
            : $findUser->update(
                $requestContent
            );

        return response()->json(User::find($id), Response::HTTP_ACCEPTED);
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
        $user = DB::table('users')
                  ->where('id', $id);
        // var_dump($user);die;
        $res = (empty($user)) ? false : $user->update([
            'is_Delete' => 1
        ]);

        return response()->json(User::find($id));
    }
}
