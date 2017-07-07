$(document).ready(function() {
    $("<%= f.select :current, options_for_select([[' Working '])  %>").click(function() {
        alert("handler called");
        $("#name").hide();
    });
    $(".selection").on('change', function() {
        alert("handler called1");
        if ($(this).val() == "day") {
            $("#name").show();
        }
    });
});