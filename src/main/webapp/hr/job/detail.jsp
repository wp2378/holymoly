<%@page import="hr.vo.Job"%>
<%@page import="hr.dao.JobDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직종 상세</title>
</head>
<body>
	<h1>직종 상세 정보</h1>
<% 
	// 요청 url http://localhost/Sample/hr/job/detail.jsp?jId=FI_ACCOUNT

	String jobId = request.getParameter("jId");
	JobDao jobDao = new JobDao();
	Job job = jobDao.getJobById(jobId);
%>

	<dl>
		<dt>아이디</dt><dd><%=job.getId() %></dd>
		<dt>제목</dt><dd><%=job.getTitle() %></dd>
		<dt>최저급여</dt><dd><%=job.getMinsalary() %></dd>
		<dt>최고급여</dt><dd><%=job.getMaxsalary() %></dd>
	</dl>
	
	<div>
		<a href="list.jsp">목록</a>
	</div>
</body>
</html>