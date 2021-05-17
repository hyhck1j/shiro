<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>列表页面</title>

<script type="text/javascript" src="../static/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../static/js/jquery.page.js"></script>
<style>
body,table{ 
font-size:12px; 
} 
table{ 
table-layout:fixed; 
empty-cells:show; 
border-collapse: collapse; 
margin:0 auto; 
} 
td{ 
height:30px; 
} 
h1,h2,h3{ 
font-size:12px; 
margin:0; 
padding:0; 
} 
.table{ 
border:1px solid #cad9ea; 
color:#666; 
} 
.table th { 
background-repeat:repeat-x; 
height:30px; 
} 
.table td,.table th{ 
border:1px solid #cad9ea; 
padding:0 1em 0; 
} 
.table tr.alter{ 
background-color:#f5fafe; 
} 
*{ margin:0; padding:0; list-style:none;}
a{ text-decoration:none;}
a:hover{ text-decoration:none;}
.tcdPageCode{padding: 15px 20px;text-align: left;color: #ccc;text-align:center;}
.tcdPageCode a{display: inline-block;color: #428bca;display: inline-block;height: 25px;	line-height: 25px;	padding: 0 10px;border: 1px solid #ddd;	margin: 0 2px;border-radius: 4px;vertical-align: middle;}
.tcdPageCode a:hover{text-decoration: none;border: 1px solid #428bca;}
.tcdPageCode span.current{display: inline-block;height: 25px;line-height: 25px;padding: 0 10px;margin: 0 2px;color: #fff;background-color: #428bca;	border: 1px solid #428bca;border-radius: 4px;vertical-align: middle;}
.tcdPageCode span.disabled{	display: inline-block;height: 25px;line-height: 25px;padding: 0 10px;margin: 0 2px;	color: #bfbfbf;background: #f2f2f2;border: 1px solid #bfbfbf;border-radius: 4px;vertical-align: middle;}

.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}
</style>

</head>
<body>

<a class="button"  target='_blank' href="../article/create.do">新增</a>

<table width="90%" class="table"> 
	<thead>
		<tr> 
			<th>文章编号</th> 
			<th>文章名称</th> 
			<th>文章作者</th> 
			<th>操作</th> 
		</tr>
	</thead>
	<tbody id="dataContent">
		 
	</tbody>
</table> 
<div class="tcdPageCode"></div>
<script>
	var pageCount = '${pageCount}' ;

	function loadData(pageNumber){
    	$.post('../article/paginated.do',{rows:5,page:pageNumber},function(rst){
    		console.debug(rst) ;
    		if(rst.status != 'ok'){
				alert(rst.message) ;
				return  ;
        	}
          	var content = '' ;
            $.each(rst.data,function(i,item){
        	   var tr = "<tr>";
	        	tr += "<td>"+ item.article +"</td>" ;
	        	tr += "<td>"+ item.articleTitle +"</td>" ;
	        	tr += "<td>"+ item.articleAuthor +"</td>" ;
	        	tr += "<td><a target='_blank' href='../article/modify.do?articleId="+item.article+"'> 修改  </a>  | <a target='_blank' href='javascript:void(0);' name='del' data-article-id='"+item.article+"'> 删除 </a></td>" ;
        	   	tr += "</tr>" ;
        	   
        	content += tr ;
            })
	            
	         $('#dataContent').html(content) ;
            
            $('a[name=del]').off('click').on('click',function(){
            	var articleId = $(this).attr('data-article-id');
            	
            	console.debug('articleId =  '+ articleId);
            	var r = confirm("您确认要删除该条数据吗？")
            	  if (r==true){
            	   $.post('../article/delete.do',{article :articleId},function(rst){
            		   //(rst)接收controller传来的 json
            		   /**如果不是ok 表示删除失败则提示错误信息*/
            		   if(rst.status != 'ok'){
            			   alert(rst.message) ;
            			   return  ;
            		   }
            		   
            		   window.location.reload() ;
            	   }) ;
            	  }
            	
            })
    	})
    }
    
    $(function(){
    	if(!isNaN(pageCount) && pageCount> 0){
    		 $(".tcdPageCode").createPage({
   		        pageCount: pageCount,
   		        current:1,
   		        backFn:function(page){
   		           console.log(page);
   		        loadData(page) ;
   		       }
   		    });
    		 loadData(1) ;
    	}
    	
    })
</script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>

</body>
</html>