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

<style type="text/css">
.selectpicker {
	margin: 0 5px;
	float: right;
	style: btn-info;
	size: 4;
}
</style>
</head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<body>
	<%@ include file="/WEB-INF/views/header.jsp"%>

	<ul class="nav navbar-nav navbar-right">
	<li class="dropdown" style="margin: 10px 260px;">
		<select name="order" class="form-control">
				<option value="" selected>정렬순</option>
				<option value="#">최신순</option>
				<option value="#">글자순</option>
				<option value="#">조회순</option>
		</select>
		</li>
		</ul>
	<br>
	<div class="bs-example" data-example-id="condensed-table"
		style="width: 60%; margin: 30px auto;">
		<h3 style="font-weight: bold; margin-bottom: 20px;">공지사항</h3>
		<table class="table table-condensed" style="text-align: center;">
			<thead>
				<tr>
					<th style="text-align: center;">구분</th>
					<th style="text-align: center;">제목</th>
					<th style="text-align: center;">작성일자</th>
					<th style="text-align: center;">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${dto}" var="dto">
					<tr>
						<td><c:out value="${dto.sort}" /></td>
						<td><a
							href="${pageContext.request.contextPath}/noticeDetail.do?title=${dto.title}">
								<c:out value="${dto.title}" />
						</a></td>
						<td><fmt:formatDate value="${dto.regdate}"
								pattern="yyyy-MM-dd" /></td>
						<td><c:out value="${dto.renum}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<!-- 글쓰기 버튼 -->
	<div style="width: 1200px; text-align: right">
		<%
			if (auth.equals("ROLE_ADMIN")) {
		%>
		<button type="button" class="btn btn-default" onclick="location.href='admin/noticeWrite.do'">
		글쓰기
		</button>

		<%
			}
		%>

		<%
			if (Name == "") {
		%>

		<%
			}
		%>

		<%
			if (auth.equals("ROLE_USER")) {
		%>

		<%
			}
		%>
		</div>
		
		<!-- 검색창 -->
		<div class="bs-example" data-example-id="disabled-active-pagination"
		style="width: 1200px; margin: 0 600px;">
		<div style="margin: 0 400px;">
		<form class="navbar-form navbar-left" role="search" id="search"
				action="/searchList.do">
			<div class="form-group">
				<input type="text" id="title" name="title" class="form-control"
					placeholder="제목을 검색하세요">
			</div>
			<input type="submit" class="btn btn-default" value="검색" />
		</form>
	</div>
	</div>

</body>

</html>
