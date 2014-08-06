'use strict';
angular.module('haochiquanApp')
    .controller('HeaderCtl', function ($scope, $http) {
        $scope.headerVisited = [];

        $scope.visiter = function(length, index) {
            event.preventDefault();
            event.stopPropagation();
            if (0 === $scope.headerVisited.length) {
                for (var i = 0; i < arguments[0]; i++) {
                    if (arguments[1] === i) {
                        $scope.headerVisited.push(true);
                    } else {
                        $scope.headerVisited.push(false);
                    }
                }
            } else {
                for (var j = 0; j < $scope.headerVisited.length; j++) {
                    if (j === arguments[1]) {
                        $scope.headerVisited[j] = true;
                    } else {
                        $scope.headerVisited[j] = false;
                    }
                }
            }
        };

        $http({method: 'JSON', url: 'http://haochiquan.com/index.php/Home/Index/getUserInfo?name=wfwalking'})
            .success(function(data, status) {
                console.log(data);
                $scope.userAccount = data;
            })
            .error(function(data, status) {
                console.log('Error: ' + data);
            });
    });
