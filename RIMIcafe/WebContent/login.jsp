<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
  
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  
  <title>RIMIcafe로그인</title>
  
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
	<form method="get" class="form-signin col-lg-12" action="loginAction.jsp">
	<div class="col-lg-2"></div>
	<div class="col-lg-5 my-4" align="center">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Id" name="mem_id" maxlength="20">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="Password" name="mem_pw" maxlength="20">
				</div>
	</div>
	<div class="col-lg-5 my-4" align="center">
		
		<button style="color: white; background:black; padding:20px 5px" class="btn btn-lg btn-block" type="submit">로그인</button>
	
				</div>
	</form>	
	</div>
	
	<div class="col-lg-5 mb-5" align="center">
	<p>RIMIcafe, 회원가입 후 혜택 즐기기</p>
	<button class="btn btn-lg btn-primary btn-block" onclick="location.href='join.jsp'" style="background-color: white; color: black; border: 2px solid black; padding:14px 5px">
	회원가입</button>
	</div>
	
	</div>
	

				 
	
	</div>



  <!-- Footer -->
  <%@ include file="footer.jsp" %>

  <!-- 애니메이션 효과(제이쿼리), 자바스크립트 -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
