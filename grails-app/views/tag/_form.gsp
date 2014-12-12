<%@ page import="com.tord.Tag" %>



<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="tag.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${tagInstance?.name}" class="form-control" />

</div>

<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'desc', 'error')} ">
	<label for="desc">
		<g:message code="tag.desc.label" default="Desc" />
		
	</label>
	<g:textField name="desc" value="${tagInstance?.desc}" class="form-control" />

</div>

