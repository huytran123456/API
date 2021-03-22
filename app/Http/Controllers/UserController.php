<?php

namespace App\Http\Controllers;
//use App\Http\Requests\UserCreateRequest;
use App\Http\Requests\UserRequest;
use App\Http\Requests\UserUpdateRequest;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Http\JsonResponse;
use Illuminate\Routing\Controller as BaseController;
use App\Models\User;
//use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Pagination\Paginator;
use phpDocumentor\Reflection\Types\Resource_;

/**
 * Class UserController
 * @package App\Http\Controllers
 */
class UserController extends Controller
{


    /**
     * @return \Illuminate\Http\JsonResponse
     */
    public function index():JsonResponse
    {
        //
        $SelectR=['*'];
        $WhereR=[
            ['isDelete','=',0]
        ];
        $mod=new User();
        $yo=$mod->GetUsers($SelectR,$WhereR);
     //   $yo=DB::table('users')->selectRaw('*')->get();
        //dd($yo);
      //  var_dump($yo);die;
      //session('users',$yo);
        return response()->json($yo,200);
    }


    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(UserRequest $request)
    {
        //
    //  $validated = $request->validated();
    //dd($request);
       $user=User::insert([
           $request->only('last_name','first_name','email')

            +['password'=>md5($request['password'])]
       ]);
       return response()->json($user,200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $SelectR=['first_name',
                  'last_name'
    ];
        $WhereR=[
            ['isDelete','=',0],
            ['id','=',$id]
        ];
        $mod=new User();
        $user=$mod->GetUsers($SelectR,$WhereR);
      //  return response()->json(['result'=>$result,'data'=>$user['data']]);
       return response()->json($user);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UserUpdateRequest $request, $id)
    {
        //
        $user=User::where('id',$id)->update(
            $request->only('first_name','last_name','email','phone')
         //   [$request['email']]
        );
        return response()->json($user,Response::HTTP_ACCEPTED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    /**
     * destroy
     *
     * @param  mixed $id
     * @return JsonResponse
     */
    public function destroy( int $id):JsonResponse
    {
        //
        //$user=User::destroy($id);
        $user=User::find($id);
        $result=($user)?User::where('id',$id)->update(['isDelete'=>1]):'fail';
        return response()->json($result);
    }
}
