<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js fixed-layout">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>后台管理系统</title>
  <meta name="keywords" content="index">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="../../assets/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="../../assets/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="../../assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="../../assets/css/admin.css">
</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

<header class="am-topbar am-topbar-inverse admin-header">
  <div class="am-topbar-brand">
    <strong>林</strong> <small>后台管理模板</small>
  </div>

  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
      <li class="am-dropdown" data-am-dropdown>
        <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
          <span class="am-icon-users"></span> 管理员 <span class="am-icon-caret-down"></span>
        </a>
        <ul class="am-dropdown-content">
          <li><a href="#"><span class="am-icon-user"></span> 资料</a></li>
          <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
          <li><a href="#"><span class="am-icon-power-off"></span> 退出</a></li>
        </ul>
      </li>
      <li class="am-hide-sm-only"><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>

<div class="am-cf admin-main">
  <!-- sidebar start -->
  <div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
    <div class="am-offcanvas-bar admin-offcanvas-bar">
      <ul class="am-list admin-sidebar-list">
        <li><a href="admin-index.html"><span class="am-icon-home"></span> 首页</a></li>
        <li class="admin-parent">
          <a class="am-cf" data-am-collapse="{target: '#collapse-nav'}">
          <span class="am-icon-file"></span> 系统管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
          <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">
            <li><a href="../../admin/user/list.do" class="am-cf am-active"><span class="am-icon-check"></span> 用户管理</a></li>
            <li><a href="../../admin/role/list.do"><span class="am-icon-puzzle-piece"></span> 角色管理</a></li>
            <li><a href="admin-gallery.html"><span class="am-icon-th"></span> 资源管理</a></li>
          </ul>
        </li>
      </ul>

    </div>
  </div>
  <!-- sidebar end -->

  <!-- content start -->
  <div class="admin-content">
    <div class="admin-content-body">
      <div class="am-cf am-padding">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">首页</strong> / <small><a href="../../admin/user/list.do">用户管理</a></small> / <small>新增用户</small></div>
      </div>
      <hr>
      <div class="am-g">
        <div class="am-u-sm-12">
          <form class="am-form am-form-horizontal" id="addForm">
            <div class="am-form-group">
              <label for="userName" class="am-u-sm-3 am-form-label">登陆账号</label>
              <div class="am-u-sm-9">
                <input type="text" id="userName" name="userName" placeholder="登陆账号">
                <small>输入你的登陆账号，让我们记住你。</small>
              </div>
            </div>

            <div class="am-form-group">
              <label for="userPwd" class="am-u-sm-3 am-form-label">登陆密码</label>
              <div class="am-u-sm-9">
                <input type="password" id="userPwd" name="userPwd" placeholder="登陆密码">
                <small>登陆密码你懂得...</small>
              </div>
            </div>

            <div class="am-form-group">
              <label for="userPwd2" class="am-u-sm-3 am-form-label">验证密码</label>
              <div class="am-u-sm-9">
                <input type="password" id="userPwd2" name="userPwd2" placeholder="验证密码">
              </div>
            </div>

            <div class="am-form-group">
              <div class="am-u-sm-9 am-u-sm-push-3">
                <button type="button" class="am-btn am-btn-primary" id="save">保存</button>
              </div>
            </div>
          </form>
        </div>
      </div>

    </div>

    <footer class="admin-content-footer">
      <hr>
      <p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
    </footer>
  </div>
  <!-- content end -->

</div>

<a href="#" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"></a>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<!--[if lt IE 9]>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<!--<![endif]-->
<script src="../../assets/js/amazeui.min.js"></script>
<script src="../../assets/js/app.js"></script>

<script type="text/javascript">

$(function(){
	$('#save').on('click',function(){
		var formData = $("#addForm").serialize();
		console.debug(formData) ;
		
		$.post('../../admin/user/save.do',formData,function(rst){
			console.debug(rst) ;
			if(rst.code == 'error'){
				alert(rst.message) ;
			}else{
				if(confirm(rst.message +" ,您是否要跳转到列表页面")){
					window.location.href="../../admin/user/list.do";
				}
			}
		});
	});
});
</script>

</body>
</html>
