<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.MemberDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="member" class="dto.Member" scope="page"/>
<jsp:setProperty name="member" property="mem_id"/>
<jsp:setProperty name="member" property="mem_pw"/>
<jsp:setProperty name="member" property="mem_name"/>
<jsp:setProperty name="member" property="mem_address"/>
<jsp:setProperty name="member" property="mem_phone"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RIMIcafe</title>
</head>
<body>
	<%
		if (member.getMem_id() == null || member.getMem_pw() == null || member.getMem_name() == null 
				|| member.getMem_address() == null || member.getMem_phone() == null) {
				out.println("<script>");
				out.println("alert('빈칸을 모두 입력해주세요.')");
				out.println("history.back()");
				out.println("</script>");
			} else {
				MemberDAO memberDAO = new MemberDAO();
				int result = memberDAO.join(member);
				if(result == -1 ) {
					out.println("<script>");
					out.println("alert('이미 존재하는 아이디입니다.')");				
					out.println("history.back()");
					out.println("</script>");
				} else {
					session.setAttribute("mem_id", member.getMem_id());
					out.println("<script>");
					out.println("location.href = 'index.jsp'");
					out.println("</script>");
				} 
			}
	%>
</body>
</html>
