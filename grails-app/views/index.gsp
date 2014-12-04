
<!doctype html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <title>HumHub - A flexible Open Source Social Network Kit for Social Enterprise Platforms, Social Intranets and other Social Collaboration</title>
    <meta name="description" content="HumHub is a free social network software and framework built to give you the tools to make teamwork easy and successful."/>
    <meta name="keywords" content="Sociale Network, Social Intranet, Social Collaboration, Social Enterprise, Social Business, Social Software, Open Source"/>
	<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon"/>
	<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.jpg')}"/>
	<link rel="apple-touch-icon" sizes="72x72" href="${assetPath(src: 'apple-touch-icon-72x72.jpg')}"/>
	<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-114x114.jpg')}"/>
	
	<asset:stylesheet src="application.css"/>
	<asset:javascript src="application.js"/>

    <!--[if lt IE 9]>
    <script src="${assetPath(src:'html5.js')}"></script>
    <script src="${assetPath(src:'respond.min.js')}"></script>
    <![endif]-->
</head>

<body id="landing-page" >


<!-- Preloader -->
<div id="mask">
    <div id="loader"></div>
</div>

<header>

    <nav class="navigation navigation-header ">
        <div class="container">
            <div class="navigation-brand">
                <div class="brand-logo">
                    <a href="http://www.humhub.org/" class="logo"></a>
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
                    <li><a href="#intro">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#features-list">Features</a></li>
                    <li><a href="/marketplace">Marketplace</a></li>
                    <li class="dropdown hidden-sm">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Community <b class="caret"></b></a>
                        <ul class="dropdown-menu" role="menu">
                            <li>
                                <a href="https://github.com/humhub/humhub/blob/master/protected/docs/guide/developer/index.md"
                                   target="_blank"><i class="fa fa-code"></i>  Documentation</a></li>
                            <li><a href="https://github.com/humhub/humhub/commits/master" target="_blank"><i class="fa fa-bullhorn"></i> Latest updates</a>
                            </li>
                            <li><a href="https://github.com/humhub/humhub/issues/new" target="_blank"><i class="fa fa-bug"></i>Report a bug</a></li>
                            <li class="divider"></li>
                            <li><a href="http://community.humhub.com/"><i class="fa fa-life-ring"></i> Get support</a></li>
                        </ul>
                    </li>
                </ul>
              <ul class="navigation-bar navigation-bar-right">

                    <li class="featured"><a href="/service/form" data-toggle="modal" data-target="#globalModal">Professional Services</a></li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<!-- show views -->
<div id="content">
	<div id="intro" class="static-header light clearfix">
    <div class="text-heading">
        <h1 class="animated hiding" data-animation="bounceInDown" data-delay="0">A flexible Open Source </h1>

        <h1 class="animated hiding" data-animation="fadeInDown" data-delay="500"><strong>Social Network Kit</strong>
        </h1>
        <!--<p class="animated hiding" data-animation="fadeInDown" data-delay="500">for business and collaboration</p>-->
        <ul class="list-inline">
            <li><a href="/hosting" class="btn btn-default animated hiding"
                   data-animation="bounceIn"
                   data-delay="700" id="demo-button" data-toggle="modal"
                   data-target="#globalModal">Try demo</a></li>
            <li><a href="https://github.com/humhub/humhub/" target="_blank" class="btn btn-default animated hiding"
                   data-animation="bounceIn" data-delay="900"> Get on
                    Github</a></li>
        </ul>
    </div>
    <div class="video-wrapper">
        <div class="container">
            <img src="${assetPath(src: 'features/app.png')}" alt="video" class="img-responsive animated hiding"
                 data-animation="bounceInUp" data-delay="1000"/>
        </div>
    </div>
</div>

