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
    <%@ include file="/WEB-INF/views/header.jsp" %>
    
    	<div class="bs-example" data-example-id="simple-nav-justified"
				style="width: 800px; display: block; margin-left: auto; margin-right: auto; margin-top: 60px;" >
		<ul class="nav nav-tabs nav-justified">
			<li role="presentation" class="active"><a href="#">회원 관리</a></li>
			<li role="presentation"><a href="/admin/history.do">로그인 기록</a></li>
		</ul>
	</div>
	
	<br>
	
		<div class="bs-example" data-example-id="condensed-table"
		style="width: 60%; margin: 30px auto;">
		<h3 style="font-weight: bold; margin-bottom: 20px;">회원 리스트</h3>
		
		<table class="table table-condensed" style="text-align: center;">
			<thead>
				<tr>
					<th style="text-align: center;">이름</th>
					<th style="text-align: center;">ID</th>
					<th style="text-align: center;">EMAIL</th>
					<th style="text-align: center;">탈퇴</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${dto}" var="dto">
					<tr>
						<td><c:out value="${dto.name}" /></td>
						<td id="id"><a
							href="${pageContext.request.contextPath}/userWriteList.do?id=${dto.id}">
								<c:out value="${dto.id}" />
						</a></td>
						<td><c:out value="${dto.email1}" />
						@<c:out value="${dto.email2}" /></td>
						<td>
						<form name="dropUser" id="drop" method="post"
						action="${pageContext.request.contextPath}/dropUser.do">
						<input type="hidden" id="id" name="id" value="<c:out value="${dto.id}" />" />
						<button id="drop">탈퇴 </button>
						</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>

</html>