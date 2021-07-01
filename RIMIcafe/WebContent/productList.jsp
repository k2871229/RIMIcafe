<!-- UTF-8설정 및 페이지 정보 -->
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*"%>

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
	
	<div class="container">
		<div class="row text-center">
			<%@ include file="dbconn.jsp" %>
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				String sql = "select * from producttbl";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>
			
				<div class="col-md-4">
					<img src="/upload/<%=rs.getString("filename")%>" style="width: 100%">
					<h3><%=rs.getString("prd_name")%></h3>
					<p><%=rs.getString("prd_content") %></p>
					<p><%=rs.getString("prd_price") %> 원</p>
					<p><a href="./product.jsp?id=<%=rs.getString("prd_code")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;</a>
				</div>				
			<% 		
				}
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			%>					
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />	
</body>
</html>

