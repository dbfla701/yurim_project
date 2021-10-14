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


	   <!-- Main jumbotron for a primary marketing message or call to action -->
      <div>
      <img alt="" src="/resources/images/img.png"
      		style="width: 70%; height: 400px; display: block; margin-left: auto; margin-right: auto;">
      </div>

    <div class="container" style="width: 1100px; display: block; margin: 20px 300px;">
      <!-- Example row of columns -->
      <div class="row" style="text-align: center;">
        <div class="col-md-4" style="width: 200px; margin-left: -90px;">
          <h5 style="font-weight : bold">커뮤니티</h5>
          <p>
          	<table class="table table-condensed" style="text-align: center; margin-bottom : 10px;">
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
					</tr>
				</c:forEach>
			</tbody>
		</table>
          <p style="text-align: right">
          <button type="button" class="btn btn-link" onclick="location.href='/community.do?num=1&row=regdate'">더보기</button>
          </p>
        </div>
        
        
        <div class="col-md-4" style="width: 300px; margin: 0 5px;">
          <h5 style="font-weight : bold">스터디 모임</h5>
          <p>
          <table class="table table-condensed" style="text-align: center; margin-bottom : 10px;">
			<tbody>
				<c:forEach items="${dto3}" var="dto">
					<tr>
						<td><c:out value="${dto.seq}" /></td>
						<td><a
							href="${pageContext.request.contextPath}/meetingDetail.do?seq=${dto.seq}">
								<c:out value="${dto.title}" />
						</a></td>
						<td><fmt:formatDate value="${dto.regdate}"
								pattern="yyyy-MM-dd" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<p style="text-align: right">
          <button type="button" class="btn btn-link" onclick="location.href='/allMeeting.do?num=1&row=regdate'">더보기</button>
          </p>
       </div>
       
       
        <div class="col-md-4" style="width: 600px; margin-right: 40px;">
          <h5 style="font-weight : bold">공지사항</h5>
          <p>
          <table class="table table-condensed" style="text-align: center; margin-bottom : 10px;">
			<tbody>
				<c:forEach items="${dto2}" var="dto">
					<tr>
						<td><c:out value="${dto.sort}" /></td>
						<td><a
							href="${pageContext.request.contextPath}/noticeDetail.do?title=${dto.title}">
								<c:out value="${dto.title}" />
						</a></td>
						<td><fmt:formatDate value="${dto.regdate}"
								pattern="yyyy-MM-dd" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<p style="text-align: right">
          <button type="button" class="btn btn-link" onclick="location.href='/noticeList.do?num=1&row=regdate'">더보기</button>
          </p>
        </div>
      </div>

      <hr>
      <footer>
        <p>&copy; Company 2021</p>
      </footer>
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
