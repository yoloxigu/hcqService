angular.module('haochiquanApp')
    .controller('TemplateCtl', function ($scope) {
        $scope.template = {
            header: 'Public/views/templates/header.html',
            footer: 'Public/views/templates/footer.html',
            ad: 'Public/views/templates/ad.html',
            publish: 'Public/views/templates/publish.html',
            publish_subject_dialog: 'Public/views/templates/publish_subject_dialog.html',
            content: 'Public/views/templates/content.html',
            userinfo: 'Public/views/templates/userinfo.html',
            usergroup: 'Public/views/templates/usergroup.html'
        };
    });