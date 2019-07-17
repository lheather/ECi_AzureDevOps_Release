$(document).ready(function () {
    $(".Grid .chkRow input:checkbox").click(function () {
        $(this).closest("tr").toggleClass('highlight');

        if ($(".Grid .chkRow input:checkbox:checked").length > 0) {
            $('.DeleteSelected').show();
            $('.DeleteSelected').show();
        }
        else {
            $('.DeleteSelected').hide();
            $('.DeleteSelected').hide();
        }
    });
});