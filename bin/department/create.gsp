<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'department.label', default: 'Department')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-department" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                
                <sec:ifAnyGranted roles='ROLE_WRITE'>
                	<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				</sec:ifAnyGranted>
            </ul>
        </div>
        <div id="create-department" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.department}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.department}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.department}" method="POST">
                <fieldset class="form">
                    <f:all bean="department"/>
                </fieldset>
                <fieldset class="buttons">
                	
                	<sec:ifAnyGranted roles='ROLE_WRITE'>
                    	<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                	</sec:ifAnyGranted>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
