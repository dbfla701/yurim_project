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


	<div class="panel" style="margin: 10px 350px; width: 800px;">
		<div id="contAreaBox">
			<div class="panel">
				<div class="panel-body">
					<form role="form" action="/board/create_action" method="post">
						<div class="table-responsive" style="text-align: left;">
							<h3 style="font-weight: bold; margin-bottom: 10px;">공지사항 상세글</h3>
							<table id="datatable-scroller"
								class="table table-bordered tbl_Form">
								<caption></caption>
								<colgroup>
									<col width="250px" />
									<col />
								</colgroup>
								<tbody>
									<tr>
										<th class="active">번호</th>
										<td><c:out value="${dto.seq}" /></td>
									</tr>
									<tr>
										<th class="active">제목</th>
										<td><c:out value="${dto.title}" /></td>
									</tr>
									<tr>
										<th class="active">내용</th>
										<td><c:out value="${dto.content}" /></td>
									</tr>
									<tr>
										<th class="active">작성일자</th>
										<td><fmt:formatDate value="${dto.regdate}"
												pattern="yyyy-MM-dd" /></td>
									</tr>
									<tr>
										<th class="active">조회수</th>
										<td><c:out value="${dto.renum}" /></td>
									</tr>
									<tr>
										<th class="active">작성자</th>
										<td><a
											href="${pageContext.request.contextPath}/userWriteList.do?id=${dto.id}">
												<c:out value="${dto.id}" />
										</a></td>
									</tr>
								</tbody>
							</table>
						</div>
						
						<div style="text-align: right;">
							<input type="button"
								onclick="location.href='/noticeList.do?num=1&row=regdate'"
								value="목록" class="btn btn-default" />

							<%
								if (auth.equals("ROLE_ADMIN")) {
							%>

								<input type="button"
									onclick="location.href='/noticeDelete.do?seq=${dto.seq}'"
									value="삭제" class="btn btn-default" />
								<input type="button"
									onclick="location.href='/noticeModify.do?seq=${dto.seq}'"
									value="수정" class="btn btn-default" />

							<%
								}
							%>


						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>

</html>