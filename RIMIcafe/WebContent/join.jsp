<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
  
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  
  <title>RIMIcafe로그인</title>
  
  <!-- 부트스트랩 -->
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- 스타일시트 참조 -->
  <link href="resources/css/modern-business.css" rel="stylesheet">

</head>

<body style="background-color: #eaeaea;">
<%@ include file="nav.jsp" %>

  <div class="container" align="center">

    <div class="row">
      <div class="col-lg-12 mt-5">
		<div class="container mt-4">
			<h2>회원 가입</h2>
		</div>
	</div>
	</div>
	
	<div class="container col-lg-12" align="center">
      <div style="background-color: white; color: black; border: 1px solid black; border-radius: 15px;
      margin: 30px auto; max-width: 550px; padding: 50px;" align="left">
        
      <form method="POST" action="joinAction.jsp">
        <div class="form-group">
          <label for="mem_id">아이디</label>
          </div>
          <div class="form-group">
          <input type="text" name="mem_id" id="mem_id" style="border-radius: 5px; border: 1px solid gray;"
           size=50 placeholder="5~20자의 영문 소문자, 숫자만 가능"
          />
        </div>
        <br>
        <div class="form-group">
          <label for="mem_pw">비밀번호</label>
        </div>
          <div class="form-group">
          <input type="password" name="mem_pw" id="mem_pw" style="border-radius: 5px; border: 1px solid gray;"
          	size=50 placeholder="8~20자의 영문, 숫자, 특수문자 조합"
          />
          </div>
        <br>
        <div class="form-group">
          <label for="mem_name">이름</label>
          </div>
          <div class="form-group">
          <input type="text" name="mem_name" id="mem_name" style="border-radius: 5px; border: 1px solid gray;"
          	size=50 placeholder="이름을 입력하세요."
          />
        </div>
        <br>
        <div class="form-group">
          <label for="mem_email">주소</label>
        </div>
        <div class="form-group">
          <input type="text" name="mem_address" id="mem_address" style="border-radius: 5px; border: 1px solid gray;"
          	size=50 placeholder="주소를 입력하세요."
          />
        </div>
        <br>
        <div class="form-group">
          <label for="mem_phone">전화번호</label>
          </div>
          <div class="form-group">
          <input type="text" name="mem_phone" id="mem_phone" style="border-radius: 5px; border: 1px solid gray;"
          	size=50 placeholder="번호를 입력하세요. (ex. 010-1234-5678)"
          />
        </div>
        <br>
        <button style="color: white; background:black; padding:15px 5px" class="btn btn-lg btn-block" type="submit">가입하기</button>
		</form>
      </div>
    </div>
  </div>
</body>



	
  <!-- Footer -->
  <%@ include file="footer.jsp" %>

  <!-- 애니메이션 효과(제이쿼리), 자바스크립트 -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
</body>
</html>