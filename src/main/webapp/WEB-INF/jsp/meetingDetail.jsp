<%@page import="com.min.Dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
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

	<input type="hidden" name="seq" id="seq" value="${dto.seq}" />

	<div class="panel" style="margin:10px 350px; width: 800px;">
		<div id="contAreaBox">
			<div class="panel">
				<div class="panel-body">
					<form role="form" action="/board/create_action" method="post">
						<div class="table-responsive" style="text-align: left;">
							<h3 style="font-weight: bold; margin-bottom: 10px;">스터디모임 상세글</h3>
							<table id="datatable-scroller"
								class="table table-bordered tbl_Form">
								<caption></caption>
								<colgroup>
									<col width="250px" />
									<col />
								</colgroup>
								<tbody>
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
										<td><fmt:formatDate value="${dto.regdate}" pattern="yyyy-MM-dd" /></td>
									</tr>
									<tr>
										<th class="active">조회수</th>
										<td><c:out value="${dto.renum}" /></td>
									</tr>
									<tr>
										<th class="active">작성자</th>
										<td>
						<a href="${pageContext.request.contextPath}/userWriteList.do?id=${dto.id}">
										<c:out value="${dto.id}" />
										<c:set var="idid" value="${dto.id}" ></c:set>
										</a></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div style="margin-left: 1px; text-align: right;">
						
						<input type="button" onclick="location.href='/noticeList.do?num=1'"
				value="목록" class="btn btn-default" />
						<input type="button" id="participate"
				value="모임 참여하기" class="btn btn-default" />
				
				<%
						String msrtDtm = (String)pageContext.getAttribute("idid");
								if (Name.equals(msrtDtm)) {
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

<script type="text/javascript">

$("#participate").click(function(){
	
	<%
	if (Name == "") {
		
	%>
	 alert('로그인 후 이용해주세요');
	 
	<%
		}
	%>
	
	<%
	if (auth.equals("ROLE_USER")) {
		
	%>
	if(confirm("모임에 참여하시겠습니까?")){
	 alert('오픈카톡에 참여해주세요 https://open.kakao.com/o/guOoHBDd');
	}else{
	 
	 }
	<%
		}
	%>
	});

</script>




</html>