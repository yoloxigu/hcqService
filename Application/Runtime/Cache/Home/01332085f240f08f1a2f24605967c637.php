<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
</head>
<body>


<!-- bower:js -->
<script src="Public/bower_components/jquery/dist/jquery.min.js"></script>

<!-- endbower -->

<script>
'use strict';
/*
angular.module('haochiquanApp', ['ngResource'])
        .factory('UserAccount', function($resource) {
            return $resource('http://haochiquan.com/Api/UserInfo/read/', {}, {
                jsonpquery: {
                    method: 'GET',
                    //params: {callback: 'JSON_CALLBACK'},
                    isArray: false
                }
            });
        })
        .controller('HeaderCtl', function ($scope, $http, UserAccount) {
            //var data = UserAccount.jsonpquery();
            //console.log(data);
            $http({
                method: 'JSONP',
                url: 'http://api.haochiquan.com/Api/UserInfo/read'
            })
                    .success(function(data) {
                        console.log(data);
                    })
                    .error(function() {
                        console.log('error');
                    });
        });
*/

var aurl = 'http://api.haochiquan.com/Api/UserInfo/read?callback=?';



    $.ajax({
        url: aurl,
        type: 'POST',
        dataType: 'jsonp',

        success: function(data) {
            console.log(11);
            console.log(data);
        },
        error: function() {
            console.log('error');
        }
    });

</script>
</body>
</html>