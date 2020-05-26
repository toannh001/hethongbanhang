<?php
namespace App\Lib;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use GuzzleHttp\Client;
use App\Lib\Api;
class User
{
    
    public $base_url="api/user";
    public function __construct()
    {
        $this->api= new Api();
    }
	public function GetList($url){
        //Global $apikey;
        $api= new Api();
        return $api->WebGet($this->base_url);
    }    
}