<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="dto.Board" %>
<%@ page import="dao.BoardDAO" %>
<%@ page import="java.util.ArrayList" %>
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
<%
	int pageNumber = 1; //기본 페이지를 의미.(1 페이지)
	if (request.getParameter("pageNumber") != null) {
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));//정수로 바꿔줌
	}
%>
<!-- 네비게이션 넣기 -->
<%@ include file ="nav.jsp" %>
  
  <div class="container">


    <h1 class="mt-4 mb-3">공지사항</h1>
    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="index.jsp">메인</a>
      </li>
      <li class="breadcrumb-item active">공지사항</li>
      <% if(session.getAttribute("mem_id") != null) { %>
      <%
      	if(mem_id.equals("admin")) {
      %>
      <a href="write.jsp">
      <li class="btn btn-dark btn-sm ml-3">글쓰기</li></a>
      <% } }%>
      </ol>

    <div class="mb-4" id="accordion" role="tablist" aria-multiselectable="true">
    <%
    	BoardDAO boardDAO = new BoardDAO();
    	ArrayList<Board> list = boardDAO.getList(pageNumber);
    	for(int i = 0; i < list.size(); i++) {
    %>

      <div class="card">   
        <div class="card-header" role="tab" id="headingOne">
          <h5 class="mb-0">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">

            	<%= list.get(i).getBrd_title() %>
            	
            	<div style="float: right; font-size: 12px; color:#666666">
            	
            	<%= list.get(i).getBrd_date().substring(0, 11) + list.get(i).getBrd_date().substring(11, 13) + "시" + list.get(i).getBrd_date().substring(14, 16) + "분" %>
            	
            	</div>
            	
            	</a>
          </h5>
        </div>

        <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne">
          <div class="card-body">
          	<%= list.get(i).getBrd_content() %>
          	
			      <div class="row mb-1 ml-1 mt-3">
			        
			      <% if(session.getAttribute("mem_id") != null) { %>
			      <%
			      	if(mem_id.equals("admin")) {
			      %>
						<a onclick="return confirm('정말 삭제하시겠습니까?')" href="deleteAction.jsp"class="btn btn-sm ml-1" style="border: 2px solid #666666">삭제</a>
					<%
						} }
					%>
			        
			      </div>
          	
          </div>
        </div>
      </div>
	<%
    	}
	%>
    </div>
	<%
		if(pageNumber != 1) {
	%>
		<a href = "notice.jsp?pageNumber=<%=pageNumber - 1 %>" class="btn btn-dark btn-arraw-left" style="margin-bottom: 10px">이전</a>
	<%
		} if(boardDAO.nextPage(pageNumber + 1)) {
	%>
		<a href = "notice.jsp?pageNumber=<%=pageNumber + 1 %>" class="btn btn-dark btn-arraw-right" style="margin-bottom: 10px">다음</a>
	<%
		}
	%>

  </div>
  <!-- /.container -->



  <!-- Footer -->
  <%@ include file="footer.jsp" %>

  <!-- Bootstrap core JavaScript -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
