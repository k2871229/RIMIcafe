<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!-- DB연결 -->
<%@ include file="dbconn.jsp" %>

<%@ page errorPage="exceptionNoPrd_code.jsp" %>
<html>
<head>
  <!-- 부트스트랩 -->
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- 부트스트랩 커스텀 -->
  <link href="resources/css/modern-business.css" rel="stylesheet">
  

  
<title>상품 상세 정보</title>
</head>
<body>

<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {		
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<%@ include file ="nav.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
	
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from producttbl where prd_code=?";
		pstmt = conn.prepareStatement(sql); //sql문 준비
		pstmt.setString(1, id);
		rs = pstmt.executeQuery(); //만약 id에 맞는 상품이 있으면 결과가 있음
		if(rs.next()){  //괄호와 괄호 사이에 rs.메소드로 상품의 정보를 가져온다.
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img style="width: 100%" src="/upload/<%=rs.getString("filename")%>">
			</div>
			<div class="col-md-6">
				<h3><%=rs.getString("prd_name")%></h3>
				<p><%=rs.getString("prd_content")%>
				<p><b>상품 코드 : </b><span class="badge badge-danger"> <%=rs.getString("prd_code")%></span>
				<p><b>분류</b> : <%=rs.getString("prd_category")%>
				<h4><%=rs.getString("prd_price")%>원</h4>
				<p>
				<form name="addForm" action="addCart.jsp?id=<%=rs.getString("prd_code")%>" method="post">
					<a href="#" onclick="addToCart();" class="btn btn-info"> 상품 주문 &raquo;</a> 
					<a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a>
					<a href="./productList.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>
				</form>
				
		<% if(session.getAttribute("mem_id") != null) { %>
      	<%
      		if(mem_id.equals("admin")) {
     	 %>
     	 <a onclick="return confirm('정말 삭제하시겠습니까?')" href="./deleteProduct.jsp?id=<%=rs.getString("prd_code")%>"
     	 class="btn btn-dark ml-1" role="button">상품삭제</a>
    	  <% } }%>
				
			</div>
		</div>
		<hr>
	</div>
	
	<% 
		}
	%>	
	
	<jsp:include page="footer.jsp" />
</body>
</html>
