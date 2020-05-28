<?php
namespace App\Lib;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use GuzzleHttp\Client;
class Api extends Controller
{
    
    public $acces_token="5cf131ec190d47d05";
    public $username='toannh';
    public $password='123456';
    public function __construct()
    {
        $client = new Client();
        $response = $client->request('POST','http://localhost/hethongbanhang/api/login', [
            'form_params' => [
                'username' => $this->username,
                'password' => $this->password             
            ]
        ]);
        $result=json_decode($response->getBody(), true);
        $this->acces_token=$result['access_token'];
    }
	public function WebGet($url){
		//Global $apikey;
		$client = new Client();
        $res = $client->request('GET', $url,[
            'headers' => [
                'Authorization' => 'Bearer '.$this->acces_token,
                'Accept' => 'application/json',
            ],
        ]);
        return json_decode($res->getBody(), true);
    }
    public function WebPost($url,$body){
		//Global $apikey;
		$client = new Client();
        $res = $client->request('POST', $url,[
            'headers' => [
                'Authorization' => 'Bearer '.$this->acces_token,
                'Accept' => 'application/json',
            ],
            'form_params' => $body,
        ]);
        return json_decode($res->getBody(), true);
    }
    public function WebPut($url,$body){
		//Global $apikey;
		$client = new Client();
        $res = $client->request('PUT', $url,[
            'headers' => [
                'Authorization' => 'Bearer '.$this->acces_token,
                'Accept' => 'application/json',
            ],
            'json' => $body,
        ]);
        return json_decode($res->getBody(), true);
    }
}