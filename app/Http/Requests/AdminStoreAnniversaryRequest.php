<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Auth;

class AdminStoreAnniversaryRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return Auth::user()->superuser;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
         /*   //
            'header'=>'required|min:155,max:255',
            'preview'=>'required|min:100,max:155',
            'main_text'=>'required',
            'anniversary'=>'required',
            'image'=>'required',
            'tags'=>'required|min:2,max:24'*/
        ];
    }
}
