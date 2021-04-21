<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.MemberDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="member" class="dto.Member" scope="page"/>
<jsp:setProperty name="member" property="mem_id"/>
<jsp:setProperty name="member" property="mem_pw"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RIMIcafe</title>
</head>
<body>
	<%
		MemberDAO memberDAO = new MemberDAO();
		int result = memberDAO.login(member.getMem_id(), member.getMem_pw());
		if (result == 1 ) {
			out.println("<script>");
			out.println("location.href = 'main.jsp'");
			out.println("</script>");
			System.out.println("로그인");
		} else if (result == 0) {
			out.println("<script>");
			out.println("alert('비밀번호가 틀립니다.')");
			out.println("history.back()");
			out.println("</script>");
			System.out.println("비번 틀림");
		} else if (result == -1) {
			out.println("<script>");
			out.println("alert('존재하지 않는 아이디입니다.')");
			out.println("history.back()");
			out.println("</script>");
			System.out.println("아이디 틀림");
		} else if (result == -2) {
			out.println("<script>");
			out.println("alert('데이터베이스 오류가 발생했습니다.')");
			out.println("history.back()");
			out.println("</script>");
			System.out.println("db오류");
		}
	%>
</body>
</html>
