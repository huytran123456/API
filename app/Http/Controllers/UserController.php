<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserCreateRequest;
use App\Http\Requests\UserRequest;
use App\Http\Requests\UserUpdateRequest;
use App\Models\User;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;

/**
 * Class UserController
 * @package App\Http\Controllers
 */
class UserController extends Controller
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;


    /**
     * @return \Illuminate\Http\JsonResponse
     */
    public function index()
    {
        // Controlling selected data and conditions
        $select = [
            'u.id as ID',
            'u.first_name as First Name',
            'u.last_name as Last Name',
            'u.email as Email',
            'u.phone as Phone',
            'u.dob',
            'u.gender_id as gender',
            'u.country_id as country',
            DB::raw("CONCAT(
                '[',
                GROUP_CONCAT(
                    JSON_OBJECT(
                        'title_id', t . title_id,
                        'title_name', t . title_name)), ']') as titles")
        ];
        $where = [
            ['u.is_delete', '=', 0],
        ];
        $joinTable = [
            ['user_titles as ut', 'u.id', '=', 'ut.user_id'],
            ['titles as t', 'ut.title_id', '=', 't.title_id']
        ];
        $groupBy = [
            'u.id'
        ];

        // Don't care
        $model = new User();
        $resultQuery = $model->getListUsers($select, $where, $joinTable);
        $resultQuery = $resultQuery->groupBy($groupBy)->get();
        $result = collect($resultQuery);
        $genders = config('datasources.genders');
        $countries = config('datasources.countries');
        $genders = collect($genders)->keyBy('gender_id');
        $result = $result->map(function ($x) use ($genders, $countries) {
            $t = collect(json_decode($x->titles));
            $t = $t->sortBy('title_id')->values()->all();
            $x->titles = $t;
            $des = $genders->get($x->gender);
            $x->gender = $des['gender_name'];
            $x->country = $countries[$x->country];

            return $x;
        }, $result);

        return response()->json($result);
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
    public function show(Request $request)
    {
        //Get user id
        $id = $request->user()->id;
        //Select ,where column here
        $select = [
            'users.id as ID',
            'users.first_name as First Name',
            'users.last_name as Last Name',
            'users.email as Email',
            'users.phone as Phone',
            'users.dob',
            'users.gender',
        ];
        $selectTitle = [
            'title_name',
            'title_id',
            'user_id'
        ];
        $where = [
            ['id', '=', $id],
            ['is_delete', '=', 0]
        ];
        $joinTable = [
            ['user_titles', 'users.id', '=', 'user_titles.user_id'],
            ['titles', 'user_titles.title_id', '=', 'titles.title_id']
        ];

        //Don't care
        $model = new User();
        $resultQuery = $model->getListUsers($select, $where)->get();
        $title = $model->getListUsers($selectTitle, $where, $joinTable)->get();
        $titleUser = collect($title)->groupBy('user_id');
        $result = collect($resultQuery)->toArray();
        foreach ($result as & $re) {
            $re = (array)$re;
            $re = Arr::add($re, 'titles', $titleUser[$re['ID']]);
        }

        return response()->json($result);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param App\Http\Requests\UserUpdateRequest $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(UserUpdateRequest $request)
    {
        //Get id from user
        $id = $request->user()->id;
        //Select ,where, update column here
        $select = ['first_name',
            'last_name',
            'phone'
        ];
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
        $select = ['is_delete'];
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
