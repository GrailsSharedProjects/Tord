<g:select name="navi.name" from="${naviList}" value="${navi}" optionKey="id" optionValue="name" noSelection="${[null:'选择导航栏']}"/>
<g:remoteLink action="createNavi" update="naviselect">
    <span class="glyphicon glyphicon-plus"></span>
    <span>新增导航</span>
</g:remoteLink>