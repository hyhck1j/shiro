<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String base = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
	String basePath = base + request.getContextPath() + "/";
%>
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
<body>
<form action="../article/save.do" method="post">
	<table width="90%" class="table"> 
		<thead>
			<tr> 
				<th>文章名称</th> 
				<th>文章作者</th> 
				<th>操作</th> 
			</tr>
			
		</thead>
		<tbody>
			 <tr>
				<td><input type="text" name="articleAuthor"></td>
				<td><input type="text" name="articleTitle"></td>
				<td><button type="submit" value="保存"/>保存</td>
			</tr>
		</tbody>
	</table> 
	
<!-- 	<script type="text/javascript">
	$(".form-horizontal").ajaxForm({
        type: "POST",
        data: $(this).serialize(),
        dataType: "json",
        beforeSend: function () {
        },
        success: function (data) {
            //alert(data.status);
            if (data.status == 1) {
                //window.location.go(-1);
                self.location = document.referrer;
                //$(this).attr('data-url', data.url);
                //$("#bl_id").val(data.id);
                //document.getElementById('extrabuton').click();
            } else {
                alert(data.info);
            }
        },
        error: function (data) {
            fillMessageToModal("<span class='text-danger'>错误</span>", transform(data.responseJSON));
            messageModal.modal('show');
            autoCloseMessageModal();
        }
    });
	</script> -->
	
</form>
</body>
</html>