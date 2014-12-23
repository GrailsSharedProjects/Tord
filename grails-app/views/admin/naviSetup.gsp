<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main_admin"/>
		<title>Welcome to Grails</title>
	</head>
	<body>
		<g:render template="subNavi" />
		<div id="page-body" role="main">
            <section>
                <h1>Navigation Bar Setup</h1>
                <p>Setup the entries in nav bar</p>
            </section>
            <section class="well">
            <g:form action="editNavi" name="naviForm" role="form">
                <div id="naviselect">
                <g:render template="selectNavi"/>
                </div>
	            <div id="groupList">
		            <ol id="groupol" style="margin-top:30px;">
		            <g:each in="${groups}" var="gp" status="st">
		                <li><g:link action="removeGroup" id="${gp.id}" class="btn btn-invert btn-secondary-sm">${gp.name}</g:link></li>         
		            </g:each>
		            </ol>
	            </div>
            </g:form>
            <g:if test="${navi}">
            <button id="addGroup" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span><span>添加页面</span></button>
            <g:link action="saveGroup" class="btn btn-primary">
               <span class="glyphicon glyphicon-ok"></span><span>保存</span>
            </g:link>
            </g:if>
            </section>
		</div>
	<script>
        $("#navi\\.name").on('change', function(){
            $('#naviForm').submit();
        });

        $("#addGroup").on('click', function(){
            jQuery.ajax({type:'POST', url:'/tord/admin/loadGroups',
                success:function(data,textStatus){
                    jQuery(data).appendTo('#groupol');
                    initEditor();
                    },
                error:function(XMLHttpRequest,textStatus,errorThrown){}});
        });
    </script>
	</body>
</html>
