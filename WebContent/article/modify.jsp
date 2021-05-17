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
<from action="../article/save.do" method="post">
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
		 <tr>
			<td>${article.article }</td>
			<td><input type="text" value="${article.articleTitle }"></td>
			<td><input type="text" value="${article.articleAuthor }"></td>
			<!-- <td><button type="submit" value="保存"/>保存</td> -->
		 	<!-- <td><a  target='_blank' href= '../article/index.do'>保存修改</a></td> -->
			<td><button type="submit" value="修改" />修改</td>
		</tr>
	</tbody>
</table> 
</from> 
</body>
</html>