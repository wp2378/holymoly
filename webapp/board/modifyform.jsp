<%@page import="vo.Board"%>
<%@page import="dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<title>커뮤니티::게시글수정폼</title>
</head>
<body>
<jsp:include page="../include/navbar.jsp">
	<jsp:param value="board" name="menu"/>
</jsp:include>
<div class="container">
	<div class="row">
		<div class="col-12">
			<h1>게시글 수정화면</h1>
			
<%
	/*
		요청 URL
			localhost/comn/board/modifyform.jsp?no=1000&page=3
		요청파라미터
			no=xxx&page=xx
	*/
	
	// 1. 요청파라미터를 조회한다.
	int no = Integer.valueOf(request.getParameter("no"));
	int currentPage = Integer.valueOf(request.getParameter("page"));
	
	// 2. COMM_BOARDS에 대한 CRUD기능을 제공한 BoardDao객체생성
	BoardDao boardDao = new BoardDao();
	
	// 3. BoardDao객체의 getBoardByNo(int no)을 실행해서 게시글 상세정보 조회
	Board board = boardDao.getBoardByNo(no);
	
%>
			<form class="border bg-light p-3"
				method = "post"
				action = "modify.jsp">
				<input type="hidden" name="no" value="<%=no %>">
				<input type="hidden" name="page" value="<%=currentPage %>">
				<div class="form-group mb-3">
					<label class="form-label">제목</label>
					<!-- value = 입력필드값을 설정 -->
					<input type="text" class="form-control" name="title" value="<%=board.getTitle() %>"> 
				</div>
				<div class="form-group mb-3">
					<label class="form-label">작성자</label>
					<!-- readonly=수정은 불가능하지만 (name이 있으면)값이 제출됨 disabled=수정도 불가능 값도 제출되지 않음  -->
					<input type="text" class="form-control" value="<%=board.getUser().getName() %>" readonly>
				</div>
				<div class="form-group mb-3">
					<label class="form-label">내용</label>
					<textarea rows="10" class="form-control" name="content"><%=board.getContent() %></textarea>
				</div>
				<div class="text-end">
					<button type="submit" class="btn btn-primary">수정</button>
				</div>
			</form>
								
					
		</div>
	</div>
</div>
</body>
</html>