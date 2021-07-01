<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
  <!-- 부트스트랩 -->
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- 부트스트랩 커스텀 -->
  <link href="resources/css/modern-business.css" rel="stylesheet">
<title>상품아이디 오류</title>
</head>
<body>
	<jsp:include page="nav.jsp" />	
	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">해당 상품이 존재하지 않습니다.</h2>
		</div>
	</div>
	<div class="container">
		<p><%=request.getRequestURL()%>?<%=request.getQueryString()%>
		<p><a href="productList.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>			
	</div>
</body>
</html>
