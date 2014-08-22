(function () {
    'use strict';
    /*global ajaxify, templates, bootbox*/

    var helperContent = '';

    ajaxify.loadTemplate('edithelp', function (myTemplate) {
        helperContent =  templates.parse(myTemplate);
    });

    $(window).on('action:ajaxify.end', function () {
        $('<span class="btn btn-link help" tab-index="-1"><i class="fa fa-question"></i></span>').insertAfter($('#signatureCharCountLeft').parent()).on('click', function () {
            bootbox.alert(helperContent);
        });
    });
}());