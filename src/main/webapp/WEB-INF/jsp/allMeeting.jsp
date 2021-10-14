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

	<ul class="nav navbar-nav navbar-right">
		<li class="dropdown" style="margin: 10px 260px;"><select id="order"
			name="order" class="form-control" onchange="if(this.value) location.href=(this.value);">
				<option value="" selected>정렬순</option>
				<option value="${pageContext.request.contextPath}/allMeeting.do?num=1&row=regdate">최신순</option>
				<option value="${pageContext.request.contextPath}/allMeeting.do?num=1&row=title">글자순</option>
				<option value="${pageContext.request.contextPath}/allMeeting.do?num=1&row=renum">조회순</option>
		</select></li>
	</ul>
	<br>

	<div class="bs-example" data-example-id="condensed-table"
		style="width: 60%; margin: 30px auto;">
		<h3 style="font-weight : bold; margin-bottom : 20px;">전체 모임</h3>
		<table class="table table-condensed" style="text-align: center;">
			<thead>
				<tr>
					<th style="text-align: center;">번호</th>
					<th style="text-align: center;">제목</th>
					<th style="text-align: center;">작성일자</th>
					<th style="text-align: center;">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${dto}" var="dto">
					<tr>
						<td><c:out value="${dto.seq}" /></td>
						<td><a
							href="${pageContext.request.contextPath}/meetingDetail.do?seq=${dto.seq}">
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

<!-- 페이징 시작 -->
	<div class="bs-example" data-example-id="disabled-active-pagination"
		style="width: 1200px; margin: 0 50%;">
		<nav>
			<ul class="pagination">
				<li><c:if test="${prev}">
						<span class="paging_prev"> <c:if test="${select == 1}">
                                [ <a
									href="${pageContext.request.contextPath}/allMeeting.do?num=1">이전</a>
                                ]
                            </c:if> <c:if test="${select > 1}">
                                [ <a
									href="${pageContext.request.contextPath}/allMeeting.do?num=${select - 1}">이전</a>
                                ]
                            </c:if>
						</span>
					</c:if></li>

				<li><c:forEach begin="${startPageNum}" end="${endPageNum}"
						var="num">
						<span class="paging_now"> <c:if test="${select != num}">
								<a
									href="${pageContext.request.contextPath}/allMeeting.do?num=${num}">${num}</a>
							</c:if> <c:if test="${select == num}">
								<b>${num}</b>
							</c:if>
						</span>
					</c:forEach></li>

				<li><c:if test="${next}">
						<span class="paging_next"> <c:if test="${select == 1}">
                                [ <a
									href="${pageContext.request.contextPath}/allMeeting.do?num=1">다음</a>
                                ]
                            </c:if> <c:if test="${select > 1}">
                                [ <a
									href="${pageContext.request.contextPath}/allMeeting.do?num=${select + 1}">다음</a>
                                ]
                            </c:if>
						</span>
					</c:if>
						<!-- 검색창 -->
		</li>
		</ul>
		</nav>

	</div>

</body>

</html>
