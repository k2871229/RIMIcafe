<!-- UTF-8설정 및 페이지 정보 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
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
<%@ include file ="nav.jsp" %>

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>	
	<%
		ProductDAO dao = productDAO.getInstance();
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
					<img src ="E:/upload/<%=product.getFilename()%>" style ="width: 100%">
					<h3><%=product.getPrd_name() %></h3>
					<p><%=product.getPrd_content() %></p>
					<p><%=product.getPrd_price() %> 원</p>
					<p><a href="./product.jsp?id=<%=product.getPrd_code()%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;</a>
				</div>				
			<% 		
				}
			%>					
		</div>
		<hr>
	</div>	
</body>
</html>

