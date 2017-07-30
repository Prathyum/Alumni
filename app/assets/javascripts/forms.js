$(document).ready(function() {
    $("#select").change(function(){
        if($("#select").val() === "Working")
        {
            $(".common").slideDown();
       
            $(".working").slideDown();
            $(".higher").slideUp();
        	$(".govt").slideUp();
        	$(".entrepreneur").slideUp();
            $(".others").slideUp();
            // $('#select')[0].reset();


        }
        else if($("#select").val() === "Entrepreneur")
        {
            
       $(".entrepreneur").slideDown();
            $(".higher").slideUp();
        	$(".govt").slideUp();
        	        $(".working").slideUp();
                    $(".others").slideUp();
//                    $('#select')[0].reset();


        }
        
        else if($("#select").val() === "Government official")
        {
        	 $(".govt").slideDown();
        	 $(".higher").slideUp();
        	$(".entrepreneur").slideUp();
        	$(".working").slideUp();
        	$(".common").slideUp();
            $(".others").slideUp();
  //          $('#select').reset();

        }
        else if($("#select").val() === "Higher Studies") {
        	$(".higher").slideDown();
        	$(".govt").slideUp();
            $(".entrepreneur").slideUp();
        	$(".common").slideUp();
            $(".others").slideUp();
    //        $('#select')[0].reset();
        }
 else if($("#select").val() === "Other Field")
 {
            $(".others").slideDown();
            $(".higher").slideUp();
        	$(".govt").slideUp();
            $(".entrepreneur").slideUp();
        	$(".working").slideUp();
      //      $('.working').empty();
 }
        else
        {
        	$(".others").slideUp();
        	$(".govt").slideUp();
        	 $(".higher").slideUp();
        	$(".entrepreneur").slideUp();
        	$(".working").slideUp();
        	$(".common").slideUp();
        //    $('#select').reset();
        }
        
    });
});