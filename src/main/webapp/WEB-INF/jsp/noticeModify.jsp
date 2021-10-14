<%@page import="com.min.Dto.UserDto"%>
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
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<body>
	<%@ include file="/WEB-INF/views/header.jsp"%>

	<div style="width: 500px; margin: 20px 300px;">
	<h3 style="font-weight: bold; margin-bottom: 30px;">공지사항 글 수정</h3>
	<form name="noticeModify" role="form" method="post"
		action="${pageContext.request.contextPath}/modify.do">
		<input type="hidden" value="${dto.seq}" id="seq" name="seq">
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
		<input type="text" id="title" name="title" value="${dto.title}"
			class="form-control" />
		<br>
		<p class="cont_txt">
			<label for="content">내용</label>
		</p>
		<input id="content" name="content" class="form-control"
			value="${dto.content}" />

		<div class="text-center m-up-down" style="margin-top: 20px;">
			<input type="submit" value="저장" class="btn btn-default" />
			<input type="button"
				onclick="location.href='/main.do'" value="취소" class="btn btn-default" />
		</div>
	</form>
	</div>
</body>

</html>