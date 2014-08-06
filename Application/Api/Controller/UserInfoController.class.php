<?php
namespace Api\Controller;
use Think\Controller\RestController;
class UserInfoController extends RestController {
    protected $allowMethod = array('get', 'post', 'put');
    protected $allowType = array('json');
    protected $defaultType = 'json';

    /*
    public function read() {
        $userName = $_GET['name'];
        echo $userName;
    }
    */
    Public function rest() {
        switch ($this->_method){
            case 'get':
                if ($this->_type == 'json'){
                    $this->read_json();
                }
                break;
        }
    }

    public function read(){
        $userAccount = M('UserAccount');
        $userName = $_GET['name'];
        //$userName = 'wfwalking';
        $callback = $_GET['callback'];
        $userInfo = $userAccount->where('name="' . $userName . '"')->find();

        header('Content-type:application/x-javascript');
        $data = json_encode($userInfo);
        echo $callback . "($data)";
    }
}