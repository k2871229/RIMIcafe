<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
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
<%@ include file ="nav.jsp" %>
  
  <div class="container">
	<div class="row">
	<form method="post" action="writeAction.jsp" style="width: 100%; margin: 30px">
		<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
			<thead>
				<tr>
					<th colspan="2" style="background-color: #eeeeee; text-align: center;">공지사항 작성</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="text" class="form-control" placeholder="글 제목" name="brd_title" maxlength="50"></td>
				</tr>
				<tr>
					<td><textarea class="form-control" placeholder="글 내용" name="brd_content" maxlength="2048" style="height: 350px;"></textarea></td>
				</tr>
			</tbody>
		</table>
		<div style="text-align: right;">
		<input type="submit" href="write.jsp" class="btn btn-dark" value="글쓰기">
		</div>
	</form>
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
