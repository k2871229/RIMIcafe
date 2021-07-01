<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
  <!-- 로그인 정보 담기 -->
<%
	String mem_id = null;
	if(session.getAttribute("mem_id") != null) {
		mem_id = (String)session.getAttribute("mem_id");
	}
%>

  <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="index.jsp">RIMI cafe</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      
      <div class="collapse navbar-collapse" id="navbarResponsive">
      <!-- 왼쪽에 상품, 공지 페이지와 오른쪽에 로그인, 회원가입, 장바구니 -->
        <ul class="navbar-nav ml-left">
        <li class="action">
            <a class="nav-link" href="main.jsp">메인</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              	상품목록
            </a>
            <!-- 드롭다운으로 커피, 티, 쥬스, 원두 추가 -->
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
              <a class="dropdown-item" href="productList.jsp">전체 상품</a>
              <a class="dropdown-item" href="portfolio-2-col.html">커피</a>
              <a class="dropdown-item" href="portfolio-3-col.html">차</a>
              <a class="dropdown-item" href="portfolio-4-col.html">쥬스</a>
              <a class="dropdown-item" href="portfolio-5-col.html">원두</a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="notice.jsp">공지</a>
          </li>
          </ul>

		<c:choose>
			<c:when test="${empty mem_id}">
	        <ul class="navbar-nav ml-auto">
	        <li class="nav-item">
	        	<a class="nav-link" href="login.jsp">로그인</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="join.jsp">회원가입</a>
	        </li>
	        </ul>
	        </c:when>
	        <c:otherwise>
	        <ul class="navbar-nav ml-auto">
	        <li style="padding-top: 7px; color: white">[<%=mem_id%>님]</li>	        
	        <li class="nav-item">
	          <a class="nav-link" href="login.jsp">내 정보 관리</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="cart.jsp">장바구니</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="logoutAction.jsp">로그아웃</a>
	        </li>
	        </ul>
	        </c:otherwise>
          </c:choose>
      </div>
    </div>
  </nav>