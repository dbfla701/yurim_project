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
				style="width: 800px; display: block; margin-left: auto; margin-right: auto; margin-top: 30px; color: black;" >
		<ul class="nav nav-tabs nav-justified">
			<li role="presentation"><a href="/newsList.do">강의</a></li>
			<li role="presentation" class="active"><a href="/book.do">도서 추천</a></li>
			<li role="presentation"><a href="#">채용 공고</a></li>
		</ul>
	</div>
	
	    <div class="row" style="width: 800px; display: block; margin-left: auto; margin-right: auto; margin-top: 50px;
	    			text-align: center;">
	    <h3 style="font-weight: bold; margin-bottom: 30px; margin-top: -10px;">IT BEST도서</h3>
      <div class="col-xs-6 col-md-3">
        <a href="http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&linkClass=331531&barcode=9788994492032"
        target='_blank' class="thumbnail">
          <img src="/resources/images/java1.jpg" alt=""
          	style="width: 170px; height: 230px; margin-bottom: 5px;">
          	Java의 정석
        </a>
      </div>
      <div class="col-xs-6 col-md-3">
        <a href="http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&linkClass=331531&barcode=9788997924899"
        			target='_blank' class="thumbnail">
        <img src="/resources/images/java2.jpg" alt=""
          	style="width: 170px; height: 230px; margin-bottom: 5px;">
          	백견불여일타 스프링 부트 프로젝트 with JPA
        </a>
      </div>
      <div class="col-xs-6 col-md-3">
        <a href="http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&linkClass=331531&barcode=9788960777330"
        target='_blank' class="thumbnail">
        <img src="/resources/images/java3.jpg" alt=""
          	style="width: 170px; height: 230px; margin-bottom: 5px;">
          	자바 ORM 표준 JPA 프로그래밍
        </a>
      </div>
      <div class="col-xs-6 col-md-3">
        <a href="http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&linkClass=3314&barcode=9791161755656"
        target='_blank' class="thumbnail">
        <img src="/resources/images/java4.jpg" alt=""
          	style="width: 170px; height: 230px; margin-bottom: 5px;">
          	React.js, 스프링 부트, AWS로 배우는 웹 개발
        </a>
      </div>
    </div>
    
    
	    <div class="row" style="width: 800px; display: block; margin-left: auto; margin-right: auto; margin-top: 50px; margin-bottom: 100px;
	    			text-align: center;">
      <div class="col-xs-6 col-md-3">
        <a href="http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&linkClass=3314&barcode=9788966263134" target='_blank' class="thumbnail"">
          <img src="/resources/images/java5.jpg" alt=""
          	style="width: 170px; height: 230px; margin-bottom: 5px;">
          	이펙티브 타입스크립트
        </a>
      </div>
      <div class="col-xs-6 col-md-3">
        <a href="http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&linkClass=3314&barcode=9791165212308" target='_blank' class="thumbnail">
        <img src="/resources/images/java6.jpg" alt=""
          	style="width: 170px; height: 230px; margin-bottom: 5px;">
          	Node.js 교과서
        </a>
      </div>
      <div class="col-xs-6 col-md-3">
        <a href="http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&linkClass=3315&barcode=9791162241882" target='_blank' class="thumbnail">
        <img src="/resources/images/java7.jpg" alt=""
          	style="width: 170px; height: 230px; margin-bottom: 5px;">
          	혼자 공부하는 파이썬
        </a>
      </div>
      <div class="col-xs-6 col-md-3">
        <a href="http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&linkClass=331531&barcode=9791161755618" target='_blank' class="thumbnail">
        <img src="/resources/images/java8.jpg" alt=""
          	style="width: 170px; height: 230px; margin-bottom: 5px;">
          	소프트웨어의 품격
        </a>
      </div>
    </div>
	
	
	
</body>
</html>