$(document).ready(function(){
	$("#loginform").validate({
		submitHandler : function(form) {
		    $('#submit_btnn').attr('disabled','disabled');
			$('#submit_btnn').button('loading');
			form.submit();
		},
		rules : {
			email : {
				required : true,
				email: true
			},
			password : {
				required : true
			}
		},
		
		messages : {
			
			email : {
				required : "Please enter your Username"
			
			},
			password : {
				required : "Please enter your Password"
			}
		},
		errorPlacement : function(error, element) {
			$(element).closest('div').find('.help-block').html(error.html());
		},
		highlight : function(element) {
			$(element).closest('div').removeClass('has-success').addClass('has-error');
		},
		unhighlight: function(element, errorClass, validClass) {
			 $(element).closest('div').removeClass('has-error').addClass('has-success');
			 $(element).closest('div').find('.help-block').html('');
		}
		
		
		
	});
	
	
});

$(document).ready(function(){
	$("#forgetpassword-form").validate({
		submitHandler : function(form) {
		    $('#submit_forbtn').attr('disabled','disabled');
			$('#submit_forbtn').button('loading');
			form.submit();
		},
		rules : {
			email : {
				required : true,
				email: true
			}
		},
		
		messages : {
			
			email : {
				required : "Please enter your Email ID"
			
			}
		},
		
		errorPlacement : function(error, element) {
			$(element).closest('div').find('.help-block').html(error.html());
		},
		highlight : function(element) {
			$(element).closest('div').removeClass('has-success').addClass('has-error');
		},
		unhighlight: function(element, errorClass, validClass) {
			 $(element).closest('div').removeClass('has-error').addClass('has-success');
			 $(element).closest('div').find('.help-block').html('');
		}
		
		
		
	});
	
	
});

$(document).ready(function(){
	$("#register-form").validate({
		submitHandler : function(form) {
		    $('#submit_rgtrbtn').attr('disabled','disabled');
			$('#submit_rgtrbtn').button('loading');
			form.submit();
		},
		rules : {
			name : {
				required : true,
				email: true
			},
			email : {
				required : true
			},
			password : {
				required : true,
				email: true
			},
			confirm_password : {
				required : true
			}
		},
		
		messages : {
			
			name : {
				required : "Please enter your Name"
			
			},
			email : {
				required : "Please enter your Email Address"
			},
			password : {
				required : "Please Enter Password"
			
			},
			confirm_password : {
				required : "Please Re-Enter Password"
			}
		},
		errorPlacement : function(error, element) {
			$(element).closest('div').find('.help-block').html(error.html());
		},
		highlight : function(element) {
			$(element).closest('div').removeClass('has-success').addClass('has-error');
		},
		unhighlight: function(element, errorClass, validClass) {
			 $(element).closest('div').removeClass('has-error').addClass('has-success');
			 $(element).closest('div').find('.help-block').html('');
		}
		
		
		
	});
	
	
});