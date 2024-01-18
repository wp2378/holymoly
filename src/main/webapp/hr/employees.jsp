<%@page import="com.google.gson.GsonBuilder"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="vo.Employee"%>
<%@page import="java.util.List"%>
<%@page import="dao.Hrdao"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		요청 URL
			localhost/comn/hr/employees.jsp?deptId=10
		요청파라미터
			deptId=xxx
			
		응답데이터 - json text
		 [{"id":100, "firstName":"홍", "lastName":"길동", "salary":4000.0},
		  {"id":100, "firstName":"홍", "lastName":"길동", "salary":4000.0},
		  {"id":100, "firstName":"홍", "lastName":"길동", "salary":4000.0},
		  {"id":100, "firstName":"홍", "lastName":"길동", "salary":4000.0},
		  {"id":100, "firstName":"홍", "lastName":"길동", "salary":4000.0},
		 ]
	*/
	
	int deptId = Integer.parseInt(request.getParameter("deptId"));

	Hrdao hrDao = new Hrdao();
	List<Employee> empList = hrDao.getEmployeesByDepartmentid(deptId);
	
	Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
	String jsonText = gson.toJson(empList);
	
	out.write(jsonText);
%>