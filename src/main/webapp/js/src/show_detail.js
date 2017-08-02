;(function(){
		function login(){
			$('#login').click(function(){
				loginajax();
				return false;
			});
		}
		login();
	    function loginajax(){
	    	var password = $("#password").val();
	    	var username = $("#username").val();
	    	var checkcode = $("#checkcode").val();
		    var data = {
			    	username:username,
			    	password:password,
			    	checkcode:checkcode
			    };
	        $.ajax({
	            url:'user/login',
	            type:'post',
	            data:data,
	            success:function(data){
	                console.log(data);
	            },
	            error:function(err){
	                console.log(err);
	            }
	        });
	    }
	    
})();