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

	<div style="margin: 50px 400px; text-align: left; width: 1100px;">
	<h3 style="font-weight: bold; margin-bottom: 20px;">회원가입</h3>
	<br>
		<form name="joinUser" role="form" method="post"
			action="${pageContext.request.contextPath}/join.do"
			class="form-horizontal">

			<div class="form-group">
				<label for="name" class="col-sm-2 control-label" style="width: 90px; text-align: left">이름</label>
				<div class="col-sm-10" style="width: 200px;">
					<input type="text" class="form-control" id="name" name="name">
				</div>
			</div>

			<div class="form-group">
				<label for="id" class="col-sm-2 control-label" style="width: 90px; text-align: left">아이디</label>
				<div class="col-sm-10" style="width: 200px;">
					<input type="text" class="form-control" id="id" name="id">
				</div>
			</div>

			<div class="form-group">
				<label for="id" class="col-sm-2 control-label" style="width: 90px; text-align: left">비밀번호</label>
				<div class="col-sm-10" style="width: 200px;">
					<input type="password" class="form-control" id="pw" name="pw">
				</div>
			</div>
			
			<div class="row" style="width: 100%; margin-bottom: 13px;">
				<label for="email" class="col-sm-2 control-label" style="width: 90px; text-align: left">이메일</label>
				
				<div class="col-xs-2" style="width: 200px;">
					<input type="text" class="form-control" id="email1" name="email1"></div>
					<div class="col-xs-2" style="width: 5px;"><h6>@</h6></div>
					<div class="col-xs-2" style="width: 200px;">
					<input type="text" id="email2" name="email2" class="form-control"></div>
					
					<div class="col-xs-2" style="width: 150px;">
					<select name="email3" onChange="selectEmail(this)"
						class="form-control">
						<option value="" selected>선택</option>
						<option value="naver.com">naver.com</option>
						<option value="hanmail.net">hanmail.net</option>
						<option value="gmail.com">gmail.com</option>
					</select></div>
				
				<input type="button" value="인증하기" onclick="emailSend()"
					class="btn btn-default" />
			</div>
			
			 <div id="google_recaptha">
                    <script src='https://www.google.com/recaptcha/api.js'></script>
                    <div class="g-recaptcha" data-sitekey="6LdT6sMaAAAAAEELIti-7B160MiOo_qDEEDOOwxy"
                    	style="margin: 30px 90px;"></div>
                </div>

<!-- 			<div class="form-group">
				<label for="checkNum" class="col-sm-2 control-label" style="width: 90px; text-align: left">
				인증번호</label>
				<div class="col-sm-10" style="width: 200px;">
					<input type="text" id="checkNum" name="checkNum"
						class="form-control">
				</div>
				<input type="button" value="인증하기" onclick="emailCheck()"
					class="btn btn-default" />
			</div> -->

			<div class="form-group" style="margin-top: 40px;">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit"  class="btn btn-default"
						value="회원가입" />
				</div>
			</div>
		</form>
	</div>
</body>

<script type="text/javascript">
	function selectEmail(ele) {
		var $ele = $(ele);
		var $email2 = $('input[name=email2]'); // '1'인 경우 직접입력
		$email2.attr('readonly', true);
		$email2.val($ele.val());
	}

	function emailSend() {

		alert("인증코드가 전송되었습니다");

		// email합치기
		var email1 = $('#email1').val();
		var email2 = $('#email2').val();
		var email = email1 + "@" + email2;

		$.ajax({
			type : "POST",
			url : "/emailCheck.do",
			data : {
				"email" : email,
				"email2" : email2
			},
			dataType : "text",
			error : function(error) {
				console.log("error");
			},
			success : function(data) {
				console.log("success");
			}
		});

	}

	function emailCheck() {

		// email합치기
		var email1 = $('#email1').val();
		var email2 = $('#email2').val();
		var email = email1 + "@" + email2;

		var inputCode = document.getElementById('checkNum').value;
		alert(inputCode);

		$.ajax({
			type : "POST",
			url : "/emailCheckAfter.do",
			data : {
				"email" : email,
				"inputCode" : inputCode,
			},
			dataType : "text",
			error : function(error) {
				console.log("error");
			},
			success : function(data) {
				console.log("success");
				alert(inputCode + "success");
			}

		});
	}
</script>

</html>