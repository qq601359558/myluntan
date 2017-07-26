<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link  type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/base/fixed-positioning.css">
 <link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/base/main.css">
 <link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/amazeui.css">
 <link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/app.css">
</head>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/base/skrollr.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/amazeui.js"></script>
<body >
<div id="bg1" data-0="background-position:0px 0px;" data-end="background-position:-50px -800px;"></div>
<div id="bg2" data-0="background-position:0px 0px;" data-end="background-position:-50px -600px;"></div>

<div id="bg3" data-0="background-position:0px 0px;" data-end="background-position:-50px -400px;"></div>
<div id="easing_wrapper" data-1000="display:block;">
</div>
<header class="am-topbar">


    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
            data-am-collapse="{target: '#doc-topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span
            class="am-icon-bars"></span></button>

    <div class="am-collapse am-topbar-collapse" id="doc-topbar-collapse" style="z-index: 10">
        <ul class="am-nav am-nav-pills am-topbar-nav">
            <li class="am-active">
                <h1 class="am-topbar-brand">
                    <a href="#">Amaze UI</a>
                </h1>
            </li>

            <li class="am-active"><a href="#">首页</a></li>
            <li><a href="#">项目</a></li>
            <li class="am-dropdown" data-am-dropdown>
                <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
                    下拉 <span class="am-icon-caret-down"></span>
                </a>
                <ul class="am-dropdown-content">
                    <li class="am-dropdown-header">标题</li>
                    <li><a href="#">1. 去月球</a></li>
                    <li class="am-active"><a href="#">2. 去火星</a></li>
                    <li><a href="#">3. 还是回地球</a></li>
                    <li class="am-disabled"><a href="#">4. 下地狱</a></li>
                    <li class="am-divider"></li>
                    <li><a href="#">5. 桥头一回首</a></li>
                </ul>
            </li>
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
<!--侧边框-->
<div class="am-g ">
    <div class="am-u-sm-3 leftside">
        <ul class="am-nav">
            <li class="am-active"><a href="#">首页</a></li>
            <li><a href="#">开始使用</a></li>
            <li><a href="#">按需定制</a></li>
        </ul>
    </div>
    <div class="am-u-sm-9">
        <div class="am-panel am-panel-default">
            <div class="am-panel-hd">面板标题</div>
            <div class="am-panel-bd">这是一个基本的面板组件。</div>
        </div>
        <div class="am-panel am-panel-default">
            <div class="am-panel-hd">面板标题</div>
            <div class="am-panel-bd">这是一个基本的面板组件。</div>
        </div>
        <div class="am-panel am-panel-default">
            <div class="am-panel-hd">面板标题</div>
            <div class="am-panel-bd">这是一个基本的面板组件。</div>
        </div>
        <div class="am-panel am-panel-default">
            <div class="am-panel-hd">面板标题</div>
            <div class="am-panel-bd">这是一个基本的面板组件。</div>
        </div>
        <div class="am-panel am-panel-default">
            <div class="am-panel-hd">面板标题</div>
            <div class="am-panel-bd">这是一个基本的面板组件。</div>
        </div>
        <div class="am-panel am-panel-default">
            <div class="am-panel-hd">面板标题</div>
            <div class="am-panel-bd">这是一个基本的面板组件。</div>
        </div> <div class="am-panel am-panel-default">
        <div class="am-panel-hd">面板标题</div>
        <div class="am-panel-bd">这是一个基本的面板组件。</div>
    </div>
        <div class="am-panel am-panel-default">
            <div class="am-panel-hd">面板标题</div>
            <div class="am-panel-bd">这是一个基本的面板组件。</div>
        </div>


    </div>
</div>

</body>
<script type="text/javascript">
 var s=skrollr.init({
     edgeStrategy:'set',
 })
</script>
</html>