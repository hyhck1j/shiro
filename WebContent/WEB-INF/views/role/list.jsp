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
  <link rel="icon" type="image/png" href="assets/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="../../assets/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="../../assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="../../assets/css/admin.css">
  
  <!-- 分页css资源 -->
  <link href="../../assets/pagination/pagination.css" rel="stylesheet" type="text/css">
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
            <li><a href="../../admin/resource/list.do" ><span class="am-icon-th"></span> 资源管理</a></li>
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
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">首页</strong> / <small>用户管理</small></div>
      </div>

      <ul class="am-avg-sm-1 am-avg-md-4 am-margin am-padding am-text-center admin-content-list ">
        <li><a href="../../admin/user/add.do" class="am-text-success">新增</a></li>
        <li><a href="javascript:void(0);" class="am-text-warning del">删除</a></li>
        <li><a href="javascript:void(0);" class="am-text-secondary">设置角色</a></li>
      </ul>

      <div class="am-g">
        <div class="am-u-sm-12">
          	<table class="am-table am-table-bordered am-table-striped am-table-compact">
			  <thead>
			  <tr>
			    <th><input type="checkbox" class="all"/></th>
			    <th>登陆账号</th>
			    <th>登陆密码</th>
			    <th>操作</th>
			  </tr>
			  </thead>
			  <tbody id="data-container">
			  </tbody>
			</table>
        </div>
      </div>
	  <div class="am-g">
        <div class="am-u-sm-12">
        	<div id="pagination-page"></div>
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
<!-- 分页js资源 -->
<script src="../../assets/pagination/pagination.js"></script>
<!-- 模板js资源 -->
<script src="../../assets/artTemplate/template.js"></script>


<script type="text/template" id="user-data-tpl">
{{if rows}}
	{{each rows as row i}}
		<tr>
			<td><input type="checkbox" class="item" data-id="{{row.userId}}"/></td>
			<td>{{row.userName}}</td>
			<td>{{row.userPwd}}</td>
			<td><a href="../../admin/user/edit/{{row.userId}}.do" class="am-btn am-btn-primary user-edit" data-id="{{row.userId}}">编辑</a></td>
		</tr>
	{{/each}}
{{/if}}
</script>


<script type="text/javascript">
$(function(){
	var dataContainer = $("#data-container") ;
	
	$('#pagination-page').pagination({
		/* alias: {
			pageNumber: 'pageNumber',
			pageSize: 'pageSize'
		}, */
	    dataSource: '../../admin/user/pagination.do',
	    locator: 'data',
	    totalNumber: '${totalNumber}',
	    pageSize: 2,
	    showGoInput: true,
	    showGoButton: true,
	    ajax: {
	        beforeSend: function(){
	        	$('.all').prop("checked",false);
	        	dataContainer.html('正在加载数据 ...');
	        }
	    },
	    callback: function(data, pagination){
	    	template.config('escape', false) ;
	    	var gridRows = template('user-data-tpl',{'rows': data || []}) ;	
	    	dataContainer.html(gridRows);
	    	
	    	$('.item').off('click').on('click',function(){
	    		var checked = $(".item[type='checkbox']:checked").length ;
	    		var checkbox = $(".item[type='checkbox']").length ;
	    		if(checked == checkbox && checked > 0){
	    			$('.all').prop("checked",true);
	    		}else{
	    			$('.all').prop("checked",false);
	    		}
	    	});
	    }
	});
	
	/**全选Or全不选*/
	$('.all').off('click').on('click',function(){
		var $this = $(this) ;
		if($this.prop('checked')){
			$('.item').prop("checked",true);
		}else{
			$('.item').prop("checked",false);
		}
	});
	/**删除*/
	$('.del').off('click').on('click',function(){
		var checked = $(".item[type='checkbox']:checked").length ;
		if(checked == 0){
			alert('你暂未选择要删除的数据');
			return  ;
		}
		
		if(confirm("数据删除后无法恢复，您确认要删除吗?")){
			var ids=[] ;
			$(".item[type='checkbox']:checked").each(function(i ,item){
				var $this = $(item) ;
				var id = $this.attr('data-id') ;
				ids.push(id) ;
			});
			
			console.debug(ids.join(',')) ;
			
			$.post('/admin/user/del.do',{userIds:ids.join(',')},function(res){
				console.debug(res) ;
				if(res.code == 'error'){
					alert(res.message) ;
				}else{
					alert(res.message) ;
					window.location.href="/admin/user/list.do";
				}
			});
		}
		
		
	});
});
</script>
</body>
</html>
