<%@ page import="com.tord.Photo" %>



<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'url', 'error')} required">
	<label for="url">
		<g:message code="photo.url.label" default="Url" />
		<span class="required-indicator">*</span>
	</label>
	<input id="f_file" type="file" onchange="$('#f_url').val($('#f_file').val())"/>
	<g:textField id="f_url" name="url" required="" value="${photoInstance?.url}" class="form-control" />

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="photo.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${photoInstance?.title}" class="form-control" />

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'desc', 'error')} ">
	<label for="desc">
		<g:message code="photo.desc.label" default="Desc" />
		
	</label>
	<g:textField name="desc" value="${photoInstance?.desc}" class="form-control" />

</div>

<div class="fieldcontain ${hasErrors(bean: photoInstance, field: 'tags', 'error')} ">
	<label for="tags">
		<g:message code="photo.tags.label" default="Tags" />
		
	</label>
	<g:select name="tags" from="${com.tord.Tag.list()}" multiple="multiple" optionKey="id" size="5" value="${photoInstance?.tags*.id}" class="many-to-many form-control"/>

</div>

