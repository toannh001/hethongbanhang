<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Session;
use App\Model\User;
class LoginController extends Controller
{
    //
    public function viewLogin(){
        if (Session::has('link')){
            session()->forget(['link']);
        }
        session(['link' => url()->previous()]);        
        return view('login');
    }
    public function login(Request $request){
        $messages= [
            'username.required' => ':attribute Không được bỏ trống',
            'password.required' => ':attribute Không được bỏ trống',
        ];
        $validator = Validator::make($request->all(), [
            'username'     => 'required',
            'password' => 'required',
        ], $messages);
        if($validator->fails()){
            return redirect()->back()
                        ->withErrors($validator)
                        ->withInput();
        }else{
            $username=$request->username;
            $password=$request->password;
            if (Auth::attempt(['username' => $username, 'password' => $password])) {               
                //return redirect(session('link'));
                $url_back=str_replace(url('/'), '', session('link'));
                if($url_back !='/login'){
                    return redirect($url_back);
                }else{
                    return redirect('/admin');
                }
            }else{
                return redirect()->back()
                        ->with('error', 'tài khoản hoặc mật khẩu không đúng');
            }
        }
    }
    public function logout(){
        Auth::logout();
        return redirect('/login');
    }
}
