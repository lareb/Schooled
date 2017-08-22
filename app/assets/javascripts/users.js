$(function() {
	$('.form-student').hide();
	$('.form-teacher').hide();
	$('.form-parent').hide();
	$('.user_group').hide();
	$('a.student').click(function(){
		$('h1.initial').hide();
		$('.register-options').hide();
		$('.form-student').fadeIn(1500);
	});
	$('a.parent').click(function(){
		$('h1.initial').hide();
		$('.register-options').hide();
		$('.form-parent').fadeIn(1500);
	});
	$('a.teacher').click(function(){
		$('h1.initial').hide();
		$('.register-options').hide();
		$('.form-teacher').fadeIn(1500);
	});
	$('.form-student select#user_school_id').change(function(){
		$('.user_group').show();
		school = $('#user_school_id :selected').text();
		$("optgroup").hide();
		$("optgroup[label='" + school + "']").show();
	});
});