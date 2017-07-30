$(document).ready(function() {
    $("#select").change(function(){
        if($("#select").val() === "Working")
        {
            $(".common").slideDown();
       
            $(".working").slideDown();
            $(".higher").slideUp();
        	$(".govt").slideUp();
        	$(".entrepreneur").slideUp();
            // $('#select')[0].reset();


        }
        else if($("#select").val() === "Entrepreneur")
        {
            
       $(".entrepreneur").slideDown();
            $(".higher").slideUp();
        	$(".govt").slideUp();
        	        $(".working").slideUp();
//                    $('#select')[0].reset();


        }
        
        else if($("#select").val() === "Government official")
        {
        	 $(".govt").slideDown();
        	 $(".higher").slideUp();
        	$(".entrepreneur").slideUp();
        	$(".working").slideUp();
        	$(".common").slideUp();
  //          $('#select').reset();

        }
        else if($("#select").val() === "Higher Studies") {
        	$(".higher").slideDown();
        	$(".govt").slideUp();
        	$(".common").slideUp();
    //        $('#select')[0].reset();
        }
 else if($("#select").val() === "Other Field")
 {
            $(".common").slideDown();
            $(".higher").slideUp();
        	$(".govt").slideUp();
        	$(".working").slideUp();
      //      $('.working').empty();
 }
        else
        {
        	$(".common").slideUp();
        	$(".govt").slideUp();
        	 $(".higher").slideUp();
        	$(".entrepreneur").slideUp();
        	$(".working").slideUp();
        	$(".common").slideUp();
        //    $('#select').reset();
        }
        
    });
});