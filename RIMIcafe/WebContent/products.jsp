<!-- UTF-8설정 및 페이지 정보 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductDAO" %>

<!-- 자바빈즈로 제품목록을 가진 객체를 불러온다. -->
<jsp:useBean id="productDAO" class="dao.ProductDAO" scope="session"/>
<html>
<head>
  <!-- 부트스트랩 -->
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- 부트스트랩 커스텀 -->
  <link href="resources/css/modern-business.css" rel="stylesheet">
<title>상품 목록</title>
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
			<h1 class="display-3">
				상품 목록
			</h1>
		</div>
	</div>	
	<%
		//상품 목록을 가져온다.
		ArrayList<Product> listOfProduct = productDAO.getAllProduct();
	%>
	
	<div class="container">
		<div class="row text-center">
			<% //여기에 위에 가져온 제품 리스트를 가지고 제품 하나하나씩 출력을 한다.
				for(int i=0; i<listOfProduct.size(); i++){
					Product product = listOfProduct.get(i); 
			%>
				<div class="col-md-4">
					<h3><%=product.getPrd_name() %></h3>
					<p><%=product.getPrd_content() %></p>
					<p><%=product.getPrd_price() %> 원</p>
				</div>				
			<% 		
				}
			%>					
		</div>
		<hr>
	</div>	
	<%@ include file="footer.jsp" %>
</body>
</html>

