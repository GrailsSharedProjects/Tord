<!doctype html>
<html lang="zh">
<head>
	<meta name="layout" content="main_tord"/>
    <title>成都装修_成都装修公司_拓德一站式家装O2O平台</title>
</head>
<body>
<div id="intro" class="static-header light clearfix">
    <div class="text-heading">
        <h1 class="animated hiding" data-animation="bounceInDown" data-delay="0">互联网领先的</h1>

        <h1 class="animated hiding" data-animation="fadeInDown" data-delay="500"><strong>一站式家装O2O平台</strong>
        </h1>
<%--        <p class="animated hiding" data-animation="fadeInDown" data-delay="500">设计家园的新方式</p>--%>
        <ul class="list-inline">
            <li><a href="/hosting" class="btn btn-default animated hiding"
                   data-animation="bounceIn"
                   data-delay="700" id="demo-button" data-toggle="modal"
                   data-target="#globalModal">我要装修</a></li>
            <li><a href="${createLink(uri:'/marketplace')}" target="_blank" class="btn btn-default animated hiding"
                   data-animation="bounceIn" data-delay="900"> 我要采购</a></li>
        </ul>
    </div>
    <div class="video-wrapper">
        <div class="container">
            <img src="${assetPath(src: 'features/app3.png')}" alt="video" class="img-responsive animated hiding"
                 data-animation="bounceInUp" data-delay="800"/>
        </div>
    </div>
</div>

<a id="showHere"></a>
<br/>
<section id="hotspot" class="section dark">

    <div class="container">

        <br/>

        <div class="section-header center" data-animation="fadeInDown">

            <h2>搞定装修，从来没有这么简单过！</h2>

            <div class="sub-heading">
                Connect people, work together on projects and share knowledge in a better way.
            </div>
            <div class="col-sm-6" data-animation="fadeInLeft">
                <img src="${assetPath(src: 'features/social_collaboration_map.jpg')}" class="img-responsive" alt="process 3"/>
            </div>
            <div class="col-sm-6" data-animation="fadeInRight">
                <br/><br/>
                <article>

                    <p>Tord is a free social network software and framework built to give you the tools to make
                        teamwork easy and successful.</p>

                    <p class="thin">It's lightweight, powerful and comes with an user-friendly interface. With Tord
                        you can create your own customized social network, social intranet or huge social enterprise
                        application that really fits your needs. </p>

                    <p class="thin">Boost your business, support your customers, teach your students or organize your
                        football club. It's on you.</p>
                </article>
                <br/><br/><br/><br/>
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

<%--            <div id="newsletter-signup"></div>--%>

        </div>
    </div>
</section>

<section id="product" class="section dark" >

    <div class="container">

        <div class="section-content row">
            <br/><br/>

            <h2>使用马赛克</h2>

            <div class="sub-heading">
                Tord is fast, easy and the most budget-friendly way to build your own social software.
            </div>
            <br/><br/>

            <div class="col-sm-3">
                <article class="text-center" data-animation="fadeInLeft" data-delay="0">
                    <i class="howitworks icon icon-seo-icons-25 icon-active"></i>
                    <span class="h7">OPEN</span>

                    <p class="thin">Tord is completely open- source. Take advantage of the work already done and even
                        improve it. Every suggestion or help is welcome.</p>
                </article>
                <!--<span class="icon icon-arrows-04"></span>-->
            </div>
            <div class="col-sm-3">
                <article class="text-center" data-animation="fadeInLeft" data-delay="400">
                    <i class="howitworks icon icon-graphic-design-07 icon-active"></i>
                    <span class="h7">Flexible</span>

                    <p class="thin">With a powerful module system you can extend Tord by using third party tools,
                        writing your own or connect existing software.</p>
                </article>
                <!--<span class="icon icon-arrows-04"></span>-->
            </div>
            <div class="col-sm-3">
                <article class="text-center" data-animation="fadeInLeft" data-delay="800">
                    <i class="howitworks icon icon-badges-votes-14 icon-active"></i>
                    <span class="h7">Secure</span>

                    <p class="thin">Your server, your data, your rules. Tord is a self- hosted solution and runs on
                        almost every server. You are in the full control of your data.</p>
                </article>
            </div>
            <div class="col-sm-3">
                <article class="text-center" data-animation="fadeInLeft" data-delay="800">
                    <i class="howitworks icon icon-seo-icons-04 icon-active"></i>
                    <span class="h7">Services</span>

                    <p class="thin">From small modifications until full custom platforms, we provide professional
                        services to build individual Tord solutions for you.</p>
                    <br/>
                    <a href="${createLink(controller:'marketplace')}" class="btn btn-secondary" >现在就去选购</a>
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

                    <p>The magic behind Tord are modules. With modules you can extend Tord to do almost anything you
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

<%--            <div id="newsletter-signup"></div>--%>

        </div>
    </div>
</section>

<section id="decoration-list" class="section dark">

    <h2>装修效果展示</h2>

    <div class="sub-heading">
		给您最完美的家装设计灵感
    </div>
    <br/><br/>

    <div class="container" data-animation="fadeInDown">
    	<g:each var="p" in="${homepagePics}" status="i">
		<div class="col-md-3 col-sm-6 col-xs-12">
            <article class="center">
            	<a href="#" data-toggle="modal" data-target="#globalModal">
            	<img src="${assetPath2(src: p.url, width:243, height:243)}" style="width: 100%" />
            	</a>
            	<noscript><img src="${assetPath(src: p.url)}" style="width: 100%" /></noscript>
                <span class="h7">${p.title }</span>

                <p class="thin">${p.desc}</p>
            </article>
        </div>
		</g:each>
    </div>
</section>

</body>
</html>