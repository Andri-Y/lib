<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\CreateFirstAdminRequest;
use App\User;
use Auth;
use App\Http\Controllers\Controller;

class UserController extends Controller
{
    //
    public function storeAdminUser(CreateFirstAdminRequest $request)
    {
        $user = new User();
        $user->email = $request->input('email');
        $user->password = \Hash::make($request->input('password'));
        $user->superuser = true;
        $user->username = 'Admin';
        $user->save();

        Auth::login($user);

        return redirect()->route('news.index');
    }
}
