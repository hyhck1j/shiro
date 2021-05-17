<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String base = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
	String basePath = base + request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=basePath %>user/save.do" method="post">
		用户名：<input name="userName" placeholder="用户名"><br>
		密码：<input name="userPwd" placeholder="文章标题"><br>
				
		<input type="submit" value="添加文章">
	</form>
</body>
</html>