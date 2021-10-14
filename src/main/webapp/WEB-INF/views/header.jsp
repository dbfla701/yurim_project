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

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Carousel Template for Bootstrap</title>

<!-- Bootstrap core CSS -->
<link href="../../dist/css/bootstrap.min.css" rel="stylesheet">
<script src="../../assets/js/ie-emulation-modes-warning.js"></script>
<link href="carousel.css" rel="stylesheet">

</head>
<body>
	<%
		// 세션값 가져오기
		UserDto id = (UserDto) session.getAttribute("user"); // Object 타입이므로 다운캐스팅
		String Name = id == null ? "" : id.getId();
		String auth = id == null ? "" : id.getAuth();
	%>

	<div class="navbar-wrapper">
		<div class="container">

			<nav class="navbar navbar-inverse navbar-static-top">
				<div class="container">
				
				
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#navbar"
							aria-expanded="false" aria-controls="navbar">
							<span class="sr-only">Toggle navigation</span>
							<span class="glyphicon glyphicon-search" aria-hidden="true">
								</span>
						</button>
						<a class="navbar-brand" href="${pageContext.request.contextPath}/main.do">▩</a>
					</div>
					
					
					<div id="navbar" class="navbar-collapse collapse">
					
						<ul class="nav navbar-nav">
							<li>
							<a href="${pageContext.request.contextPath}/newsList.do">IT NEWS</a></li>
							<li><a href="${pageContext.request.contextPath}/community.do?num=1&row=regdate">커뮤니티</a></li>

							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button">스터디모임
									<span class="caret"></span>
							</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="${pageContext.request.contextPath}/allMeeting.do?num=1&row=regdate">전체 모임</a></li>
									<li><a href="${pageContext.request.contextPath}/meetingCreate.do">모임 만들기</a></li>
								</ul>
								</li>
								
							<li><a href="${pageContext.request.contextPath}/noticeList.do?num=1&row=regdate">공지사항</a></li>
								
							</ul>
							
							<ul class="nav navbar-nav">
							<%
								if (auth.equals("ROLE_ADMIN")) { // 관리자 로그인 일 때
							%>
							<li class="contact"><a
								href="${pageContext.request.contextPath}/admin/loginAfter.do"
								class="dropdown-toggle" data-toggle="dropdown" role="button"
								aria-expanded="false">관리자페이지<span class="caret"></span>
							</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="${pageContext.request.contextPath}/admin/loginAfter.do">관리자페이지</a></li>
									<li><a href="#">비번 변경</a></li>
									<li><a href="${pageContext.request.contextPath}/logout.do">로그아웃</a></li>
								</ul></li>

							<%
								}
							%>
							
							<%
								if (auth.equals("ROLE_USER")) { // 유저로그인 일 때
							%>
							<li class="contact"><a
								href="#"
								class="dropdown-toggle" data-toggle="dropdown" role="button"
								aria-expanded="false"><%=Name%>님 로그인<span class="caret"></span>
							</a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="${pageContext.request.contextPath}/myWriteList.do">내가 쓴 글</a></li>
									<li><a href="${pageContext.request.contextPath}/pwModify.do">비번 변경</a></li>
									<li><a href="${pageContext.request.contextPath}/logout.do">로그아웃</a></li>
								</ul></li>
						
							<%
								}
							%>

							<%
								if (Name == "") {
							%>

							<li class="contact">
							<a href="${pageContext.request.contextPath}/login.do"
							style="color: #9d9d9d; text-shadow: 0 -1px 0 rgb(0 0 0 / 25%);">로그인</a></li>

							<%
								}
							%>
							</ul>
							</div>
							
							
					</div>
					</nav>
				</div>
		</div>


	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div class="container">
					<div class="carousel-caption">
						<h1>Example headline.</h1>
						<p>
							Note: If you're viewing this page via a
							<code>file://</code>
							URL, the "next" and "previous" Glyphicon buttons on the left and
							right might not load/display properly due to web browser security
							rules.
						</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Sign
								up today</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="second-slide"
					src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw=="
					alt="Second slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Another example headline.</h1>
						<p>Cras justo odio, dapibus ac facilisis in, egestas eget
							quam. Donec id elit non mi porta gravida at eget metus. Nullam id
							dolor id nibh ultricies vehicula ut id elit.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Learn
								more</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="third-slide"
					src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw=="
					alt="Third slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>One more for good measure.</h1>
						<p>Cras justo odio, dapibus ac facilisis in, egestas eget
							quam. Donec id elit non mi porta gravida at eget metus. Nullam id
							dolor id nibh ultricies vehicula ut id elit.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Browse
								gallery</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /.carousel -->