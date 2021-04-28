<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.BoardDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="board" class="dto.Board" scope="page"/>
<jsp:setProperty name="board" property="brd_title"/>
<jsp:setProperty name="board" property="brd_content"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RIMIcafe</title>
</head>
<body>
	<%
		String mem_id = null;
		if (session.getAttribute("mem_id") != null) {
			mem_id = (String)session.getAttribute("mem_id");
		}
		if ( mem_id == null) {
			out.println("<script>");
			out.println("alert('로그인이 필요한 항목입니다.')");
			out.println("location.href = 'login.jsp'");
			out.println("</script>");
		} else {
			if (board.getBrd_title() == null || board.getBrd_content() == null) {
					out.println("<script>");
					out.println("alert('빈칸을 모두 입력해주세요.')");
					out.println("history.back()");
					out.println("</script>");
				} else {
					BoardDAO boardDAO = new BoardDAO();
					int result = boardDAO.write(board.getBrd_title(), mem_id, board.getBrd_content());
					if(result == -1 ) {
						out.println("<script>");
						out.println("alert('글 작성에 실패했습니다.')");				
						out.println("history.back()");
						out.println("</script>");
					} else {
						out.println("<script>");
						out.println("alert('글 작성에 성공했습니다.')");
						out.println("location.href = 'notice.jsp'");
						out.println("</script>");
					} 
				}
		}
		
	%>
</body>
</html>
