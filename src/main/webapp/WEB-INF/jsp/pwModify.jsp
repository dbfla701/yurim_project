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

	<div style="margin: 50px 400px; text-align: left; width: 1100px;">
	<h3 style="font-weight: bold; margin-bottom: 20px;">비밀번호 변경</h3>
	<br>
		<form name="form" role="form" method="post" id="form"
			action="${pageContext.request.contextPath}/pwModifyPost.do"
			class="form-horizontal">

			<div class="form-group">
				<label for="id" class="col-sm-2 control-label" style="width: 120px; text-align: left">새 비밀번호</label>
				<div class="col-sm-10" style="width: 200px;">
					<input type="password" class="form-control" id="newpw" name="newpw">
				</div>
			
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-default" value="비번 변경" />
				</div>
			</div>
		</form>
		<form name="dropUser" id="drop" method="post"
						action="${pageContext.request.contextPath}/dropUser.do">
						<input type="hidden" id="id" name="id" value="<c:out value="${dto.id}" />" />
						<button id="drop">탈퇴하기</button>
		</form>
	</div>
</body>


</html>