<a id="showHere"></a>
<br/>
<section id="about" class="section dark">

    <div class="container">

        <br/>

        <div class="section-header center" data-animation="fadeInDown">

            <h2>Collaboration has never been easier</h2>

            <div class="sub-heading">
                Connect people, work together on projects and share knowledge in a better way.
            </div>
            <div class="col-sm-6" data-animation="fadeInLeft">
                <img src="${assetPath(src: 'features/social_collaboration_map.jpg')}" class="img-responsive" alt="process 3"/>
            </div>
            <div class="col-sm-6" data-animation="fadeInRight">
                <br/><br/>
                <article>

                    <p>HumHub is a free social network software and framework built to give you the tools to make
                        teamwork easy and successful.</p>

                    <p class="thin">It's lightweight, powerful and comes with an user-friendly interface. With HumHub
                        you can create your own customized social network, social intranet or huge social enterprise
                        application that really fits your needs. </p>

                    <p class="thin">Boost your business, support your customers, teach your students or organize your
                        football club. It's on you.</p>
                </article>
                <br/><br/><br/><br/>
            </div>
        </div>
    </div>


    <hr class="no-margin"/>


    <div class="container">

        <div class="section-content row">
            <br/><br/>

            <h2>Powerful, flexible and 100% open source</h2>

            <div class="sub-heading">
                HumHub is fast, easy and the most budget-friendly way to build your own social software.
            </div>
            <br/><br/>

            <div class="col-sm-3">
                <article class="text-center" data-animation="fadeInLeft" data-delay="0">
                    <i class="howitworks icon icon-seo-icons-25 icon-active"></i>
                    <span class="h7">OPEN</span>

                    <p class="thin">HumHub is completely open- source. Take advantage of the work already done and even
                        improve it. Every suggestion or help is welcome.</p>
                </article>
                <!--<span class="icon icon-arrows-04"></span>-->
            </div>
            <div class="col-sm-3">
                <article class="text-center" data-animation="fadeInLeft" data-delay="400">
                    <i class="howitworks icon icon-graphic-design-07 icon-active"></i>
                    <span class="h7">Flexible</span>

                    <p class="thin">With a powerful module system you can extend HumHub by using third party tools,
                        writing your own or connect existing software.</p>
                </article>
                <!--<span class="icon icon-arrows-04"></span>-->
            </div>
            <div class="col-sm-3">
                <article class="text-center" data-animation="fadeInLeft" data-delay="800">
                    <i class="howitworks icon icon-badges-votes-14 icon-active"></i>
                    <span class="h7">Secure</span>

                    <p class="thin">Your server, your data, your rules. HumHub is a self- hosted solution and runs on
                        almost every server. You are in the full control of your data.</p>
                </article>
            </div>
            <div class="col-sm-3">
                <article class="text-center" data-animation="fadeInLeft" data-delay="800">
                    <i class="howitworks icon icon-seo-icons-04 icon-active"></i>
                    <span class="h7">Services</span>

                    <p class="thin">From small modifications until full custom platforms, we provide professional
                        services to build individual HumHub solutions for you.</p>
                    <br/>
                    <a href="/service/form" class="btn btn-secondary"
                       data-toggle="modal" data-target="#globalModal">Get in touch</a>
                </article>
            </div>
            <br/>
        </div>
        <br/>
        <br/>


    </div>


    <hr class="no-margin"/>


    <div class="container">
        <div class="section-content row">
            <div class="col-sm-6 pull-right" data-animation="fadeInRight">
                <img src="${assetPath(src: '/features/modules.png') }" class="img-responsive" alt="process 2"/><br/><br/>
            </div>
            <div class="col-sm-6" data-animation="fadeInLeft">
                <br/><br/>
                <article>
                    <h3>Powerful module system</h3>

                    <p>The magic behind HumHub are modules. With modules you can extend HumHub to do almost anything you
                        can imagine.</p>

                    <p class="thin">Integrate your internal workflows, plug in your existing software or connect to
                        common web services.</p>

                    <p class="thin">Get any kind of modules on-the-fly from the <a
                            href="/marketplace">marketplace</a> or submit your
                        owns.</p>
                    <br/>
                    <a href="/marketplace" class="btn btn-secondary"
                       data-animation="bounceIn"">Go to marketplace</a>
                </article>
            </div>

        </div>
    </div>
</section>

<section id="newsletter" class="long-block light">
    <div class="container center">
        <div class="col-sm-12 col-lg-5">
            <i class="icon icon-seo-icons-24 pull-left"></i>
            <article class="pull-left">
                <br/>

                <h2><strong>Get</strong> live updates</h2>

                <!--<p class="thin">No spam promise - only latest news and prices!</p>-->
                <p class="thin">Be amongst the first to know about upcoming features</p>
            </article>
        </div>
        <div class="col-sm-12 col-lg-7">

            <div id="newsletter-signup"></div>

        </div>


    </div>
</section>


