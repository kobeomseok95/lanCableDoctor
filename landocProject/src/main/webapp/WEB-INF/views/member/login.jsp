<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>로그인</title>
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
	.idForm{margin-bottom: 35px;}
	#idinput{margin-bottom: 0px;}
	#ask{padding-top: 30px;}
	.radiobtn{padding-left: 150px; height: 50px;}
	.doc{margin-left: 30px;}
</style>
</head>
<body>
	
	<div class="limiter" id="login">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" action="memberLogin.do" method="post">
					<span class="login100-form-title p-b-48" >
						<div class="logoDiv"> 
							<img class="logo" src="<%=request.getContextPath()%>/resources/login_image/KakaoTalk_20200702_150917241.png">
						</div>
					</span>
					<span class="login100-form-title p-b-26">
						로그인
					</span>
					<div class="radiobtn">
						<label><input type="radio" id="member" name="check" value="client" checked>일반회원</label>
						<label><input type="radio" id="doctor" name="check" value="drClient" class="doc">의사회원</label>
					</div>
					<div class="idForm">
						<div class="wrap-input100 validate-input" data-validate = "영소문,숫자 4~20글자로 입력가능합니다." id="idinput">
							<input class="input100" type="text" name="userId" id="userId">
							<span class="focus-input100" data-placeholder="아이디"></span>
						</div>
						<div style="float: right;">
							<label><input type="checkbox" id="saveId">아이디 저장</label>
						</div>
					</div>

					<div class="wrap-input100 validate-input" data-validate="영소문,숫자 4~20글자로 입력가능합니다.">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input class="input100" type="password" name="userPwd" id="userPwd">
						<span class="focus-input100" data-placeholder="비밀번호"></span>
					</div>

					<div class="container-login100-form-btn" style="padding-top: 50px;">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								로그인
							</button>
						</div>
					</div>
					
					<div class="text-center p-t-115" id="ask">
						<span class="txt1">
							아직 회원이 아니라구요?
						</span>
						<a class="txt2" href="join.do">
							회원가입
						</a>
						<br>
						<span class="txt1">
							아이디 및 비밀번호를 잊으셨나요?
						</span>
						<a class="txt2" href="searchIdView.do">
							아이디
						</a><span class="txt2"> / </span>
						<a class="txt2" href="searchPwdView.do">
							비밀번호
						</a><span class="txt2">찾기</span>
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
	 // 아이디 저장 코드	
                
				// 설정되어 있는 쿠키의 값을 가져옵니다.
                var key = getCookie("key");
                $("#userId").val(key); 
                 
                if($("#userId").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
                    $("#saveId").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
                }
                
             	// 쿠키 생성 함수
				// setCookie('쿠키이름', '쿠키값', 만료일)
				// 쿠키이름 : 쿠키이름을 영문으로 넣어주세요.
				// 쿠키값 : 쿠키의 값을 문자열로 넣어주세요.
				// 만료일 : 쿠키의 만료일을 숫자로 넣어주세요
                $("#saveId").change(function(){ // 체크박스에 변화가 있다면,
                    if($("#saveId").is(":checked")){ // ID 저장하기 체크했을 때,
                        setCookie("key", $("#userId").val(), 7); // 7일 동안 쿠키 보관
                    }else{ // ID 저장하기 체크 해제 시,
                        deleteCookie("key");
                    }
                });
                 
                // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
                $("#userId").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
                    if($("#saveId").is(":checked")){ // ID 저장하기를 체크한 상태라면,
                        setCookie("key", $("#userId").val(), 7); // 7일 동안 쿠키 보관
                    }
                });
            });
            
            // 쿠키 생성  함수
            // setCookie('쿠키 이름', '쿠키값', 만료일)
            function setCookie(cookieName, value, exdays){
                var exdate = new Date();
                exdate.setDate(exdate.getDate() + exdays);
                var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
                document.cookie = cookieName + "=" + cookieValue;
            }
             
            function deleteCookie(cookieName){
                var expireDate = new Date();
                expireDate.setDate(expireDate.getDate() - 1);
                document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
            }
             
            function getCookie(cookieName) {
                cookieName = cookieName + '=';
                var cookieData = document.cookie;
                var start = cookieData.indexOf(cookieName);
                var cookieValue = '';
                if(start != -1){
                    start += cookieName.length;
                    var end = cookieData.indexOf(';', start);
                    if(end == -1)end = cookieData.length;
                    cookieValue = cookieData.substring(start, end);
                }
                return unescape(cookieValue);
            }
            // 아이디 저장 코드 end
      		var result = '${ClientSearchId}';
      		if(result != null){
      			alert($(ClientSearchId.userId));
      		}
           }
   </script>
</body>
</html>



