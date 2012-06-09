<%@ page import="com.rapidcommittee.Committee" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'committee.label', default: 'Committee')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-committee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-committee" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'committee.name.label', default: 'Name')}" />
					
						<th><g:message code="committee.admin.label" default="Admin" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'committee.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'committee.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${committeeInstanceList}" status="i" var="committeeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${committeeInstance.id}">${fieldValue(bean: committeeInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: committeeInstance, field: "admin")}</td>
					
						<td><g:formatDate date="${committeeInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${committeeInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${committeeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
