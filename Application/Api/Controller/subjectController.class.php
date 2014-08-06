<?php
namespace Api\Controller;
use Think\Controller\RestController;
class subjectController extends RestController {
    protected $allowMethod = array('get', 'post', 'put');
    protected $allowType = array('json');
    protected $defaultType = 'json';


    public function read(){
        $UserInfo = M('UserInfo');
        $Subject = M('Subject');
        $accountId = $_GET['account_id'];
        $callback = $_GET['callback'];




        $joinGroups = $UserInfo->where('account_id=' . $accountId)->getField('join_groups');

        $condition['publish_from_group_id'] = array('in', $joinGroups);
        $subjects = $Subject->where($condition)->select();

        foreach($subjects as $index => $item) {
            foreach($item as $key => $value) {
                if ($key === 'subject_pictrues') {
                    $subjects[$index]['subject_pictrues'] = explode(',', $subjects[$index]['subject_pictrues']);

                }
            }
        }

        //var_dump($subjects);
        //exit(0);
        header('Content-type:application/x-javascript');
        $data = json_encode($subjects);
        echo $callback . "($data)";
    }
}