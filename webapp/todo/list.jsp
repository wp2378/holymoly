<%@page import="vo.Todo"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="dto.Pagination"%>
<%@page import="utils.NumberUtils"%>
<%@page import="dto.LoginUser"%>
<%@page import="dao.TodoDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" ></script>
<title>커뮤니티::일정 목록</title>
</head>
<body>
<jsp:include page="../include/navbar.jsp">
	<jsp:param value="todo" name="menu"/>
</jsp:include>
<div class="container">
	<div class="row">
		<div class="col-12">
			<h1>일정 목록</h1>
<%
	LoginUser loginUser = (LoginUser) session.getAttribute("LOGIN_USER");
	/*
		요청 URL
		localhost/comn/todo/list.jsp
		localhost/comn/todo/list.jsp?page=xx
		요청 파라미터
		page=xx
	*/
	// 1. 요청파라미터 값을 조회한다.
	int currentPage = NumberUtils.toInt(request.getParameter("page"), 1);
	// 2. COMM_TODOS 테이블에 대한 CRUD기능이 구현된 TodoDao객체를 생성한다.
	TodoDao todoDao = new TodoDao();
	// 3. 전체 행의 갯수를 조회하기
	int totalRows = todoDao.getTotalRows();
	// 4. 페이징처리에 필요한 데이터를 제공한 pagination 객체 생성하기
	Pagination pagination = new Pagination(currentPage, totalRows);
	// 5. 현재 페이지번호에 해당하는 게시글 목록 조회하기
	Map<String, Object> param = new HashMap<>();
	param.put("begin", pagination.getBegin());
	param.put("end", pagination.getEnd());
	
	List<Todo> todoList = todoDao.getTodos(param);
	
%>
			<table class="table">
				<colgroup>
					<col width="10%">
					<col width="20%">
					<col width="*">
					<col width="15%">
					<col width="15%">
				</colgroup>
				<thead>
					<tr>
						<th>구분</th>
						<th>처리예정일</th>
						<th>제목</th>
						<th>처리상태</th>
						<th>등록일</th>
					</tr>
				</thead>
				<tbody class="table-group-divider">
<%
	if (todoList.isEmpty()) {
%>	
					
					<tr>
						<td colspan="5" class="text-center">등록된 일정이 없습니다.</td>
					</tr>
<%
	} else {
		for (Todo todo : todoList) {
%>	
					
					<tr>
						<td><%=todo.getCategory().getName() %></td>
						<td><%=todo.getExpectedDate() %></td>
						<td><%=todo.getTitle() %></td>
						<td><%=todo.getStatus() %></td>
						<td><%=todo.getCreatedDate() %></td>
					</tr>				
<%
		}
	}
%>					
					
				</tbody>
			</table>
<%
	int beginPage = pagination.getBeginPage();
	int endPage = pagination.getEndPage();
	
	boolean isFrist = pagination.isFirst();
	boolean isLast = pagination.isLast();
%>
			<nav>
				<ul class="pagination justify-content-center">
<%
	if(isFrist) {
%>		
					<li class="page-item disabled">
						<a class="page-link">이전</a>
					</li>
<%
} else {
%>
					<li class="page-item ">
						<a class="page-link" href="list.jsp?page=<%=currentPage - 1%>">이전</a>
					</li>
<%
}
%>

					<li class="page-item">
						<a class="page-link" 
							href="list.jsp?page=4">
							다음
						</a>
					</li>
			
				</ul>
			</nav>
			
			<div class="text-end">
				<a class="btn btn-outline-primary" href="form.jsp">새 일정</a>
			</div>
		</div>
	</div>
</div>
</body>
</html>