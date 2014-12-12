
<%@ page import="com.tord.Photo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main_admin">
		<g:set var="entityName" value="${message(code: 'photo.label', default: 'Photo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<br/>
		<div class="btn-group" role="navigation">
			<g:link class="create btn btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		<div id="list-photo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table">
			<thead>
					<tr>
					
						<g:sortableColumn property="url" title="${message(code: 'photo.url.label', default: 'Url')}" />
					
						<g:sortableColumn property="title" title="${message(code: 'photo.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="desc" title="${message(code: 'photo.desc.label', default: 'Desc')}" />
					
						<g:sortableColumn property="tags" title="${message(code: 'photo.tags.label', default: 'Tags')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${photoInstanceList}" status="i" var="photoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${photoInstance.id}">${fieldValue(bean: photoInstance, field: "url")}</g:link></td>
					
						<td>${fieldValue(bean: photoInstance, field: "title")}</td>
					
						<td>${fieldValue(bean: photoInstance, field: "desc")}</td>
					
						<td>${fieldValue(bean: photoInstance, field: "tags")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${photoInstanceCount ?: 0}" class="pagination" />
			</div>
		</div>
	</body>
</html>