<section id="features-list" class="section dark">

    <h2>Ready for take-off</h2>

    <div class="sub-heading">
        A bunch of great features already on board.
    </div>
    <br/><br/>

    <div class="container" data-animation="fadeInDown">
        <div class="col-md-3 col-sm-6 col-xs-12">
            <article class="center">
                <i class="icon icon-alerts-18 icon-active"></i>
                <span class="h7">NOTIFICATIONS</span>

                <p class="thin">Well informed about things related to you</p>
            </article>
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
            <article class="center">
                <i class="icon icon-seo-icons-01 icon-active"></i>
                <span class="h7">ACTIVITY STREAM</span>

                <p class="thin">Monitor work and communications at a glance</p>
            </article>
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
            <article class="center">
                <i class="icon icon-office-12 icon-active"></i>
                <span class="h7">DASHBOARD</span>

                <p class="thin">Overview and fast access to the most important information </p>
            </article>
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
            <article class="center">
                <i class="icon icon-multimedia-17 icon-active"></i>
                <span class="h7">SPACES</span>

                <p class="thin">Communicate and collaborate subject-related</p>
            </article>
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12">
            <article class="center">
                <i class="icon icon-badges-votes-01 icon-active"></i>
                <span class="h7">SOCIAL TOOLS</span>

                <p class="thin">Follow, like and connect with other</p>
            </article>
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12">
            <article class="center">
                <i class="icon icon-faces-users-03 icon-active"></i>
                <span class="h7">USER PROFILES</span>

                <p class="thin">The digital business card for each user</p>
            </article>
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12">
            <article class="center">
                <i class="icon icon-faces-users-04 icon-active"></i>
                <span class="h7">GROUPS</span>

                <p class="thin">Organize user in departments, branches or anything else</p>
            </article>
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
            <article class="center">
                <i class="icon icon-realestate-living-14 icon-active"></i>
                <span class="h7">DIRECTORY</span>

                <p class="thin">Find spaces, users and groups in a sorted way</p>
            </article>
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
            <article class="center">
                <i class="icon icon-documents-bookmarks-09 icon-active"></i>
                <span class="h7">FILES</span>

                <p class="thin">Share documents, media files and discuss about it</p>
            </article>
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
            <article class="center">
                <i class="icon icon-multimedia-20 icon-active"></i>
                <span class="h7">SEARCH</span>

                <p class="thin">Find people, discussions and files easily</p>
            </article>
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
            <article class="center">
                <i class="icon icon-multimedia-05 icon-active"></i>
                <span class="h7">MOBILE READY</span>
                <p class="thin">Use it with all kind of modern devices like smart phones and tablets</p>
            </article>
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
            <article class="center">
                <i class="icon icon-emoticons-25 icon-active"></i>
                <span class="h7">AND MORE</span>

                <p class="thin">We are constantly working with love on new features</p>
            </article>
        </div>
    </div>
</section>


</div><!-- content -->




<footer id="footer" class="footer light">
    <div class="container">
        <div class="footer-content row">
            <div class="col-sm-5">
                <div class="logo-wrapper">
                    <img src="${assetPath(src:'logo-white.png')}" alt="logo" />
                </div>
                <p>HumHub is a free social network software and framework built to give you the tools to make teamwork easy and successful.</p>
                <div class="social-buttons">



                    <!-- Fügen Sie dieses Tag an der Stelle ein, an der die +1-Schaltfläche erscheinen soll. -->
                    <div class="g-plusone" data-size="medium" data-href="https://www.humhub.org"></div>



                    <a href="https://twitter.com/share" class="twitter-share-button" data-url="http://www.humhub.org">Tweet</a>

                </div>
            </div>
            <div class="col-sm-2"></div>
            <!--<div class="col-sm-5"></div>-->
            <div class="col-sm-5 social-wrap">
                <div class="footer-title">Get social with us</div>
                <ul class="list-inline socials">
                    <li><a href="#" target="_blank"><span class="icon icon-socialmedia-08"></span></a></li>
                    <li><a href="#" rel="publisher" target="_blank"><span class="icon icon-socialmedia-16"></span></a></li>
                    <li><a href="#" target="_blank"><span class="icon icon-socialmedia-07"></span></a></li>
                </ul>
            </div>

        </div>
        <div class="copyright">
            &copy; 2014 HumHub. All rights reserved.
            <a href="/site/imprint" target="_self">Imprint</a> -
            <a href="/site/policy" target="_self">Privacy Policy</a> -
            <a href="/press" target="_self">Press</a> -
            <a href="mailto:info@humhub.org" target="_self">Contact</a>
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

<%--<script type="text/javascript" src="/js/bootstrap.min.js"></script>--%>
<%--<script type="text/javascript" src="/js/jquery.flexslider-min.js"></script>--%>
<%--<script type="text/javascript" src="/js/jquery.nav.js"></script>--%>
<%--<script type="text/javascript" src="/js/jquery.appear.js"></script>--%>
<%--<script type="text/javascript" src="/js/jquery.plugin.js"></script>--%>
<%--<script type="text/javascript" src="/js/jquery.countdown.js"></script>--%>
<%--<script type="text/javascript" src="/js/waypoints.min.js"></script>--%>
<%--<script type="text/javascript" src="/js/waypoints-sticky.min.js"></script>--%>
<%--<script type="text/javascript" src="/js/jquery.validate.js"></script>--%>
<%--<script type="text/javascript" src="/js/toastr.min.js"></script>--%>
<%--<script type="text/javascript" src="/js/headhesive.min.js"></script>--%>
<%--<!--<script type="text/javascript" src="/mailchimp/js/mailing-list.js"></script>-->--%>
<%--<script type="text/javascript" src="/js/scripts.js"></script>--%>


</body>
</html>