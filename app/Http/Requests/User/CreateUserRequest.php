<?php

namespace App\Http\Requests\User;

use Illuminate\Foundation\Http\FormRequest;

class CreateUserRequest extends FormRequest
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
            'name' => 'required',
            'phone' => 'required|unique:users,phone',
            'gender' => 'required',
            'image' => 'required|image|mimes:png,jpg,PNG,jpec',
            'password' => 'required|min:6',
            'email'=> 'required|email|unique:users,email'
        ];
    }
}
