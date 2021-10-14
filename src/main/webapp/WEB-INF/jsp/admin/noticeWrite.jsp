<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>

<body>
	<%@ include file="/WEB-INF/views/header.jsp"%>

	<div style="width: 500px; margin: 20px 300px;">
	<h3 style="font-weight: bold; margin-bottom: 10px;">공지사항 글쓰기</h3>
	<br>
	<form name="noticeWrite" role="form" method="post"
		action="${pageContext.request.contextPath}/writing.do">

		<input type="hidden" name="id" id="id" value="<%=Name%>" />
				<p class="cont_txt">
					<label for="sort">구분</label>
				</p>
				<select id="sort" name="sort" class="form-control">
					<option value="공지">공지</option>
					<option value="알림">알림</option>
					<option value="공고">공고</option>
				</select>
		<br>
		<p class="cont_txt">
			<label for="title">제목</label>
		</p>
		<input type="text" id="title" name="title" placeholder="제목을 입력해주세요."
			class="form-control" />
		<br>
		<p class="cont_txt">
			<label for="content">내용</label>
		</p>
		<textarea id="content" name="content" class="form-control" rows="10"
			placeholder="내용을 입력해주세요."></textarea>
			
		<p class="btn list_btn text-center" style="margin: 20px 20%;">
			<input type="submit" value="등록" class="btn btn-default" />
		<input type="button" onclick="location.href='/main.do'" value="취소" class="btn btn-default" />
		</p>
	</form>
	</div>
</body>

</html>