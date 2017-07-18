$(document).ready(function() {
    $("#select").change(function(){
        if($("#select").val() === "Working")
        {
            $(".common").slideDown();
       
        $(".working").slideDown();
            $(".higher").slideUp();
        	$(".govt").slideUp();
        	$(".entrepreneur").slideUp();

        }
        else if($("#select").val() === "Entrepreneur")
        {
            $(".common").slideDown();
       
        $(".common").slideDown();
            $(".higher").slideUp();
        	$(".govt").slideUp();
        	        $(".entrepreneur").slideDown();
        	        $(".working").slideUp();


        }
        
        else if($("#select").val() === "Government official")
        {
        	 $(".govt").slideDown();
        	 $(".higher").slideUp();
        	$(".entrepreneur").slideUp();
        	$(".working").slideUp();
        	$(".common").slideUp();

        }
        else if($("#select").val() === "Higher Studies") {
        	$(".higher").slideDown();
        	$(".govt").slideUp();
        	$(".common").slideUp();
        }
 else if($("#select").val() === "Other Field")
 {
            $(".common").slideDown();
            $(".higher").slideUp();
        	$(".govt").slideUp();
        	$(".working").slideUp();
 }
        else
        {
        	$(".common").slideUp();
        	$(".govt").slideUp();
        	 $(".higher").slideUp();
        	$(".entrepreneur").slideUp();
        	$(".working").slideUp();
        	$(".common").slideUp();
        }
        
    });
});