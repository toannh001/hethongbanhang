<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\User;
class UserController extends Controller
{
    //
    public function search(Request $request){
        $username=$request->input('username');
        $email=$request->input('email');
        $name=$request->input('name');
        return User::where( 'username', 'LIKE', '%' . $username . '%' )->Where ( 'email', 'LIKE', '%' . $email . '%' )->Where ( 'name', 'LIKE', '%' . $name . '%' )->get();
    }
}
