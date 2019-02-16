<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark navbar-static-top" role="navigation">
    <a class="navbar-brand" href="/#"><asset:image src="grails.svg" alt="Grails Logo"/></a>

	<sec:ifLoggedIn>
		<span class="row user-info">
			<span class="col">
				Welcome Back! <span class="username-field"> <sec:loggedInUserInfo field='username'  /> </span> 
			</span>
			<span class="col">
				Logged as <span class="role-field"> <sec:loggedInUserInfo field='authorities'/> </span> 
			</span>
		</span>
		
		<form action="/logout" method="POST">
			<button type="submit" class="btn-logout">Logout</button>
		</form>
	</sec:ifLoggedIn>

</nav>

<g:layoutBody/>

<div class="footer row" role="contentinfo">
    <div class="col">
    </div>
    <div class="col">

		Demo by Voltaire Bazurto Blacio <br>
		2019

    </div>

    <div class="col">
    </div>
</div>


<div id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</div>

<asset:javascript src="application.js"/>

</body>
</html>
