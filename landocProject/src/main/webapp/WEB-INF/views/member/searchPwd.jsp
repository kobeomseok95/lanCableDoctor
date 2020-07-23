<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>비밀번호 찾기</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="<%=request.getContextPath()%>/resources/login_images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_css/util.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_css/main.css">
<!--===============================================================================================-->
<style>
	.logoDiv{background-color: #007ee5; width: 100px; height: 100px; margin: auto; border-radius: 7px;}
	.logoDiv .logo{width: 100px; height: 100px;}
	#ask{padding-top: 30px;}
	#ask1{padding-top: 5px;}
	.radiobtn{padding-left: 150px; height: 50px;}
	.doc{margin-left: 30px;}
</style>
</head>
<body>
	
	<div class="limiter" id="login">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" action="searchPwd.do" method="post">
					<span class="login100-form-title p-b-48" >
						<div class="logoDiv"> 
							<img class="logo" src="<%=request.getContextPath()%>/resources/login_image/KakaoTalk_20200702_150917241.png">
						</div>
					</span>
					<span class="login100-form-title p-b-26">
						비밀번호 찾기
					</span>
					<div class="radiobtn">
						<label><input type="radio" id="member" name="check" value="client" checked>일반회원</label>
						<label><input type="radio" id="doctor" name="check" value="drClient" class="doc">의사회원</label>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "영소문,숫자 4~20글자로 입력가능합니다.">
						<input class="input100" type="text" name="userId" id="userId">
						<span class="focus-input100" data-placeholder="아이디"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="이메일 양식으로 입력해주세요.">
						
						<input class="input100" type="email" name="email" id="email">
						<span class="focus-input100" data-placeholder="이메일"></span>
					</div>

					<div class="container-login100-form-btn" style="padding-top: 50px;">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								비밀번호 찾기
							</button>
						</div>
					</div>
					
					<div class="text-center p-t-115" id="ask">
						<span class="txt1">
							아이디를 잊으셨다구요?
						</span>

						<a class="txt2" href="searchId.do">
							아이디 찾기
						</a>
					</div>

					<div class="text-center p-t-115" id="ask1">
						<span class="txt1">
							아직 회원이 아니라구요?
						</span>

						<a class="txt2" href="join.do">
							회원가입
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
<script src="<%=request.getContextPath()%>/resources/login_vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/login_vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/login_vendor/bootstrap/js/popper.js"></script>
	<script src="<%=request.getContextPath()%>/resources/login_vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/login_vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/login_vendor/daterangepicker/moment.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/login_vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/login_vendor/countdowntime/countdowntime.js"></script>
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