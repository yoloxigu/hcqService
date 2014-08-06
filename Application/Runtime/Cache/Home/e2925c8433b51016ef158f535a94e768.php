<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html xmlns:ng="http://angularjs.org">
  <head>
    <meta charset="utf-8">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">
    <!--[if lte IE 8]>
    <script src="Public/scripts/common/angular_for_IE.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="Public/styles/normalize.css">
    <link rel="stylesheet" href="Public//styles/index.css">
  </head>
  <body ng-app="haochiquanApp" ng-controller="TemplateCtl">
    <div class="container" ng-controller="PanelsCtl">
        <header id="Header" ng-include="template.header">
        </header>
        <?php echo ($userInfo); ?>
        <section class="middle-box" ng-view="" ng-controole="MainCtrl"></section>
        <footer id="Footer"  ng-include="template.footer"></footer>
        <div ng-show="publishDialog" ng-include="template.publish_subject_dialog" class="publish-box"></div>
    </div>


    <!-- bower:js -->
    <script src="Public/bower_components/es5-shim/es5-shim.js"></script>
    <script src="Public/bower_components/angular/angular.js"></script>
    <script src="Public/bower_components/json3/lib/json3.js"></script>
    <script src="Public/bower_components/angular-resource/angular-resource.js"></script>
    <script src="Public/bower_components/angular-cookies/angular-cookies.js"></script>
    <script src="Public/bower_components/angular-sanitize/angular-sanitize.js"></script>
    <script src="Public/bower_components/angular-animate/angular-animate.js"></script>
    <script src="Public/bower_components/angular-touch/angular-touch.js"></script>
    <script src="Public/bower_components/angular-route/angular-route.js"></script>
    <!-- endbower -->



    <script src="Public/scripts/app.js"></script>
    <script src="Public/scripts/controllers/templateCtl.js"></script>
    <script src="Public/scripts/controllers/panelsCtl.js"></script>
    <script src="Public/scripts/controllers/main.js"></script>
    <script src="Public/scripts/controllers/tabCtl.js"></script>
    <script src="Public/scripts/controllers/headerCtl.js"></script>
    <script src="Public/scripts/controllers/publishCtl.js"></script>
    <script src="Public/scripts/controllers/subjectCtl.js"></script>
    <script src="Public/scripts/controllers/PartyCtl.js"></script>
    <script src="Public/scripts/controllers/menuCtl.js"></script>
    <script src="Public/scripts/controllers/discountCtl.js"></script>
</body>
</html>