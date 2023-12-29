<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<title>bootstrap</title>
</head>
<body>
<!-- 
	.card
		+ 카드는 유연하고 확장이 가능한 컨테이너다.
		+ 카드는 Header, Body, Footer를 포함한다.
		+ 카드는 Body는 다양한 컨텐츠를 포함할 수 있다.
 -->
<div class="container"></div>
	<div class="row">
		<div class="col-3">
			<div class="card">
				<img src="resoures/imege/sample.jpg" class="card-img-top" alt="상품표지">
				<div class="card-body">
					<h5 class="card-title">책입니당~</h5>
					<p class="card-text">일본 소설입니당</p>
					<div>
						<span class="badge text-bg-primary">무료배송</span>
						<span class="badge text-bg-primary">포인트적립</span>
					</div>
					<a href="" class="btn btn-primary">상세정보</a>
				</div>
			</div>
		</div>
		
		<div class="col-3">
			<div class="card">
				<div class="card-body">
					부트스트랩은 모바일 기기을 우선으로 개발하기 때분에 모바일 기기에 최적화하기 위해
	 				 모든 모바일 장치에 화면이 올바르게 랜더링되고, 터치 확대 조절을 보장하기 위해서
					  head태그에 meta태그로 viewport 메타태그를 추가한다.
					  viewport 메타태그로 해당 모바일 장치의 너비와 확대축소 스케일을 지정한다.
				</div>
			</div>
		</div>
		
		<div class="col-6">
		<div class="card">
			<div class="card-header">
					교육내용
			</div>
			<div class="card-body">
				<h5 class="card-title">2023년 4분기 교육 내용</h5>
				<p class="card-text">
					부트스트랩은 모바일 기기을 우선으로 개발하기 때분에 모바일 기기에 최적화하기 위해
	  모든 모바일 장치에 화면이 올바르게 랜더링되고, 터치 확대 조절을 보장하기 위해서
	  head태그에 meta태그로 viewport 메타태그를 추가한다.
	  viewport 메타태그로 해당 모바일 장치의 너비와 확대축소 스케일을 지정한다.
				</p>
			</div>
			<div class="card-footer text-end">
				<a href="" class="btn btn-outline-primary btn-sm">추가정보</a>
			</div>
		</div>
	</div>
	<div class="row mt-3">
		<div class="col-6">
			<div class="card">
				<div class="card-header">직원현황</div>
				<table class="table">
					<thead>
						<tr>
							<th>번호</th>
							<th>이름</th>
							<th>연락처</th>
							<th>이메일</th>
							<th>부서명</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>100</td>
							<td>홍길동</td>
							<td>010-1111-1111</td>
							<td>hong@gmail.com</td>
							<td>신기술 연구소</td>
						</tr>
						<tr>
							<td>100</td>
							<td>홍길동</td>
							<td>010-1111-1111</td>
							<td>hong@gmail.com</td>
							<td>신기술 연구소</td>
						</tr>
						<tr>
							<td>100</td>
							<td>홍길동</td>
							<td>010-1111-1111</td>
							<td>hong@gmail.com</td>
							<td>신기술 연구소</td>
						</tr>
						<tr>
							<td>100</td>
							<td>홍길동</td>
							<td>010-1111-1111</td>
							<td>hong@gmail.com</td>
							<td>신기술 연구소</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
</body>
</html>