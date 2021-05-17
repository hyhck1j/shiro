<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%
	String base = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
	String basePath = base + request.getContextPath() + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" width="500">
		<tr>
			<th>编号</th>
			<th>用户名</th>
			<th>密码</th>
		</tr>
	<c:forEach items="${requestScope.userList }" var="user">
		<tr>
			<td>${user.userId }</td>
			<td>${user.userName }</td>
			<td>${user.userPwd }</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>