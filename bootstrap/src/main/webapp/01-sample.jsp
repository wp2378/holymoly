<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 
	반응형 meta 태그를 추가한다.
	+ 부트스트랩은 모바일 기기을 우선으로 개발하기 때분에 모바일 기기에 최적화하기 위해
	  모든 모바일 장치에 화면이 올바르게 랜더링되고, 터치 확대 조절을 보장하기 위해서
	  <head>태그에 <meta>태그로 viewport 메타태그를 추가한다.
	  viewport 메타태그로 해당 모바일 장치의 너비와 확대축소 스케일을 지정한다.
 -->
<meta name="viewport" content="width=device-width, initail-scale=1">
<!-- 
	부트스트랩 CSS 파일을 이 페이지에 포함시킨다.
	+ bootstrap.css와 bootstrap.min.css 중 하나를 포함시킨다.
	+ bootstrap.css와 bootsarap.min.css는 내용이 동일한 파일이다.
	+ bootstrap.min.css는 bootstrap.css에서 불필요한 빈줄, 공백을 제거한 파일이다.
	+ bootstrap.min.css가 bootstrap.css보다 파일의 사이즈가 더작다.
	 (네트워크로 더 빠르게 내려받을 수 있고, 통신요금도 절약된다.)
 -->
<link rel="stylesheet" href="resoures/bootstrap-5.3.1-dist/css/bootstrap.min.css">
<!--
	부트스트랩의 다양한 플러그인 실행을 지원하는 자바스크립트 코드를 포함시킨다.
-->
<script type="text/javascript" src="resoures/bootstrap-5.3.1-dist/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<!-- 
	컨텐이너(.container 혹은 .container-fluid)
		+ 부트스트랩에서 모든 컨텐츠를 포함하는 요소다.
		+ 부트스트랩으로 구성된 화면에는 항상 최외곽에 .container 혹은 .container-fluid가 클래스 속성이
		  적용된 div가 위치해야 한다.
		+ 부트스트랩에서 제공하는 그리드시스템(레이아웃 구성을 지원한다.)이 정상적으로
		  적용되기 위해서 필요하다.
 -->
	<div class="container">
	부트스트랩은 모바일 기기을 우선으로 개발하기 때분에 모바일 기기에 최적화하기 위해
	  모든 모바일 장치에 화면이 올바르게 랜더링되고, 터치 확대 조절을 보장하기 위해서
	  head태그에 meta태그로 viewport 메타태그를 추가한다.
	  viewport 메타태그로 해당 모바일 장치의 너비와 확대축소 스케일을 지정한다.
	</div>
	<div class="container-fluid">
	부트스트랩은 모바일 기기을 우선으로 개발하기 때분에 모바일 기기에 최적화하기 위해
	  모든 모바일 장치에 화면이 올바르게 랜더링되고, 터치 확대 조절을 보장하기 위해서
	  head태그에 meta태그로 viewport 메타태그를 추가한다.
	  viewport 메타태그로 해당 모바일 장치의 너비와 확대축소 스케일을 지정한다.
	</div>
</body>
</html>