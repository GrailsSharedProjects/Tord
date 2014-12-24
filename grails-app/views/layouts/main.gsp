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
	    <!--[if lt IE 9]>
	    <script src="${assetPath(src:'html5.js')}"></script>
	    <script src="${assetPath(src:'respond.min.js')}"></script>
	    <![endif]-->
	    
		<g:layoutHead/>
	</head>
	<body id="landing-page">

		<!-- Preloader -->
		<g:if test="${fixmenu}">
		<script>
			$("body").attr("style", "margin-top: 60px;");
		</script>
		</g:if>
		<g:else>
		<div id="mask">
		    <div id="loader"></div>
		</div>
		</g:else>
		<header role="banner">
		    <nav class="navigation navigation-header ${fixmenu?'fixmenu-clone fixmenu-stick':''}">
		        <div class="container">
		            <div class="navigation-brand">
		                <div class="brand-logo">
		                    <a href="http://www.tordchina.com/" class="logo"></a>
		                    <span class="sr-only">Tord</span>
		                </div>
		                <button class="navigation-toggle visible-xs" type="button" data-toggle="dropdown" data-target=".navigation-navbar">
		                    <span class="icon-bar"></span>
		                    <span class="icon-bar"></span>
		                    <span class="icon-bar"></span>
		                </button>
		            </div>
		            <div class="navigation-navbar">
		                <ul class="navigation-bar navigation-bar-left">
		                    <li><a href="${createLink(uri:'/')}#intro">首页</a></li>
		                    <li><a href="${createLink(uri:'/')}#about">拓德热点</a></li>
		                    <li><a href="${createLink(uri:'/')}#features-list">装修效果</a></li>
		                    <li><a href="${createLink(controller:'marketplace')}">家居建材超市</a></li>
		                    <li class="dropdown hidden-sm">
		                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">社区 <b class="caret"></b></a>
		                        <ul class="dropdown-menu" role="menu">
		                            <li>
		                            	<a href="https://github.com/Tord/Tord/blob/master/protected/docs/guide/developer/index.md"
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

		<footer id="footer" class="footer light" role="contentinfo">
		    <div class="container">
		        <div class="footer-content row">
		            <div class="col-sm-5">
		                <div class="logo-wrapper">
		                    <img src="${assetPath(src:'logo-white.png')}" alt="logo" />
		                </div>
		                <p>拓德，互联网领先的一站式家装O2O平台。</p>
		            </div>
		            <div class="col-sm-2"></div>
		            <!--<div class="col-sm-5"></div>-->
		            <div class="col-sm-5 social-wrap">
		                <div class="footer-title">关注我们</div>
		                <ul class="list-inline socials">
		                    <li><a href="#" target="_blank"><span class="icon icon-socialmedia-08"></span></a></li>
		                    <li><a href="#" rel="publisher" target="_blank"><span class="icon icon-socialmedia-16"></span></a></li>
		                    <li><a href="#" target="_blank"><span class="icon icon-socialmedia-07"></span></a></li>
		                </ul>
		            </div>
		
		        </div>
		        <div class="copyright">
		            &copy; ${new Date().getYear()} 拓德-家装O2O平台和设计师社区
		            <a href="${createLink(uri:'/imprint')}" target="_self">关于我们</a> -
		            <a href="${createLink(uri:'/policy')}" target="_self">法律条款</a> -
		            <a href="${createLink(uri:'/press')}" target="_self">媒体信息</a> -
		            <a href="mailto:quiet_dog@163.com" target="_self">联系我们</a>
		        </div>
		    </div>
		</footer>
		
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
</html>
