<!-- utf-8설정 및 페이지 정보 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<!-- 부트스트랩 -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- 부트스트랩 커스텀 -->
<link href="resources/css/modern-business.css" rel="stylesheet">
<title>상품 편집</title>
<script type="text/javascript">

	function deleteConfirm(id) {
		if (confirm("해당 상품을 삭제합니다!!") == true)
			location.href = "./deleteProduct.jsp?id=" + id;
		else
			return;
	}
</script>
</head>
<%
	//파라메터 edit=update일때 업데이트
	String edit = request.getParameter("edit");
%>
</head>
<body>
<%@ include file ="nav.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-5">상품 편집</h1>
		</div>
	</div>

	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp"%>
			<%
				String id = request.getParameter("id");
			
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select * from producttbl where prd_code=?";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>
			<div class="col-md-4">
				<img src="/upload/<%=rs.getString("filename")%>" style="width: 100%">
				<h3><%=rs.getString("prd_name")%></h3>
				<p><%=rs.getString("prd_content") %></p>
				<p><%=rs.getString("prd_price") %> 원</p>
				<p>
					<%
						//edit이 업데이트면 updateProduct로 이동
						if (edit.equals("update")) {
					%>
					<a href="./updateProduct.jsp?id=<%=rs.getString("prd_code")%>"	class="btn btn-success" role="button"> 수정 &raquo;></a>
					<%
						//edit이 삭제이면 deleteConfirm 함수실행
						} else if (edit.equals("delete")) {
					%>
					<a href="#" onclick="deleteConfirm('<%=rs.getString("prd_code")%>')" class="btn btn-danger" role="button">삭제 &raquo;></a>
					<%
						}
					%>				
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