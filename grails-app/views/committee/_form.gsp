<%@ page import="com.rapidcommittee.Committee" %>



<div class="fieldcontain ${hasErrors(bean: committeeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="committee.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${committeeInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: committeeInstance, field: 'admin', 'error')} ">
	<label for="admin">
		<g:message code="committee.admin.label" default="Admin" />
		
	</label>
	<g:select id="admin" name="admin.id" from="${com.rapidcommittee.CommitteeMembership.list()}" optionKey="id" value="${committeeInstance?.admin?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: committeeInstance, field: 'meetings', 'error')} ">
	<label for="meetings">
		<g:message code="committee.meetings.label" default="Meetings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${committeeInstance?.meetings?}" var="m">
    <li><g:link controller="meeting" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="meeting" action="create" params="['committee.id': committeeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'meeting.label', default: 'Meeting')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: committeeInstance, field: 'members', 'error')} ">
	<label for="members">
		<g:message code="committee.members.label" default="Members" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${committeeInstance?.members?}" var="m">
    <li><g:link controller="committeeMembership" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="committeeMembership" action="create" params="['committee.id': committeeInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'committeeMembership.label', default: 'CommitteeMembership')])}</g:link>
</li>
</ul>

</div>

