<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" width="500">
		<tr>
			<th>article</th>
			<th>articleTitle</th>
			<th>articleAuthor</th>
			<th>articleContent</th>
			<th>articleOrder</th>
		</tr>
	<c:forEach items="${requestScope.article }" var="article">
		<tr>
			<td>${article.article }</td>
			<td>${article.articleTitle}</td>
			<td>${article.articleAuthor }</td>
			<td>${article.articleContent }</td>
			<td>${article.articleOrder }</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>