$(function() {
	var used=false;
    $('.give-marks a.new').click(function(){
    	if(used==false){
	    	mark  = $(this).html();
	    	$(this).parent().parent().siblings('.mark_mark')[0].firstChild.value=mark;
	    	var form = $(this).parent().parent();
	    	form.submit();
	    	used=true;
	    }
    });
});