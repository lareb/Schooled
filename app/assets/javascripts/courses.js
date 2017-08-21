$(function() {
    $('.give-marks a.new').click(function(){
    	mark  = $(this).html();
    	$(this).parent().parent().siblings('.mark_mark')[0].firstChild.value=mark;
    	var form = $(this).parent().parent().parent();
    	form.submit();
    });
});