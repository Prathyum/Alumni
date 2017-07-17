$(document).ready(function() {
    $("#select").change(function(){
        if($("#select").val() === "Working" || $("#select").val() === "Entrepreneur"){
            $(".common").slideDown();
        }else{
        	$(".common").slideUp();
        }
    });
});