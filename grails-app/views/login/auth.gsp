<!doctype html>
<html>
    <head>
        <title><g:if env="development">Grails Runtime Exception</g:if><g:else>Error</g:else></title>
        <meta name="layout" content="main">
        <g:if env="development"><asset:stylesheet src="errors.css"/></g:if>
    </head>
    <body>
        <style type="text/css" media="screen">
	#login , #default-credentials{
		margin: 15px 0px;
		padding: 0px;
		text-align: center;
	}
	
	#default-credentials{
	
	}
	
	#default-credentials .inner{
		margin: 60px auto;
		text-align: left;
		width: 100%;
	}

	#login .inner {
		width: 340px;
		padding-bottom: 6px;
		margin: 60px auto;
		text-align: left;
		border: 1px solid #aab;
		background-color: #f0f0fa;
		-moz-box-shadow: 2px 2px 2px #eee;
		-webkit-box-shadow: 2px 2px 2px #eee;
		-khtml-box-shadow: 2px 2px 2px #eee;
		box-shadow: 2px 2px 2px #eee;
	}

	#login .inner .fheader {
		padding: 18px 26px 14px 26px;
		background-color: #f7f7ff;
		margin: 0px 0 14px 0;
		color: #2e3741;
		font-size: 18px;
		font-weight: bold;
	}

	#login .inner .cssform p {
		clear: left;
		margin: 0;
		padding: 4px 0 3px 0;
		padding-left: 105px;
		margin-bottom: 20px;
		height: 1%;
	}

	#login .inner .cssform input[type="text"] {
		width: 120px;
	}

	#login .inner .cssform label {
		font-weight: bold;
		float: left;
		text-align: right;
		margin-left: -105px;
		width: 110px;
		padding-top: 3px;
		padding-right: 10px;
	}

	#login #remember_me_holder {
		padding-left: 120px;
	}

	#login #submit {
		margin-left: 15px;
	}

	#login #remember_me_holder label {
		float: none;
		margin-left: 0;
		text-align: left;
		width: 200px
	}

	#login .inner .login_message {
		padding: 6px 25px 20px 25px;
		color: #c33;
	}

	#login .inner .text_ {
		width: 120px;
	}

	#login .inner .chk {
		height: 12px;
	}
	
	
	</style>






			<p>
				<g:if test="${flash.message}">
	          		<div class="message">${flash.message}</div>
	      		</g:if>
			</p>


<div class="row">

	<div id="default-credentials" class=" col">
		<div class="inner">
			<div class="row">
			 <h3 class="col-12">Default test credentials</h3>
			</div>
			<div class="row">
					<div class="col">
						Username: guest
					</div>
					
					<div>
						Password: abc
					</div>
					
					<div class="col">
						Role: READ
					</div>
					
			
			</div>
			<div class="row">	
				
					<div class="col">
						Username: admin
					</div>
					
					<div>
						Password: 123
					</div>
					
					<div class="col">
						Role: WRITE
					</div>
					
				
			</div>
		</div>
	</div>

<!-- 	login		 -->
	
	<div id="login" class="col">
	<div class="inner">
		<div class="fheader">Please sign-in</div>


		<form action="/login/authenticate" method="POST" id="loginForm" class="cssform" autocomplete="off">
		
			
		    
		
			<p>
				<label for="username">Username:</label>
				<input type="text" class="text_" name="username" id="username"/>
			</p>

			<p>
				<label for="password">Password:</label>
				<input type="password" class="text_" name="password" id="password"/>
			</p>

			<p id="remember_me_holder">
				<input type="checkbox" class="chk" name="remember-me" id="remember_me" />
				<label for="remember_me">Remember me</label>
			</p>

			<p>
				<input type="submit" id="submit" value="Sign-in"/>
			</p>
		</form>
	</div>
</div>
	
</div>





<script>
(function() {
	document.forms['loginForm'].elements['username'].focus();
})();
</script>
        
    </body>
</html>




