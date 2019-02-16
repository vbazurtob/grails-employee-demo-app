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
                <li><g:link class="list" controller="employee" action="index">Employees</g:link></li>
                <li><g:link class="list" controller="department" action="index">Departments</g:link></li>
                
            </ul>
        </div>
        <div id="list-employee" class="content scaffold-list" role="main">
            <h1>Report</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
           
           
           <fieldset class="form">
			    <g:form action="index" method="GET">
			        <span class="fieldcontain row" >
			            
			            <g:textField class="col-4" placeholder="Search by employee name..."  name="query" value="${params.query}"/>
			            <span class="col-1">
			            	<button type="submit" class="btn-search">Search</button>
			            </span>
			        	
			        </span>
			        
			    </g:form>
			</fieldset> 
           
           
            <f:table collection="${employeeList}" properties="['name', 'department']" />

            <div class="pagination">
                <g:paginate total="${employeeCount ?: 0}" />
            </div>
        </div>
    </body>
</html>