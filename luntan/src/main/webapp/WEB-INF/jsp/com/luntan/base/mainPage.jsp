<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"> <!--在 IE 运行最新的渲染模式-->
    <meta name="renderer" content="webkit"> <!--指定网页使用 webkit 引擎渲染，360 浏览器 6.5+ 有效-->
    <!--初始化移动端浏览显示，让网页的宽度适应设备的宽度和禁止窗口缩放-->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta http-equiv="Cache-Control" content="no-siteapp"/> <!--禁止百度移动搜索转码-->

    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/base/fixed-positioning.css">
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/base/main.css">
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/amazeui.css">
    <link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/app.css">

</head>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/base/skrollr.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/amazeui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/base/circle_JT.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/base/jquery.simpleWeather.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/base/gulpfile.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/base/mainPage.js"></script>
<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=f2cfae7dc2724154290f8e601c7558a1"></script> 



<body>
<div id="bg1" data-0="background-position:0px 0px;" data-end="background-position:-50px -800px;"></div>
<div id="bg2" data-0="background-position:0px 0px;" data-end="background-position:-50px -600px;"></div>

<div id="bg3" data-0="background-position:0px 0px;" data-end="background-position:-50px -400px;"></div>
<div id="easing_wrapper" data-1000="display:block;">
</div>
<!--导航栏-->

<header class="am-topbar am-topbar-fixed-top">
    
	
    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
            data-am-collapse="{target: '#doc-topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span
            class="am-icon-bars"></span></button>
 
    <div class="am-collapse am-topbar-collapse" id="doc-topbar-collapse">
        <ul class="am-nav am-nav-pills am-topbar-nav">
           <li ><h1 class="am-topbar-brand">
        <a href="#">Forum For JAVA </a>
    </h1></li>
            <li class="am-active"><a href="#">首页</a></li>
            <li class="am-dropdown" data-am-dropdown>
                <a class="am-dropdown-toggle" data-am-dropdown-toggle
                   href="javascript:;">框架列表<span class="am-icon-caret-down"></span>
                </a>
                <ul class="am-dropdown-content">
                    <li class="am-dropdown-header">前端</li>
                    <li><a href="#" class='am-active'>JavaScript</a></li>
                    <li><a href="#">Jquery</a></li>
                    <li><a href="#">API</a></li>
                    <li class="am-divider"></li>
                    <li class="am-dropdown-header">后端</li>
                    <li><a href="#">JAVA基础</a></li>
                    <li><a href="#">JDK</a></li>
                    <li><a href="#">框架</a></li>
                </ul>
            </li>
            <li><a href="#">论坛</a></li>
        </ul>

        <form class="am-topbar-form am-topbar-left am-form-inline" role="search">
            <div class="am-form-group">
                <input type="text" class="am-form-field am-input-sm" placeholder="搜索">
            </div>
        </form>

        <div class="am-topbar-right">
            <div class="am-dropdown" data-am-dropdown="{boundary: '.am-topbar'}">
                <button class="am-btn am-btn-secondary am-topbar-btn am-btn-sm am-dropdown-toggle"
                        data-am-dropdown-toggle>其他 <span class="am-icon-caret-down"></span></button>
                <ul class="am-dropdown-content">
                    <li><a href="#">注册</a></li>
                    <li><a href="#">随便看看</a></li>
                </ul>
            </div>
        </div>

        <div class="am-topbar-right">
            <button class="am-btn am-btn-primary am-topbar-btn am-btn-sm">登录</button>
        </div>
    </div>
</header>
<BR/>
<!--侧边框-->
<div class="am-g ">
    <div class="am-u-sm-3 leftside  ">
        <ul class="am-nav">
            <li class="am-active"><a href="#">Welcome</a></li>
            <li><a href="#">天气</a></li>
            <li><a href="#">新闻</a></li>
            <li><a href="#">技术网站</a></li>
        </ul>
        <!--天气-->
        <div class="am-panel-bd " id="weather"  style="position: relative   ;bottom: 0px"></div>
            <!--时钟-->
            <div class="am-panel-bd " id="dom"  style="position: relative   ;bottom:0px"></div>


    </div>
		<div class="am-u-sm-9" style="height:500px">
			<div class="am-panel am-panel-default" style="height:500px">
				<div class="am-panel-bd" id='mapDiv' style="height:500px"></div>
			</div>

		</div>
	</div>

</body>
<script type="text/javascript">
$(document).ready(function () {
	//背景浮点
	 var s = skrollr.init({
        edgeStrategy: 'set',
    })
    //钟表
    _clock();
	//天气
	getWeather();
	//新闻
	//_getNews();
	mapInit();
});


 
  

</script>
</html>