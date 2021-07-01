<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>

<%
// addProduct 페이지에서 넘어온 파라메터들을 처리
	request.setCharacterEncoding("UTF-8");
			
	String realFolder = "E:\\upload";
	String encType = "UTF-8";
	int maxSize = 5 * 1024 * 1024; //최대 업로드 5MB
	

	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
			
	Integer prd_code= Integer.parseInt(multi.getParameter("prd_code")); //상품코드
	String prd_name=multi.getParameter("prd_name"); //상품이름
	Integer prd_price=Integer.parseInt(multi.getParameter("prd_price")); //상품가격
	String prd_content=multi.getParameter("prd_content"); //상세정보
	String prd_category=multi.getParameter("prd_category"); //분류
	
	
	Enumeration<?> files = multi.getFileNames();
	String prd_image = (String) files.nextElement();
	String filename = multi.getFilesystemName("prd_image");
	
	PreparedStatement pstmt = null;
	
	String sql = "insert into producttbl values(?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, prd_code);
	pstmt.setString(2, prd_name);
	pstmt.setInt(3, prd_price);
	pstmt.setString(4, prd_content);
	pstmt.setString(5, prd_category);
	pstmt.setString(6, filename);
	pstmt.executeUpdate();
	
	if(pstmt != null)
		pstmt.close();
	if(conn != null)
		conn.close();
			
	response.sendRedirect("productList.jsp"); 
%>