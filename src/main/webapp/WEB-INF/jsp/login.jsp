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
	
	 <div class="container">

      <form class="form-signin"
      name="login" role="form" method="post" action="${pageContext.request.contextPath}/logining.do">
        <h2 class="form-signin-heading" style="text-align: center;">Please sign in</h2>
        <br>
        <label for="id" class="sr-only">id</label>
        <input type="text" id="id" name="id" class="form-control" placeholder="id" required autofocus
        style="width: 30%; margin: 0 auto;">
        <br>
        <label for="pw" class="sr-only">Password</label>
        <input type="password" id="pw" name="pw" class="form-control" placeholder="Password" required
        style="width: 30%; margin: 0 auto;">
        
        <div class="checkbox" style="text-align: center;">
          <label>
          <a href="/joinUser.do">회원가입</a>
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit"
        style="width: 30%; margin: 0 auto;">Sign in</button>
      </form>

    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>


</body>
</html>