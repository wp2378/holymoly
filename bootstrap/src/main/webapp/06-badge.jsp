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
<div class="container">
	<div class="row">
		<div class="col-6">
			<h3>버튼의 뱃지</h3>
			<div>
				<button class="btn btn-primary">
					좋아요 <span class="badge text-bg-secondary">4</span>
				</button>
				<button class="btn btn-primary position-relative">
					메일함
					<span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
						300
					</span>
				</button>
			</div>
		</div>
		<div class="col-6">
			<h3>뱃지</h3>
			<table class="table">
				<thead>
						<tr>
							<td>번호</td>
							<td>제목</td>
							<td>작성자</td>
							<td>상태</td>
						</tr>
				</thead>
				<tbody>
						<tr>
							<td>1</td>
							<td>4분기 매출현황 요약본</td>
							<td>홍길동</td>
							<td><span class="badge text-bg-primary">결재대기중</span></td>
						</tr>
						<tr>
							<td>1</td>
							<td>4분기 매출현황 요약본</td>
							<td>홍길동</td>
							<td><span class="badge text-bg-success">결재완료</span></td>
						</tr>
						<tr>
							<td>1</td>
							<td>4분기 매출현황 요약본</td>
							<td>홍길동</td>
							<td><span class="badge text-bg-danger">반료</span></td>
						</tr>
						<tr>
							<td>1</td>
							<td>4분기 매출현황 요약본</td>
							<td>홍길동</td>
							<td><span class="badge text-bg-secondary">취소</span></td>
						</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>
</html>