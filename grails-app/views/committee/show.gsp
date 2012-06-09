
<%@ page import="com.rapidcommittee.Committee" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'committee.label', default: 'Committee')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-committee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-committee" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list committee">
			
				<g:if test="${committeeInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="committee.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${committeeInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${committeeInstance?.admin}">
				<li class="fieldcontain">
					<span id="admin-label" class="property-label"><g:message code="committee.admin.label" default="Admin" /></span>
					
						<span class="property-value" aria-labelledby="admin-label"><g:link controller="committeeMembership" action="show" id="${committeeInstance?.admin?.id}">${committeeInstance?.admin?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${committeeInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="committee.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${committeeInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${committeeInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="committee.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${committeeInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${committeeInstance?.meetings}">
				<li class="fieldcontain">
					<span id="meetings-label" class="property-label"><g:message code="committee.meetings.label" default="Meetings" /></span>
					
						<g:each in="${committeeInstance.meetings}" var="m">
						<span class="property-value" aria-labelledby="meetings-label"><g:link controller="meeting" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${committeeInstance?.members}">
				<li class="fieldcontain">
					<span id="members-label" class="property-label"><g:message code="committee.members.label" default="Members" /></span>
					
						<g:each in="${committeeInstance.members}" var="m">
						<span class="property-value" aria-labelledby="members-label"><g:link controller="committeeMembership" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${committeeInstance?.id}" />
					<g:link class="edit" action="edit" id="${committeeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
