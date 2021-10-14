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
	
	<div class="bs-example" data-example-id="simple-nav-justified"
				style="width: 800px; display: block; margin-left: auto; margin-right: auto; margin-top: 60px; margin-bottom: 30px;" >
		<ul class="nav nav-tabs nav-justified">
			<li role="presentation" class="active"><a href="#">강의</a></li>
			<li role="presentation"><a href="/book.do">도서 추천</a></li>
			<li role="presentation"><a href="#">채용 공고</a></li>
		</ul>
	</div>
	
	<div class="row" style="width: 1200px; margin-left: 18%; margin-top: 50px;">
	
      <div class="col-xs-6 col-md-3" style="width=300px; height=230px;">
        <iframe width="300px" height="230px" src="https://www.youtube.com/embed/H6z1_tnyhp0" title="YouTube video player" frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </div>
      
      <div class="col-xs-6 col-md-3" style="width=300px; height=230px; margin: 0 20px;">
      <iframe width="300px" height="230px"
      src="https://www.youtube.com/embed/jdTsJzXmgU0?list=PLuHgQVnccGMCeAy-2-llhw3nWoQKUvQck"
      title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </div>
      
      <div class="col-xs-6 col-md-3" style="width=300px; height=230px; margin: 0 20px;">
      <iframe width="300px" height="230px" src="https://www.youtube.com/embed/XMb0w3KMw00?list=PLuHgQVnccGMCRv6f8H9K5Xwsdyg4sFSdi" title="YouTube video player"
      frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </div>
      
    </div>
    
    <div class="row" style="width: 1200px; margin-left: 18%; margin-top: 50px; margin-bottom: 100px;">
      <div class="col-xs-6 col-md-3" style="width=300px; height=230px;">
      <iframe width="300px" height="230px" src="https://www.youtube.com/embed/Z9dvM7qgN9s"
      title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </div>
      
      <div class="col-xs-6 col-md-3" style="width=300px; height=230px; margin: 0 20px;">
      <iframe width="300px" height="230px" src="https://www.youtube.com/embed/sqH0u8wN4Rs"
      title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </div>
      
      <div class="col-xs-6 col-md-3" style="width=300px; height=230px; margin: 0 20px;">
      <iframe width="300px" height="230px" src="https://www.youtube.com/embed/toLDNN4FQv0"
      title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </div>
      
    </div>
	
	
</body>
</html>