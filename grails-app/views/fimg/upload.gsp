<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="grails.web.JSONBuilder" %>
<%
/// (回调中的所有信息均为 UTF_8 编码，签名验证的时候需要注意编码是否一致)
def bucket = 'tord'; /// 空间名
def form_api_key = 'iqhye1352';///
def form_api_secret = 'w7zstfcu6m9c3zup33brp1qrx33jez'; /// 表单 API 功能的密匙（请访问得图云管理后台首页的AccessKey管理页面获取）

def user = 'william'

def options = [:];
options['bucket'] = bucket; /// 空间名
options['access_key']= 'iqhye1352';
options['expiration'] = new Date().time + 600; /// 授权过期时间
options['save_name'] = '/'+user+'/{year}/{mon}/{random}{.suffix}'; /// 文件名生成格式，请参阅 API 文档
options['return_url'] = 'http://localhost:8080/tord/fimg/success'; /// 页面跳转型回调地址

def builder = new JSONBuilder()
def json = builder.build{
	options = options
}.toString()

//println json

def policy = json.bytes.encodeBase64().toString();
//println policy

def sign = (policy + '&' + form_api_secret).encodeAsMD5(); /// 表单 API 功能的密匙（请访问得图云管理后台首页的AccessKey管理页面获取）
//println sign
%>

<div class="panel panel-default">
<div class="panel-heading">
    <h3 class="panel-title">图片上传工具</h3>
</div>
<div class="panel-body">
<ul class="list-group">
	<li class="list-group-item">
	<input id="click1" type="button" class="btn btn-primary" value="选择文件"/>
	<iframe id="if1" class="frm" src="${createLink(uri: '/fimg/upload2')}" frameborder="0" contenteditable="false" scrolling="no" callback="false"></iframe>
	<script>
	$('#click1').on('click', function(){
		$("#if1").each(function(){
			this.contentWindow.document.getElementById("file").click()
		});
	});
	</script>
	</li>
<%--	<li class="list-group-item"><iframe class="frm" src="${createLink(uri: '/fimg/upload2')}" frameborder="0" contenteditable="false" scrolling="no"></iframe></li>--%>
<%--	<li class="list-group-item"><iframe class="frm" src="${createLink(uri: '/fimg/upload2')}" frameborder="0" contenteditable="false" scrolling="no"></iframe></li>--%>
<%--	<li class="list-group-item"><iframe class="frm" src="${createLink(uri: '/fimg/upload2')}" frameborder="0" contenteditable="false" scrolling="no"></iframe></li>--%>
<%--	<li class="list-group-item"><iframe class="frm" src="${createLink(uri: '/fimg/upload2')}" frameborder="0" contenteditable="false" scrolling="no"></iframe></li>--%>
	<li class="list-group-item"><button name="submit" id="subBtn" class="btn btn-primary btn-lg">上传</button></li>
</ul>
</div>
</div>
<script>
	$("#subBtn").on("click", function(){
		$(".frm").each(function(){
			this.contentWindow.document.getElementById("postdata").value = "${policy}"
			this.contentWindow.document.getElementById("signature").value = "${sign}"
			this.contentWindow.document.getElementById("uploadForm").submit()
		});
	});
</script>
