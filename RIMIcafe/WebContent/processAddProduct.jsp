<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductDAO" %>

			<% // addProduct 페이지에서 넘어온 파라메터들을 처리
			request.setCharacterEncoding("UTF-8");
			
			String filename = "";
			String realFolder = "E:\\upload"; //웹 어플리케이션상의 절대 경로
			String encType = "utf-8"; //인코딩 타입
			int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb

			MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
			
			String prd_code=request.getParameter("prd_code"); //상품코드
			String prd_name=request.getParameter("prd_name"); //상품이름
			String prd_price=request.getParameter("prd_price"); //상품가격
			String prd_content=request.getParameter("prd_content"); //상세정보
			String category=request.getParameter("prd_category"); //분류
			
			Integer price; // 가격을 적지 않았으면(빈칸) 0, 숫자문자열을 숫자로 변환한다.
			if (prd_price.isEmpty())
				price=0;
			else price=Integer.valueOf(prd_price);
			
			Integer code;
			if (prd_code.isEmpty())
				code=0;
			else code=Integer.valueOf(prd_code);
			
			long stock;

			Enumeration<?> files = multi.getFileNames();
			String fname = (String) files.nextElement();
			String fileName = multi.getFilesystemName(fname);
			
			ProductDAO dao=ProductDAO.getInstance();
			
			Product newProduct = new Product();
			
			newProduct.setPrd_code(prd_code);
			newProduct.setPrd_name(prd_name);
			newProduct.setPrd_price(prd_price);
			newProduct.setPrd_content(prd_content);
			newProduct.setPrd_category(prd_category);
			newProduct.setPrd_filename(prd_filename);
			
			dao.addProduct(newProduct);
			
			response.sendRedirect("products.jsp"); 
			%>