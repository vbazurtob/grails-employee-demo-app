<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
        <title>Report page</title>
    </head>
    <body>
        <a href="#list-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            </ul>
        </div>
        <div id="list-employee" class="content scaffold-list" role="main">
            <h1>Report</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
           
           
           <fieldset class="form">
			    <g:form action="index" method="GET">
			        <div class="fieldcontain">
			            <label for="query">Search for employees:</label>
			            <g:textField name="query" value="${params.query}"/>
			        </div>
			        <button type="submit" class="search">Search</button>
			    </g:form>
			</fieldset> 
           
           
            <f:table collection="${employeeList}" properties="['name', 'department']" />

            <div class="pagination">
                <g:paginate total="${employeeCount ?: 0}" />
            </div>
        </div>
    </body>
</html>