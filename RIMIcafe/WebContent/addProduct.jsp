<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductDAO" scope="session" />
<html>
<head>
  <!-- 부트스트랩 -->
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- 부트스트랩 커스텀 -->
  <link href="resources/css/modern-business.css" rel="stylesheet">
<title>상품 등록 정보</title>
</head>
<body>
	<!-- 로그인 정보 담기 -->
<%
	String mem_id = null;
	if(session.getAttribute("mem_id") != null) {
		mem_id = (String)session.getAttribute("mem_id");
	}
%>
<!-- 네비게이션 넣기 -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="index.jsp">RIMI cafe</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      
      <div class="collapse navbar-collapse" id="navbarResponsive">
      <!-- 왼쪽에 상품, 공지 페이지와 오른쪽에 로그인, 회원가입, 장바구니 -->
        <ul class="navbar-nav ml-left">

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              	상품목록
            </a>
            <!-- 드롭다운으로 커피, 티, 쥬스, 원두 추가 -->
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
              <a class="dropdown-item" href="portfolio-1-col.html">커피</a>
              <a class="dropdown-item" href="portfolio-2-col.html">차</a>
              <a class="dropdown-item" href="portfolio-3-col.html">쥬스</a>
              <a class="dropdown-item" href="portfolio-4-col.html">원두</a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="notice.jsp">공지</a>
          </li>
          </ul>

          <%
          	if(mem_id == null) {
          %>
          <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="login.jsp">로그인</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="join.jsp">회원가입</a>
          </li>
          </ul>
          <%
          	} else {
          %>
          <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="login.jsp">내 정보 관리</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="cart.jsp">장바구니</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="logoutAction.jsp">로그아웃</a>
          </li>
          </ul>
          <%
          	}
          %>
      </div>
    </div>
  </nav>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 등록</h1>
		</div>
	</div>
	<div class="container">
		<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post">
			<div class="form-group row">
				<label class="col-sm-2">상품 코드</label>
				<div class="col-sm-3">
					<input type="text" name="prd_code" class="form-control" >
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">상품명</label>
				<div class="col-sm-3">
					<input type="text" name="prd_name" class="form-control" >
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">가격</label>
				<div class="col-sm-3">
					<input type="text" name="prd_price" class="form-control" >
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">분류</label>
				<div class="col-sm-5">
					<input type="radio" name="prd_category" value="Coffee " > 신규 제품 
					<input type="radio" name="prd_category" value="Tea" > 중고 제품 
					<input type="radio" name="prd_category" value="Juice" > 재생 제품
					<input type="radio" name="prd_category" value="Bean" > 재생 제품
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">상세 정보</label>
				<div class="col-sm-5">
					<textarea name="prd_content" cols="50" rows="2"
						class="form-control"></textarea>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">이미지</label>
				<div class="col-sm-5">
					<input type="file" name="productImage" class="form-control">
				</div>
			</div>
			

			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary" value="등록" >
				</div>
			</div>
		</form>
	</div>
	
</body>
</html>


