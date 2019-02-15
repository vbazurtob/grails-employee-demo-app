<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'department.label', default: 'Department')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-department" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                
                <sec:ifAnyGranted roles='ROLE_WRITE'>
                	<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            	</sec:ifAnyGranted>
            </ul>
        </div>
        <div id="show-department" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="department" />
            <g:form resource="${this.department}" method="DELETE">
            
            	<sec:ifAnyGranted roles='ROLE_WRITE'>
            
	                <fieldset class="buttons">
	                    <g:link class="edit" action="edit" resource="${this.department}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
	                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
	                </fieldset>
	            </sec:ifAnyGranted>
            </g:form>
        </div>
    </body>
</html>
