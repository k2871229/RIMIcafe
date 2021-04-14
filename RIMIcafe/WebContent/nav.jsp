<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="index.jsp">RIMI cafe</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      
      <div class="collapse navbar-collapse" id="navbarResponsive">
      <!-- 왼쪽에 상품, 공지 페이지와 오른쪽에 로그인, 회원가입, 장바구니 -->
        <ul class="navbar-nav ml-left">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              shop
            </a>
            <!-- 드롭다운으로 커피, 티, 쥬스, 원두 추가 -->
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
              <a class="dropdown-item" href="portfolio-1-col.html">coffee</a>
              <a class="dropdown-item" href="portfolio-2-col.html">tea</a>
              <a class="dropdown-item" href="portfolio-3-col.html">juice</a>
              <a class="dropdown-item" href="portfolio-4-col.html">Beans</a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="notice.jsp">notice</a>
          </li>
          </ul>
          
          <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="login.jsp">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="join.jsp">Join</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Cart.jsp">Cart</a>
          </li>
          </ul>

      </div>
    </div>
  </nav>