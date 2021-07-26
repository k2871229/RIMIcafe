<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>

<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <!-- 부트스트랩 -->
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- 부트스트랩 커스텀 -->
  <link href="resources/css/modern-business.css" rel="stylesheet">
  <title>RIMIcafe</title>
</head>
<body>
<!-- 네비게이션 넣기 -->
<%@ include file ="nav.jsp" %>
<%@ include file="dbconn.jsp" %>


  <header>
	<%@ include file="carousel.jsp" %>
  </header>

  <!-- Page Content -->
  <div class="container">



    <hr>

    <!-- Call to Action Section -->
    <div class="row mb-4">
      <div class="col-md-8" style = "position: relative; left: 200px">
      	<p style="font-size:25px; position: relative; left: 300px">Contact</p>
        <p style="position: relative; left: 170px"> Mail : rimiha9708@gmail.com   /   Tel  : 010-8281-1554</p>
      </div>
    </div>

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <%@ include file="footer.jsp" %>

  <!-- Bootstrap core JavaScript -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
