<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\CreateFirstAdminRequest;
use App\User;
use Auth;
use App\Http\Controllers\Controller;

class UserController extends Controller implements CRUDMethods
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

    public function index()
    {
        // TODO: Implement index() method.
    }

    public function store()
    {
        // TODO: Implement store() method.
    }

    public function create()
    {
        // TODO: Implement create() method.
    }

    public function destroy($object)
    {
        // TODO: Implement destroy() method.
    }

    public function update($object)
    {
        // TODO: Implement update() method.
    }

    public function show($object)
    {
        // TODO: Implement show() method.
    }

    public function edit($object)
    {
        // TODO: Implement edit() method.
    }
}
