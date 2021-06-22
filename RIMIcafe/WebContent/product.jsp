<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductDAO"%>
<html>
<head>
  <!-- 부트스트랩 -->
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- 부트스트랩 커스텀 -->
  <link href="resources/css/modern-business.css" rel="stylesheet">
<title>상품 상세 정보</title>
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
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	<%
		// 제품목록 페이지에서 넘어온 아이디의 값을 가져온다.
		// id="p1234"
		String id = request.getParameter("id");
	
		//상품 리파지토리 객체를 가져온다. (Static객체)
		ProductDAO dao = ProductDAO.getInstance();
		// 스테틱 인스턴스 객체를 가져와서 업데이트 된 제품 리스트에서 제품을 찾음
		Product product = dao.getProductById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3><%=product.getPrd_name()%></h3>
				<p><%=product.getPrd_content()%>
				<p><b>상품 코드 : </b><span class="badge badge-danger"> <%=product.getPrd_code()%></span>
				<h4><%=product.getPrd_price()%>원</h4>
				<p><a href="#" class="btn btn-info"> 상품 주문 &raquo;</a> <a	href="./products.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
