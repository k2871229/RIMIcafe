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
<title>상품 등록 정보</title>
</head>
<body>
<%@ include file ="nav.jsp" %>

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 등록</h1>
		</div>
	</div>
	<div class="container">
		<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
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
				<label class="col-sm-2">상세 정보</label>
				<div class="col-sm-5">
					<textarea name="prd_content" cols="50" rows="2"
						class="form-control"></textarea>
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
					<input type="submit" class="btn btn-primary" value="등록" onclick="CheckAddProduct()" >
				</div>
			</div>
		</form>
	</div>
	
</body>
</html>


