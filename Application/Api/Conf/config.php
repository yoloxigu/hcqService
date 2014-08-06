<?php
return array(
    'URL_MODEL' => 2,
    'URL_ROUTER_ON' => true,
	'URL_ROUTE_RULES' => array(
        'UserInfo/:name' => array('UserInfo/read', 'status=1', array('ext'=>'json', 'method'=>'get'))
    )
);