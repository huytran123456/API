<?php

namespace App\Http\Controllers;

use App\Http\Requests\AuthRequest;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{

    /**
     * @param AuthRequest $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(AuthRequest $request)
    {
        //Custom your response user detail here if login successful
        $user = [
            'first_name',
            'last_name'
        ];

        //Be careful if you want to change anything below!
        //You can custom $credentials if you want.
        //However,original $credentials is recommended because of OAuth2.
        $credentials = $request->only('email', 'password');
        if (!Auth::attempt($credentials)) {
            return response()->json(['message' => 'Invalid Credentials']);
        }
        $accessToken = Auth::user()->createToken('authToken')->accessToken;
        $auth_user = Auth::user()->only($user);

        return response()
            ->json(['user' => $auth_user, 'access_token' => $accessToken,]);
    }
}
