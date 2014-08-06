<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
        $this->display('../../../Public/index');
        //$this->display('../../../Public/test');
    }

    public function getUserInfo(){
        $userAccount = M('UserAccount');
        $userName = $_GET['name'];
        $callback = $_GET['callback'];
        $userInfo = $userAccount->where('name="' . $userName . '"')->find();

        header('Content-type:application/x-javascript');
        $data = json_encode($userInfo);
        echo $callback."$data";
    }

    function dump($var, $echo=true,$label=null, $strict=true)
    {
        $label = ($label===null) ? '' : rtrim($label) . ' ';
        if(!$strict) {
            if (ini_get('html_errors')) {
                $output = print_r($var, true);
                $output = "<pre>".$label.htmlspecialchars($output,ENT_QUOTES)."</pre>";
            } else {
                $output = $label . " : " . print_r($var, true);
            }
        }else {
            ob_start();
            var_dump($var);
            $output = ob_get_clean();
            if(!extension_loaded('xdebug')) {
                $output = preg_replace("/\]\=\>\n(\s+)/m", "] => ", $output);
                $output = '<pre>'. $label. htmlspecialchars($output, ENT_QUOTES). '</pre>';
            }
        }
        if ($echo) {
            echo($output);
            return null;
        }else
            return $output;
    }
}