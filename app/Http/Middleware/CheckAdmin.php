<?php

namespace App\Http\Middleware;
use Illuminate\Support\Facades\Auth;

use Closure;

class CheckAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(Auth::check()){
            $user = Auth::user();
            if($user->username == 'admin'){
                return $next($request);
            }else{
                Auth::logout();
                return redirect()->route('login')->with('error', 'Bạn không có quyền');;
            }
        }
        return redirect()->route('login');
    }
}
