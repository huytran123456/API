<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            //
            'first_name' => 'required',
            'last_name'  => 'required',
            'email'      => 'required|email|unique:App\Models\User,email',
            'phone'      => 'required',
            'password'   => 'required'
        ];
    }

    public function messages()
    {
        return [
            'first_name.required' => 'A first_name is required',
            'last_name.required'  => 'A last_name is required',
            'email.required'      => 'An email is required',
            'email.email'         => 'An email is invalid',
            'phone.required'      => 'A phone is required',
            'password.required'   => 'A email is required',
        ];
    }
}
