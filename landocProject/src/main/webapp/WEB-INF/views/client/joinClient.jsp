<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Login V2</title>
	<meta charset="UTF-8">
	<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs/dist/tf.min.js"> </script>
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
	.radiobtn{padding-left: 150px; height: 50px;}
	.doc{margin-left: 30px;}
	.doctorForm{padding-top: 50px; padding-bottom: 50px;}
	.nextBox{width: 100px; height: 100px; display: inline-block; border-radius: 10px; background-color: lightgrey; color: white;}
	.nextBox1{width: 100px; height: 100px; display: inline-block; border-radius: 10px; background-color: #0071ce; color: white;}
	.img{width:20px; height:20px; padding-left: 10px;}
	.label1{padding-top: 40px; padding-left: 15px;}
	.label2{padding-top: 40px; padding-left: 7px;}
	.checkBox{background-color: lightgrey; height: 70px; padding-left: 10px;}
	.container-login100-form-btn{padding-top: 50px;}
	#ask{padding-top: 30px;}
	.searchDiv{display: inline-block; margin-bottom: 0px;}
	.searchBtn{background-color: #007ee5; width: 140px; height: 40px; border-radius: 5px; border: 0px; color: white;}
	.wrap-input1001{display: inline-block;}
</style>
</head>
<body>
	<div class="limiter" id="login">
		<div class="container-login100">
			<div class="wrap-login100">
			<form class="login100-form validate-form" action="joinClient.do" method="post">
				<span class="login100-form-title p-b-48">
					<div class="logoDiv"> 
						<img class="logo" src="<%=request.getContextPath()%>/resources/login_image/KakaoTalk_20200702_150917241.png">
					</div>
				</span>
				<div id="doctorJoin1">
					<span class="login100-form-title p-b-26">
						일반 회원가입
					</span>
				</div>
					<!-- 의사 회원 start -->
				
						
						<div class="wrap-input100 validate-input" data-validate="영소문,숫자 4~20글자로 입력가능합니다." >
							<input class="input100" type="text" name="userId" id="userId">
							<span class="focus-input100" data-placeholder="아이디"></span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="영소문,숫자 4~20글자로 입력가능합니다.">
							<span class="btn-show-pass">
								<i class="zmdi zmdi-eye"></i>
							</span>
							<input class="input100" type="password" name="userPwd" id="userPwd">
							<span class="focus-input100" data-placeholder="비밀번호"></span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="비밀번호가 일치하지 않습니다.">
							<span class="btn-show-pass">
								<i class="zmdi zmdi-eye"></i>
							</span>
							<input class="input100" type="password" name="checkPwd" id="checkPwd">
							<span class="focus-input100" data-placeholder="비밀번호 확인"></span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="한글로 2~4글자로 입력해주세요.">
							<input class="input100" type="text" name="userName" id="userName">
							<span class="focus-input100" data-placeholder="이름"></span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="특수문자를 제외한 2~10글자로 입력해주세요.">
							<input class="input100 input1" type="text" name="nickName" id="nickName">
							<span class="focus-input100" data-placeholder="닉네임"></span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="이메일 양식으로 입력해주세요.">
							<input class="input100" type="email" name="email" id="email">
							<span class="focus-input100" data-placeholder="이메일"></span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="'-'를 제외한 숫자 11글자로 입력해주세요.">
							<input class="input100" type="tel" name="phone" id="phone">
							<span class="focus-input100" data-placeholder="전화번호('-' 제외)"></span>
						</div>

						<div class="wrap-input100 validate-input" data-validate="숫자 6글자로 입력해주세요.">
							<input class="input100" type="text" name="birth" id="birth">
							<span class="focus-input100" data-placeholder="생년월일 ex)970325"></span>
						</div>
						<div class="wrap-input1001 validate-input" data-validate="우편번호를 검색해주세요.">
							<input class="input100 postcodify_postcode5" type="text" name="post" value="" id="post"> 
							<span class="focus-input100" data-placeholder="우편번호"></span>
						</div>
						<div class="searchDiv">
							<button type="button" class="searchBtn" id="postcodify_search_button">검색</button>
						</div>
						
						<div class="wrap-input100 validate-input" data-validate="도로명 주소를 입력해주세요." >
							<input class="input100 postcodify_address" type="text" name="address1" value="" id="address1">
							<span class="focus-input100" data-placeholder="도로명 주소"></span>
						</div>
						<div class="wrap-input100 validate-input" data-validate="상세 주소를 입력해주세요." >
							<input class="input100 postcodify_extra_info" type="text" name="address2" value="" id="address2">
							<span class="focus-input100" data-placeholder="상세주소"></span>
						</div>
						
						<div>
							<input type="checkbox" id="checkAll" class="infoBox"><label>전체동의</label><br>
							<div class="checkBox">
								<input type="checkbox" id="check1" class="infoBox"><a href="agree1.html">서비스 이용 약관</a><a>및</a><a href="agree2.html">개인정보 취급 방침</a><a>(필수)</a><br>
								<input type="checkbox" id="check2" class="infoBox"><a href="agree3.html">위치기반 서비스 이용 약관</a><a>(필수)</a><br>
								<input type="checkbox" id="check3" class="infoBox"><a>마케팅 정보수신 동의 (선택)</a>
							</div>
						</div>
	
						<div class="container-login100-form-btn">
							<div class="wrap-login100-form-btn">
								<div class="login100-form-bgbtn"></div>
								<button class="login100-form-btn">
									회원가입
								</button>
							</div>
						</div>
						
						<div class="text-center p-t-115" id="ask">
							<span class="txt1">
								회원이라구요?
							</span>
	
							<a class="txt2" href="login.do">
								로그인
							</a>
						</div>
					
				</form>
					<!-- 의사 회원 end -->
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

<!-- 주소 api -->
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	 <script>
	 	// 검색 단추를 누르면 팝업 레이어가 열리도록 설정한다.
	 	$(function(){
	 		$("#postcodify_search_button").postcodifyPopUp();
	 		
	 	});
	 	
	 </script>
</body>
</html>