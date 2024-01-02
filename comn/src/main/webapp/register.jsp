<%@page import="dao.UserDao"%>
<%@page import="org.apache.commons.codec.digest.DigestUtils"%>
<%@page import="javax.print.attribute.UnmodifiableSetException"%>
<%@page import="vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	/*
		요청URL
			localhost/comn/register.jsp
		요청파라미터(요청메세지의 바디부)
			id=xxx&password=xxx&name=xxx&email=xxx&tel=xxx
	*/

	// 1. 요청파라미터 값을 조회한다.
	String id = request.getParameter("id");
	String rawPassword = request.getParameter("password");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String tel = request.getParameter("tel");
	
	// 2. COMM_USERS 테이블에 대한 CRUD 작업이 구현된 UserDao객체를 생성한다.
	UserDao userDao = new UserDao();
	
	// 3. 신규 아이디로 사용자정보를 조회한다.
	User savedUser = userDao.getUserById(id);
	if(savedUser != null) {
		response.sendRedirect("registerform.jsp?fail=id");
		return; // 빠른 종료
	}
	
	// 4. 신규 이메일로 사용자정보를 조회한다.
	savedUser = userDao.getUserByEmail(email);
	if(savedUser != null) {
		response.sendRedirect("registerform.jsp?fail=email");
		return; // 빠른종료
	}
	
	// 5. 비밀번호를 암호화한다.
	String sha1Password = DigestUtils.sha256Hex(rawPassword);
	
	// 6. User객체를 생성해서 조회된값을 저장한다.
	User user = new User();
	user.setId(id);
	user.setPassword(sha1Password);
	user.setName(name);
	user.setEmail(email);
	user.setTel(tel);
	
	
	//7. UserDao객체의 insertUser(User user) 메소드를 실행한다.
	userDao.insertUser(user);
	
	// 8. 브라우저에 재요청할 URL을 응답으로 보낸다.
	response.sendRedirect("register-completed.jsp");
%>