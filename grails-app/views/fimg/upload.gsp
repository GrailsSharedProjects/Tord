<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="grails.web.JSONBuilder" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<title>上传</title>
</head>
<body>
  <div class="body">
<%
/// (回调中的所有信息均为 UTF_8 编码，签名验证的时候需要注意编码是否一致)
def bucket = 'tord'; /// 空间名
def form_api_key = 'iqhye1352';///
def form_api_secret = 'w7zstfcu6m9c3zup33brp1qrx33jez'; /// 表单 API 功能的密匙（请访问得图云管理后台首页的AccessKey管理页面获取）

def options = [:];
options['bucket'] = bucket; /// 空间名
options['access_key']= 'iqhye1352';
options['expiration'] = new Date().time + 600; /// 授权过期时间
options['save_name'] = '/{year}/{mon}/{random}{.suffix}'; /// 文件名生成格式，请参阅 API 文档
options['return_url'] = 'http://localhost:8080/tord/fimg/success'; /// 页面跳转型回调地址

def builder = new JSONBuilder()
def json = builder.build{
	options = options
}.toString()

println json

def policy = json.bytes.encodeBase64().toString();
println policy

def sign = (policy + '&' + form_api_secret).encodeAsMD5(); /// 表单 API 功能的密匙（请访问得图云管理后台首页的AccessKey管理页面获取）
println sign

%>
<form action="http://api.detuyun.com/" method="post" enctype="Multipart/form-data">
	<input type="hidden" name="postdata" value="${policy}">
	<input type="hidden" name="signature" value="${sign}">
	<input type="file" name="file">
	<input type="submit">
</form>
  </div>
</body>
</html>