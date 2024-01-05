<%@page import="vo.TodoCategory"%>
<%@page import="dao.TodoDao"%>
<%@page import="dto.LoginUser"%>
<%@page import="vo.User"%>
<%@page import="vo.Todo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*		0. 로그인 여부를 체크한다.
				세션에서 로그인된 사용자 정보를 조회해서 사용자정보가 존재하지 않으면
				로그인 폼에서 재요청하는 응답을 보내고, return문을 실행한다.
	*/
	LoginUser loginUser = (LoginUser) session.getAttribute("LOGIN_USER");
	if(loginUser == null) {
		response.sendRedirect("../loginform.jsp?error=deny");
	}
			
	/*
			1. 폼에서 제출하는 요청파라미터 파악하기
				categoryNo=101
				&title=제목
				&expectedDate=2024-01-24
				&content=내용
	*/			
			
	// 2. 요청파라미터값 조회하기
			int categoryNo = Integer.valueOf(request.getParameter("categoryNo"));
			String title = request.getParameter("title");
			String expectedDate = request.getParameter("expectedDate");
			String content = request.getParameter("content");
			
			TodoCategory todoCategory = new TodoCategory();
			todoCategory.setNo(categoryNo);
			
	// 3. VO객체(Todo객체)를 생성하고, 요청파라미터값을 저장한다.
			Todo todo = new Todo();
	
			todo.setCategory(todoCategory);
			todo.setTitle(title);
			todo.setExpectedDate(expectedDate);
			todo.setContext(content);
			
			
	// 4. 로그인된 사용자정보에서 사용자번호를 조회하고 VO객체에 저장한다.
			User user = new User();
			user.setNo(loginUser.getNo());
			
			todo.setUser(user);
			
	// 5. DAO객체를 생성하고, 새 일정을 등록시키는 메소드를 실행한다.
			TodoDao todoDao = new TodoDao();
			todoDao.insertTodo(todo);
	
	// 6. 일정목록을 재요청하는 URL을 응답으로 보낸다.
			response.sendRedirect("list.jsp");
%>











