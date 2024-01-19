<%@page import="dao.UserDao"%>
<%@page import="vo.User"%>
<%@page import="dto.LoginUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<title>커뮤니티:내정보</title>
</head>
<body>
<jsp:include page="../include/navbar.jsp">
	<jsp:param value="user" name="menu"/>
</jsp:include>

<div class="container">
	<div class="row">
		<div class="col-12"> 
			<h1>사용자 상세 정보</h1>
		</div>
<%
	/*
		로그인정보의 활용
			+ 로그인이 완료된 사용자의 HttpSession객체에는 속성이 저장되어 있다.
				+ 속성명:"LOGIN_USER"
				+ 속성값:LoginUser객체
	*/
	
	// HttpSession객체에서 순서조회하기
	LoginUser loginUser = (LoginUser) session.getAttribute("LOGIN_USER");

	// 사용자 아이디 조회하기
	String userId = loginUser.getId();
	
	// COMM_USERS 테이블에 대한 CRUD 기능이 구현된 UserDao 객체 생성하기
	UserDao userDao = new UserDao();
	// UserDao 객체의 getUserById(String id) 메소드를 실행해서 사용자상세정보 조회하기
	User savedUser = userDao.getUserById(userId);
%>		
		<table class="table table-bardered">
			<tbody>
				<tr>
					<th style="widht:15%">사용자번호</th>
					<th style="widht:35%"><%=savedUser.getNo() %></th>
					<th style="widht:15%">사용자 아이디</th>
					<th style="widht:35%"><%=savedUser.getId() %></th>
				</tr>
				<tr>
					<th style="widht:15%">사용자이름</th>
					<th style="widht:35%"><%=savedUser.getName() %></th>
					<th style="widht:15%">탈퇴여부</th>
					<th style="widht:35%"><%=savedUser.getDeleted() %></th>
				</tr>
				<tr>
					<th style="widht:15%">이메일</th>
					<th style="widht:35%"><%=savedUser.getEmail() %></th>
					<th style="widht:15%">전화번호</th>
					<th style="widht:35%"><%=savedUser.getTel() %></th>
				</tr>
				<tr>
					<th style="widht:15%">가입일자</th>
					<th style="widht:35%"><%=savedUser.getCreatedDate() %></th>
					<th style="widht:15%">최종 수정일자</th>
					<th style="widht:35%"><%=savedUser.getUpdatedDate() %></th>
				</tr>
			</tbody>
		</table>
	</div>
</div>
</body>
</html>