$(document).ready(function() {
    $("#select").change(function(){
        if($("#select").val() == "Working"){
            $(".working").slideDown('slow');
        }
    });
});