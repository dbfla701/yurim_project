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
	
	<div class="bs-example" data-example-id="condensed-table"
		style="width: 60%; margin: 50px auto;">
		<h3 style="font-weight : bold">${id} 님의 작성글</h3>
		<table class="table table-condensed" style="text-align: center;">
			
			<thead>
				<tr>
					<th style="text-align: center;">번호</th>
					<th style="text-align: center;">제목</th>
					<th style="text-align: center;">작성일자</th>
					<th style="text-align: center;">작성자</th>
					<th style="text-align: center;">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${dto}" var="dto">
					<tr>
						<td><c:out value="${dto.seq}" /></td>
						<td><a
							href="${pageContext.request.contextPath}/commuDetail.do?title=${dto.title}">
								<c:out value="${dto.title}" />
						</a></td>
						<td><fmt:formatDate value="${dto.regdate}"
								pattern="yyyy-MM-dd" /></td>
						<td><c:out value="${dto.id}" /></td>
						<td><c:out value="${dto.renum}" /></td>
					</tr>
				</c:forEach>
			</tbody>
			
		</table>
	</div>

</body>

</html>
