<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>비밀번호 찾기</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="SolMusic HTML Template">
<meta name="keywords" content="music, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Favicon -->
<link href="<%=request.getContextPath()%>/resources/img/favicon.ico"
	rel="shortcut icon" />

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap"
	rel="stylesheet">

<!-- Stylesheets -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/slicknav.min.css" />

<!-- Main Stylesheets -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/style.css" />
<!--===============================================================================================-->
<link rel="icon" type="image/png"
   href="<%=request.getContextPath()%>/resources/login_images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="<%=request.getContextPath()%>/resources/login_vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="<%=request.getContextPath()%>/resources/login_fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="<%=request.getContextPath()%>/resources/login_fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="<%=request.getContextPath()%>/resources/login_vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="<%=request.getContextPath()%>/resources/login_vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="<%=request.getContextPath()%>/resources/login_vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="<%=request.getContextPath()%>/resources/login_vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="<%=request.getContextPath()%>/resources/login_vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="<%=request.getContextPath()%>/resources/login_css/util.css">
<link rel="stylesheet" type="text/css"
   href="<%=request.getContextPath()%>/resources/login_css/main.css">
<!--===============================================================================================-->
<style>
.logoDiv {
   background-color: #007ee5;
   width: 100px;
   height: 100px;
   margin: auto;
   border-radius: 7px;
}

.logoDiv .logo {
   width: 100px;
   height: 100px;
}

#ask {
   padding-top: 30px;
}

#ask1 {
   padding-top: 5px;
}
</style>
</head>
 <script type="text/javascript">
 window.history.forward();
 function noBack(){window.history.forward();}
</script>
<body>
<body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
<%@ include file="../static/header.jsp"%>

   <div class="limiter" id="login">
      <div class="container-login100">
         <div class="wrap-login100">
            <c:if test="${!empty ClientSearchPwd2 && empty DrClientSearchPwd2}">
               <form class="login100-form validate-form"
                  action="ClientSearchPwd3.do">
                  <span class="login100-form-title p-b-48">
                     <div class="logoDiv">
                        <img class="logo"
                           src="<%=request.getContextPath()%>/resources/login_image/KakaoTalk_20200702_150917241.png">
                     </div>
                  </span> <span class="login100-form-title p-b-26"> 비밀번호 찾기 </span>
                  <div class="wrap-input100 validate-input"
                     data-validate="인증번호를 입력해 주세요.">
                     <input class="input100" type="text" name="message" id="message">
                     <span class="focus-input100" data-placeholder="인증번호"></span>
                     <input type="hidden" value=${ClientSearchPwd2.cNo } name="cNo">
                     <input type="hidden" value=${dice } name="dice">
                  </div>

                  <div class="container-login100-form-btn"
                     style="padding-top: 50px;">
                     <div class="wrap-login100-form-btn">
                        <div class="login100-form-bgbtn"></div>
                        <button class="login100-form-btn">인증하기</button>
                     </div>
                  </div>

                  <div class="text-center p-t-115" id="ask">
                     <span class="txt1"> 아이디를 잊으셨다구요? </span> <a class="txt2"
                        href="searchId.do"> 아이디 찾기 </a>
                  </div>

                  <div class="text-center p-t-115" id="ask1">
                     <span class="txt1"> 아직 회원이 아니라구요? </span> <a class="txt2"
                        href="join.do"> 회원가입 </a>
                  </div>
               </form>
            </c:if>
            <c:if test="${empty ClientSearchPwd2 && !empty DrClientSearchPwd2}">
               <form class="login100-form validate-form"
                  action="DrClientSearchPwd3.do">
                  <span class="login100-form-title p-b-48">
                     <div class="logoDiv">
                        <img class="logo"
                           src="<%=request.getContextPath()%>/resources/login_image/KakaoTalk_20200702_150917241.png">
                     </div>
                  </span> <span class="login100-form-title p-b-26"> 비밀번호 찾기 </span>
                  <div class="wrap-input100 validate-input"
                     data-validate="인증번호를 입력해 주세요.">
                     <input class="input100" type="text" name="message" id="message">
                     <span class="focus-input100" data-placeholder="인증번호"></span>
                     <input type="hidden" value=${DrClientSearchPwd2.drNo } name="drNo">
                     <input type="hidden" value=${dice } name="dice">
                  </div>

                  <div class="container-login100-form-btn"
                     style="padding-top: 50px;">
                     <div class="wrap-login100-form-btn">
                        <div class="login100-form-bgbtn"></div>
                        <button class="login100-form-btn">인증하기</button>
                     </div>
                  </div>

                  <div class="text-center p-t-115" id="ask">
                     <span class="txt1"> 아이디를 잊으셨다구요? </span> <a class="txt2"
                        href="searchIdView.do"> 아이디 찾기 </a>
                  </div>
					<div class="text-center p-t-115" id="ask1">
						 <span class="txt1"> 아직 회원이 아니라구요? </span> <a class="txt2"
                     href="joinClientView.do"> 일반회원가입 </a> / <a class="txt2"
                     href="joinDrView.do"> 의사회원가입 </a>
					</div>
					</form>
				</c:if>
			</div>
		</div>
	</div>
   <div id="dropDownSelect1"></div>
  <%@ include file="../static/footer.jsp"%>
   <!--===============================================================================================-->
   <script
      src="<%=request.getContextPath()%>/resources/login_vendor/jquery/jquery-3.2.1.min.js"></script>
   <!--===============================================================================================-->
   <script
      src="<%=request.getContextPath()%>/resources/login_vendor/animsition/js/animsition.min.js"></script>
   <!--===============================================================================================-->
   <script
      src="<%=request.getContextPath()%>/resources/login_vendor/bootstrap/js/popper.js"></script>
   <script
      src="<%=request.getContextPath()%>/resources/login_vendor/bootstrap/js/bootstrap.min.js"></script>
   <!--===============================================================================================-->
   <script
      src="<%=request.getContextPath()%>/resources/login_vendor/select2/select2.min.js"></script>
   <!--===============================================================================================-->
   <script
      src="<%=request.getContextPath()%>/resources/login_vendor/daterangepicker/moment.min.js"></script>
   <script
      src="<%=request.getContextPath()%>/resources/login_vendor/daterangepicker/daterangepicker.js"></script>
   <!--===============================================================================================-->
   <script
      src="<%=request.getContextPath()%>/resources/login_vendor/countdowntime/countdowntime.js"></script>
   <!--===============================================================================================-->
   <script src="<%=request.getContextPath()%>/resources/login_js/main.js"></script>

   <script>
      $(function(){
         $("#checkAll").click(function(){
            var bool = $("#checkAll").prop("checked");
            $(".infoBox").prop("checked",bool);
         })
         
      })
      

   </script>
</body>
</html>