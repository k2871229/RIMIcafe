<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Board" %>
<%@ page import="dao.BoardDAO" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RIMIcafe</title>
</head>
<body>
	<%
	String mem_id = null;
	if(session.getAttribute("mem_id") != null)
	{
		mem_id = (String) session.getAttribute("mem_id");
	}
	if(mem_id == null){
		out.println("<script>");
		out.println("alert('로그인을 하세요.')");
		out.println("location.href = 'login.jsp'");
		out.println("</script>");
	}	
	
	int brd_num = 0;
	if(request.getParameter("brd_num") != null)
	{
		brd_num = Integer.parseInt(request.getParameter("brd_num"));
	}
	if(brd_num ==0)
	{
		out.println("<script>");
		out.println("alert('유효하지 않은 글입니다.')");
		out.println("location.href = 'notice.jsp'");
		out.println("</script>");
	}
	
	Board brd = new BoardDAO().getBoard(brd_num);
	if(!mem_id.equals(brd.getMem_id())){
		out.println("<script>");
		out.println("alert('권한이 없습니다.')");
		out.println("location.href = 'notice.jsp'");
		out.println("</script>");
	}
%>
</body>
</html>