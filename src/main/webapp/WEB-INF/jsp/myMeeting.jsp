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
				style="width: 800px; display: block; margin-left: auto; margin-right: auto; margin-top: 60px;" >
		<ul class="nav nav-tabs nav-justified">
			<li role="presentation" class="active"><a href="#">만든 모임</a></li>
			<li role="presentation"><a href="#">가입한 모임</a></li>
			<li role="presentation"><a href="#">Messages</a></li>
		</ul>
	</div>
</body>
</html>