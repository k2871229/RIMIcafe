<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="dto.Product"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="productDAO" class="dao.ProductDAO" scope="session" />
<html>
<head>
  <!-- 부트스트랩 -->
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- 부트스트랩 커스텀 -->
  <link href="resources/css/modern-business.css" rel="stylesheet">
<title>상품 수정</title>
</head>
<body>
<%@ include file ="nav.jsp" %>

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-5">상품 수정</h1>
		</div>
	</div>
	<%@ include file="dbconn.jsp"%>
	<%
		String prd_code = request.getParameter("id");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		String sql = "select * from producttbl where prd_code = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, prd_code);
		rs = pstmt.executeQuery();
		if (rs.next()) {
	%>
	<div class="container">
	<div class="row">
		<div class="col-md-5">
			<img src="/upload/<%=rs.getString("filename")%>" alt="image" style="width: 100%" />
		</div>
	
		<form name="newProduct" action="./processUpdateProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2">상품 코드</label>
				<div class="col-sm-3">
					<input type="text" id="prd_code" name="prd_code" 
					class="form-control" value='<%=rs.getString("prd_code")%>'>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">상품명</label>
				<div class="col-sm-3">
					<input type="text" id="prd_name" name="prd_name" 
					class="form-control" value="<%=rs.getString("prd_name")%>">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">가격</label>
				<div class="col-sm-3">
					<input type="text" id="prd_price" name="prd_price" 
					class="form-control" value="<%=rs.getInt("prd_price")%>">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">상세 정보</label>
				<div class="col-sm-5">
					<textarea name="prd_content" cols="50" rows="2"
						class="form-control"><%=rs.getString("prd_content")%></textarea>
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">분류</label>
				<div class="col-sm-5">
					<input type="radio" name="prd_category" value="Coffee " > 커피 
					<input type="radio" name="prd_category" value="Tea" > 차 
					<input type="radio" name="prd_category" value="Juice" > 쥬스
					<input type="radio" name="prd_category" value="Bean" > 원두
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">이미지</label>
				<div class="col-sm-5">
					<input type="file" name="prd_image" class="form-control">
				</div>
			</div>
			

			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary" value="등록">
				</div>
			</div>
		</form>
	</div>
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
	
	
</body>
</html>


