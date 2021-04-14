<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
  
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  
  <title>RIMIcafe</title>
  
  <!-- 부트스트랩 -->
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- 스타일시트 참조 -->
  <link href="resources/css/modern-business.css" rel="stylesheet">

</head>

<body>

<!-- 네비게이션 넣기 -->
<%@ include file="nav.jsp" %>

<!-- 로그인 -->

  <div class="container " align="center">

    <div class="row">
      <div class="col-lg-12 mt-5">
		<div class="container mt-4">
			<h2>로그인</h2>
		</div>
	</div>
	</div>

	
	
	<div class="container" align="center">
	
	<div class="row">
	<div class="col-lg-2"></div>
	<div class="col-lg-5 my-4" align="center">
	<form class="form-signin" action="processLoginMember.jsp" method="post">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="userID" name="userID" maxlength="20">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="userPassword" name="userPW" maxlength="20">
				</div>
				</form>
	
	</div>
	<div class="col-lg-3 my-4" align="center">
				<button style="color: white; background:black; padding:30px 5px" class="btn btn-lg btn-block" type="submit">
					로그인</button>		
			</div>
	<div class="col-lg-2"></div>
		</div>
	
	<div class="col-lg-7 mb-5" align="center">
	<p>RIMIcafe, 회원가입 후 혜택 즐기기</p>
	<button class="btn btn-lg btn-primary btn-block" onclick="location.href='signup.jsp'" style="background-color: white; color: black; border: 2px solid black; padding:14px 5px">
	회원가입</button>
	</div>
	
	</div>
	

				 
	
	</div>





<!--
<div class="container">
	<div class="col-lg-auto my-4"></div>
	<div class="col-lg-auto">
		<div class="jumbotron" style="padding-top: 20px;">
			<form method="post" action="loginAction.jsp">
				<h3 style="text-align: center;">로그인 화면</h3>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="userID" name="userID" maxlength="20">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="userPassword" name="userPW" maxlength="20">
				</div>
				<input type="submit" class="btn btn-primary form-control" value="로그인">
			</form>
		</div>
	</div>
	<div class="col-lg-auto"></div>
</div>
-->

  <!-- Footer -->
  <%@ include file="footer.jsp" %>

  <!-- 애니메이션 효과(제이쿼리), 자바스크립트 -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
