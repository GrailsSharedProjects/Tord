<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<title>上传</title>
<script src="${assetPath(src: 'jquery.js')}" ></script>
</head>
<body>
  <div class="body">
<form id="uploadForm" class="submit-form" action="http://api.detuyun.com/" method="post" enctype="Multipart/form-data">
	<input type="hidden" id="postdata" name="postdata" value="">
	<input type="hidden" id="signature" name="signature" value="">
	<input type="file" name="file" id="file" style="display: none;">
</form>
</div>
</body>
</html>