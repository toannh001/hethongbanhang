<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\User;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Lib\Api;
use Facade\FlareClient\Api as FlareClientApi;
use Illuminate\Pagination\LengthAwarePaginator as Paginator;

class UserController extends Controller
{
    //
    public function __construct()
    {
        //$this->middleware('auth');
    }
    public function getList(Request $request){
        if($request->has('username')){ // Nếu là tìm kiếm
            /*code ko gọi qua api
            $username=$request->input('username');
            $email=$request->input('email');
            $name=$request->input('name');
            $users=User::where( 'username', 'LIKE', '%' . $username . '%' )->Where ( 'email', 'LIKE', '%' . $email . '%' )->Where ( 'name', 'LIKE', '%' . $name . '%' )->paginate(5);
            return view('/admin/user/user', compact('users'));
            */
            $username=$request->input('username');
            $email=$request->input('email');
            $name=$request->input('name');
            $body=[
                'username' => $username,
                'email' => $email,
                'name' => $name             
            ];
            $api=new Api();
            $users=$api->WebPost('http://localhost/hethongbanhang/api/user',$body);
        }else{
            $api=new Api();
            $users=$api->WebGet('http://localhost/hethongbanhang/api/user');
        }
        //code phân trang vì sử dụng api ko dùng đc paginate
        $page=$request->page;
        if($page == '')
        {
            $page=1;
        }
        $count = count($users);
        $perPage=3;//số bản ghi trong 1 trang
        $offset = ($page-1) * $perPage;
        $users = array_slice($users, $offset, $perPage);
        $data = new Paginator($users,$count,$perPage,$page, ['path'  => $request->url(),'query' => $request->query(),]);
        $stt=$offset+1;
        //$users=User::paginate(1);
        //dd($users);
        return view('/admin/user/user', compact('data','stt'));
        
    }
    public function add(Request $request){
        $messages= [
            'username.required' => ':attribute không được bỏ trống',
            'username.unique' => ':attribute đã tồn tại',
            'password.required' => ':attribute không được bỏ trống',
            'password.min' => ':attribute không được dưới 5 ký tự',
            'email.required' => ':attribute không được bỏ trống',
        ];
        $validator = Validator::make($request->all(), [
            'username'     => 'required|unique:users',
            'password' => 'required|min:5|',
            'email'    => 'required|email|unique:users',
        ], $messages);
        if($validator->fails()){
            return redirect()->back()
                        ->withErrors($validator)
                        ->withInput();
        }else{
            $User=new User();
            $User->username=$request->input('username');
            $User->password=Hash::make($request->input('password'));
            $User->name=$request->input('name');
            $User->email=$request->input('email');
            $User->save();
            return redirect('/admin/user/add')
                        ->with('success', 'User '.$request->input('username').' vừa được thêm vào !');
        }
    }
    public function edit($id){
        $User=User::Where('id',$id)->get();
        return view('/admin/user/edit', compact('User'));
    }
    public function update(Request $request, $id){
        $messages= [
            'username.required' => ':attribute không được bỏ trống',
            'username.unique' => ':attribute đã tồn tại',
            'password.required' => ':attribute không được bỏ trống',
            'password.min' => ':attribute không được dưới 5 ký tự',
            'email.required' => ':attribute không được bỏ trống',
            'email.unique' => ':attribute đã tồn tại',
        ];
        $validator = Validator::make($request->all(), [
            'username'     => 'required|unique:users',
            'password' => 'required|min:5|',
            'email'    => 'required|email|unique:users',
        ], $messages);
        if($validator->fails()){
            return redirect()->back()
                        ->withErrors($validator)
                        ->withInput();
        }else{
            $api=new Api();
            $username=$request->input('username');
            $email=$request->input('email');
            $name=$request->input('name');
            $pass=Hash::make($request->input('password'));
            $body=[
                'username' => $username,
                'email' => $email,
                'name' => $name,
                'password'=> $pass,            
            ];
            $users=$api->WebPut('http://localhost/hethongbanhang/api/user/edit/'.$id,$body);
            /*
            $User=User::find($id);
            $User->username=$request->input('username');
            $User->password=Hash::make($request->input('password'));
            $User->name=$request->input('name');
            $User->email=$request->input('email');
            $User->save();
            */
            return redirect()->back()
                            ->with('success', 'User '.$request->input('username').' vừa được cập nhật !');
        }
    }
    public function delete($id){
        $result = User::find($id);
    	$result ->delete();
        return redirect('/admin/user')
                        ->with('delete', 'Xóa thành công');
    }
    public function viewDetail(Request $request)
    {
        if ($request->ajax()) {
            $output = '';
            $User = User::find($request->id);
            if ($User) {                
                    $output .= $User->username;
                    $output .= $User->email;
                    $output .= $User->name;     
            }
            
            return response($User);
        }
        else{
            return "not found";
        } 
        //return response()->json(['success'=>'Data is successfully added']);
    }
}
