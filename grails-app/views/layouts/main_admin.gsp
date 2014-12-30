<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="zh" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		
		<title><g:layoutTitle default="Grails"/></title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
		<meta name="description" content="拓德是互联网领先的一站式家装O2O平台"/>
		<meta name="keywords" content="装修，成都装修，一站式装修平台，一站式家装O2O平台，家装O2O，拓德装饰，拓德进出口贸易有限公司"/>
		
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon"/>
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.jpg')}"/>
		<link rel="apple-touch-icon" sizes="72x72" href="${assetPath(src: 'apple-touch-icon-72x72.jpg')}"/>
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-114x114.jpg')}"/>
	  	<asset:stylesheet src="application.css"/>
		<asset:stylesheet src="font-awesome.min.css"/>
		<!--[if IE 7]>
		<asset:stylesheet src="font-awesome-ie7.min.css"/>
		<![endif]-->
		
		<script src="${assetPath(src: 'jquery.js')}" ></script>		
		<script src="${assetPath(src: 'jquery.lazyload.min.js')}" ></script>	
		<script src="${assetPath(src: 'tinymce.min.js')}" ></script>	
	    <!--[if lt IE 9]>
	    <script src="${assetPath(src:'html5.js')}"></script>
	    <script src="${assetPath(src:'respond.min.js')}"></script>
	    <![endif]-->
	    
	    <style type="text/css" media="screen">
            #status {
                background-color: #eee;
                border: .2em solid #fff;
                margin: 2em 2em 1em;
                padding: 1em;
                width: 12em;
                float: left;
                -moz-box-shadow: 0px 0px 1.25em #ccc;
                -webkit-box-shadow: 0px 0px 1.25em #ccc;
                box-shadow: 0px 0px 1.25em #ccc;
                -moz-border-radius: 0.6em;
                -webkit-border-radius: 0.6em;
                border-radius: 0.6em;
            }

            .ie6 #status {
                display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
            }

            #status ul {
                font-size: 0.9em;
                list-style-type: none;
                margin-bottom: 0.6em;
                padding: 0;
            }

            #status li {
                line-height: 1.3;
            }

            #status h1 {
                text-transform: uppercase;
                font-size: 1.1em;
                margin: 0 0 0.3em;
            }

            #page-body {
                margin: 2em 1em 1.25em 18em;
            }

            h2 {
                margin-top: 1em;
                margin-bottom: 0.3em;
                font-size: 1em;
            }

            p {
                line-height: 1.5;
                margin: 0.25em 0;
            }

            #controller-list ul {
                list-style-position: inside;
            }

            #controller-list li {
                line-height: 1.3;
                list-style-position: inside;
                margin: 0.25em 0;
            }

            @media screen and (max-width: 480px) {
                #status {
                    display: none;
                }

                #page-body {
                    margin: 0 1em 1em;
                }

                #page-body h1 {
                    margin-top: 0;
                }
            }
        </style>
	    
		<g:layoutHead/>
	</head>
	<body id="landing-page">
		<!-- Preloader -->
		<g:if test="${!hideTopMenu}">
		<script>
			$("body").attr("style", "margin-top: 60px;");

			function forbidBackSpace(e) {
				var ev = e || window.event; //获取event对象   
				var obj = ev.target || ev.srcElement; //获取事件源   
				var t = obj.type || obj.getAttribute('type'); //获取事件源类型   
				var clazz = obj.getAttribute('class'); //获取类
                // 当可编辑时，退格键有效
                var editable = (clazz?(clazz.indexOf("edit") != -1):false)
                if(editable){
                    return true;
                }
				//获取作为判断条件的事件类型   
				var vReadOnly = obj.readOnly;
				var vDisabled = obj.disabled;
				//处理undefined值情况   
				vReadOnly = (vReadOnly == undefined) ? false : vReadOnly;
				vDisabled = (vDisabled == undefined) ? true : vDisabled;
				//当敲Backspace键时，事件源类型为密码或单行、多行文本的，   
				//并且readOnly属性为true或disabled属性为true的，则退格键失效   
				var flag1 = ev.keyCode == 8
						&& (t == "password" || t == "text" || t == "textarea")
						&& (vReadOnly == true || vDisabled == true);
				//当敲Backspace键时，事件源类型非密码或单行、多行文本的，则退格键失效   
				var flag2 = ev.keyCode == 8 && t != "password" && t != "text"
						&& t != "textarea";
			    
				//判断   
				if (flag2 || flag1)
					return false;
			}
			//禁止后退键 作用于Firefox、Opera  
			document.onkeypress = forbidBackSpace;
			//禁止后退键  作用于IE、Chrome  
			document.onkeydown = forbidBackSpace;
			
		</script>
		</g:if>
		<g:else>
		<div id="mask">
		    <div id="loader"></div>
		</div>
		</g:else>
		<header role="banner">
		    <nav class="navigation navigation-header ${hideTopMenu?'':'fixmenu-clone fixmenu-stick'}">
		        <div class="container">
		            <div class="navigation-brand">
		                <div class="brand-logo">
		                    <a href="${createLinkTo(uri:'/') }" class="logo"></a>
		                    <span class="sr-only">HumHub</span>
		                </div>
		                <button class="navigation-toggle visible-xs" type="button" data-toggle="dropdown" data-target=".navigation-navbar">
		                    <span class="icon-bar"></span>
		                    <span class="icon-bar"></span>
		                    <span class="icon-bar"></span>
		                </button>
		            </div>
		            <div class="navigation-navbar">
		                <ul class="navigation-bar navigation-bar-left">
		                    <li><a href="${createLink(uri:'/admin')}">后台首页</a></li>
		                    <li><a href="${createLink(uri:'/admin/homePageSetup')}">界面管理</a></li>
		                    <li><a href="${createLink(uri:'/photo')}">图片管理</a></li>
		                    <li><a href="${createLink(uri:'/tag')}">标签管理</a></li>
		                    <li><a href="${createLink(controller:'marketplace')}">家居建材超市</a></li>
		                    <li class="dropdown hidden-sm">
		                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">社区 <b class="caret"></b></a>
		                        <ul class="dropdown-menu" role="menu">
		                            <li>
		                            	<a href="https://github.com/humhub/humhub/blob/master/protected/docs/guide/developer/index.md"
		                                   target="_blank"><i class="fa fa-code"></i> 拓德家装论坛</a></li>
		                            <li><a href="#" target="_blank"><i class="fa fa-bullhorn"></i> 装修问答</a>
		                            </li>
		                            <li class="divider"></li>
		                            <li><a href="#"><i class="fa fa-life-ring"></i> 更多帮助</a></li>
		                        </ul>
		                    </li>
		                </ul>
		              <ul class="navigation-bar navigation-bar-right">
		                    <li class="featured"><a href="#" data-toggle="modal" data-target="#globalModal">Professional Services</a></li>
		                </ul>
		            </div>
		        </div>
		    </nav>
		</header>
		
		<!-- show views -->
		<div id="content">
			<g:layoutBody />
		</div><!-- content -->

