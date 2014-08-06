'use strict';

/**
 * @ngdoc function
 * @name haochiquanApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the haochiquanApp
 */
angular.module('haochiquanApp')
  .controller('MainCtrl', function ($scope) {
    $scope.ads = [
        {
            restaurantName: '餐厅名称 one',
            restaurantPhoto: 'Public/uploads/restaurants/u188.jpg'
        },
        {
            restaurantName: '餐厅名称 two',
            restaurantPhoto: 'Public/uploads/restaurants/u190.JPG'
        },
        {
            restaurantName: '餐厅名称 three',
            restaurantPhoto: 'Public/uploads/restaurants/u192.jpg'
        },
        {
            restaurantName: '餐厅名称 four',
            restaurantPhoto: 'Public/uploads/restaurants/u194.jpg'
        },
        {
            restaurantName: '餐厅名称 five',
            restaurantPhoto: 'Public/uploads/restaurants/u208.jpg'
        },
        {
            restaurantName: '餐厅名称 six',
            restaurantPhoto: 'Public/uploads/restaurants/u208.jpg'
        }
    ];



  });
