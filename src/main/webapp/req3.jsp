<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>샘플 홈페이지</h1>
	
<%
	String value1 = request.getParameter("keyword");
	String value2 = request.getParameter("sort");
%>
	<p>검색어: <%=value1 %></p>
	<p>정렬기준: <%=value2 %></p>
</body>
</html>