<%--		<footer id="footer" class="footer light" role="contentinfo">--%>
<%--		    <div class="container">--%>
<%--		        <div class="footer-content row">--%>
<%--		            <div class="col-sm-5">--%>
<%--		                <div class="logo-wrapper">--%>
<%--		                    <img src="${assetPath(src:'logo-white.png')}" alt="logo" />--%>
<%--		                </div>--%>
<%--		                <p>拓德，互联网领先的一站式家装O2O平台。</p>--%>
<%--		            </div>--%>
<%--		            <div class="col-sm-2"></div>--%>
<%--		            <!--<div class="col-sm-5"></div>-->--%>
<%--		            <div class="col-sm-5 social-wrap">--%>
<%--		                <div class="footer-title">关注我们</div>--%>
<%--		                <ul class="list-inline socials">--%>
<%--		                    <li><a href="#" target="_blank"><span class="icon icon-socialmedia-08"></span></a></li>--%>
<%--		                    <li><a href="#" rel="publisher" target="_blank"><span class="icon icon-socialmedia-16"></span></a></li>--%>
<%--		                    <li><a href="#" target="_blank"><span class="icon icon-socialmedia-07"></span></a></li>--%>
<%--		                </ul>--%>
<%--		            </div>--%>
<%--		--%>
<%--		        </div>--%>
<%--		        <div class="copyright">--%>
<%--		            &copy; ${new Date().getYear()} 拓德-家装O2O平台和设计师社区--%>
<%--		            <a href="${createLinkTo(controller:'imprint')}" target="_self">关于我们</a> ---%>
<%--		            <a href="${createLinkTo(controller:'policy')}" target="_self">法律条款</a> ---%>
<%--		            <a href="${createLinkTo(controller:'press')}" target="_self">媒体信息</a> ---%>
<%--		            <a href="mailto:quiet_dog@163.com" target="_self">联系我们</a>--%>
<%--		        </div>--%>
<%--		    </div>--%>
<%--		</footer>--%>
		
		<div class="back-to-top"><i class="fa fa-angle-up fa-3x"></i></div>
		
		<!-- start: Modal (every lightbox will/should use this construct to show content)-->
		<div class="modal" id="globalModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		    <div class="modal-dialog">
		        <div class="modal-content">
		            <div class="modal-body">
		                <div class="loader"></div>
		            </div>
		        </div>
		    </div>
		</div>
		<!-- end: Modal -->
				
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<asset:javascript src="application.js"/>
	</body>
<%--	<script type="text/javascript">--%>
<%--		$("img.lazy").show().lazyload();--%>
<%--	</script>--%>
<script>
function initEditor(){
	tinymce.init({
	    selector: "div.edit",
	    theme: "modern",
	    plugins: [
	        ["advlist autolink link image lists charmap print preview hr anchor pagebreak spellchecker"],
	        ["searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking"],
	        ["save table contextmenu directionality emoticons template paste"]
	    ],
	    add_unload_trigger: false,
	    schema: "html5",
	    inline: true,
	    toolbar: "undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image     | print preview media",
	    statusbar: false
	});

	tinymce.init({
	    selector: "h1.edit",
	    theme: "modern",
	    add_unload_trigger: false,
	    schema: "html5",
	    inline: true,
	    toolbar: "undo redo",
	    statusbar: false
	});
}
</script> 
</html>
