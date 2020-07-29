<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String result1 = (String)request.getParameter("result1");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>일반 회원정보</title>
<meta charset="UTF-8">
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


<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   <![endif]-->

<style>
.container {
	margin-top: 80px;
	margin-bottom: 80px;
	text-align: center;
}

.titleName {
	padding-bottom: 80px;
}

.myTable {
	width: 100%;
}

.tableForm {
	width: 100%;
}
/* .tableForm td{border-bottom: 1px solid black; border-top: 1px solid black; } */
.title {
	background-color: lightgray;
	width: 200px;
	border-bottom: 1px solid black;
	border-top: 1px solid black;
}

.title1 {
	width: 400px;
	border-top: 1px solid black;
}

.modibtn {
	width: 400px;
	height: 65px;
	border-radius: 5px;
	background-color: #007ee5;
	color: white;
	font-size: 25px;
	border: 0px;
	padding-top: 12px;
}

.btn {
	padding-top: 10px;
	float: right;
	padding-right: 0px;
}

.modiBox {
	width: 80%;
	height: 50px;
	border: 0px;
}

.modiInput {
	border-bottom: 1px solid black;
	border-top: 1px solid black;
}

#noBtn {
	background-color: lightgray;
	border-radius: 3px;
	border: 0px;
	height: 30px;
	width: 110px;
	display: block;
	padding-top:2px;
}

input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}
 a { text-decoration:none; color:black } 
 a:hover { text-decoration:none; color:black } 
</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
	<link rel="stylesheet" type="text/css"
		href="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/customer_web/style.css">
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<%@ include file="../static/header.jsp"%>

	<div class="container">
		<div class="p-4" style="width: 1000px; display: inline-block;">
			<div class="titleName">
				<h4 style="float: left;">나의 회원 정보</h4>
			</div>
			<form action="updateClient.do?cNo=${loginClient2.cNo }" method="post" enctype="multipart/form-data">
				<div class="myTable">
					<table class="tableForm">

						<tr>
							<td rowspan="4" class="title1"><img id="imagePreview1"
								style="width: 400px; height: 300px;" src="/projectFiles/${loginClient2.proRename }"></td> 
							<td class="title">아이디</td>
							<td class="modiInput"><input class="modiBox" name="userId" type="text" required="required"
								value="${loginClient2.userId }" readonly></td>
						</tr>
						<tr>
							<td class="title">닉네임</td>
							<td class="modiInput"><input class="modiBox" name="nickName" type="text" id="nickName" required="required"
								value="${loginClient2.nickName }"></td>
						</tr>
						<tr>
							<td class="title">이메일</td> 
							<td class="modiInput"><input class="modiBox" name="email" type="text" id="email" required="required"
								value="${loginClient2.email }"></td> 
						</tr>
						<tr>
							<td class="title">전화번호</td>
							<td class="modiInput"><input class="modiBox" name="phone" type="text" id="phone" required="required"
								value="${loginClient2.phone }"></td>
						</tr>
						<tr>
							<td><label for="ex_file" class="modibtn">프로필 수정</label> <input
								type="file" id="ex_file" name="profile"></td>
							<td class="title">생년월일</td>
							<td class="modiInput"><input class="modiBox" name="birth" type="text" id="birth" required="required"
								value="${loginClient2.birth }"></td>
						</tr>
					</table>
					<div class="btn">
						<c:url var="ClientDelete" value="ClientDelete.do">
				 			<c:param name="cNo" value="${loginClient2.cNo }"/>
				 			<c:param name="status" value="${loginClient2.status }"/>
				 		</c:url>
						<a id="noBtn" href="${ClientDelete }">탈퇴하기</a>
					</div>
					<div style="text-align: center; padding-top: 100px;">
						<button value="수정하기"
							style="width: 400px; background-color: #007ee5; color: white; border-radius: 5px; border: 0px; height: 50px;">수정하기</button>
					</div>
				</div>
			</form>
		</div>
	</div>


	<%@ include file="../static/footer.jsp"%>
	<!--====== Javascripts & Jquery ======-->
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery-3.2.1.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery.slicknav.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/mixitup.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>

	<script>

	    function readUploadImage1(inputObject){
	        if(inputObject.files && inputObject.files[0]){
	           if(!(/image/i).test(inputObject.files[0].type)){
	              alert("이미지 파일을 선택해 주세요");
	              return false;
	           }
	           
	           var reader = new FileReader();
	           
	           reader.onload = function(e){
	              $("#imagePreview1").attr("src", e.target.result);
	           }
	           reader.readAsDataURL(inputObject.files[0]);
	        }        
	   }
	             
	   $("#ex_file").change(function(){
	      readUploadImage1(this);
	   }) 
	</script>
	
	<script>
		<%if(result1 != null){%>
			alert("회원정보 수정이 완료되었습니다.");
		
		<%}%>
		
		 $("#nickName").change(function(){
             var value = $("#nickName").val();
             var reg = /^[a-zA-Z0-9가-힣ㄱ-ㅎ]{4,20}$/;
             if(!reg.test(value)){
                 alert("영문자와 숫자로 4글자 이상 20글자 이하여야 합니다.");
                 $("#nickName").focus().val('');
             }
         });
		 
		 $("#phone").change(function(){
             var value = $("#phone").val();
             var reg = /^[0-9]{11}$/;
             if(!reg.test(value)){
                 alert("-를 제외한 숫자 11개");
                 $("#phone").focus().val('');
             }
         });
		 
		 $("#email").change(function(){
             var value = $("#email").val();
             var reg = /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/;
             if(!reg.test(value)){
                 alert("이메일 형식으로 작성해주세요");
                 $("#email").focus().val('');
             }
         });
	
		 $("#birth").change(function(){
             var value = $("#birth").val();
             var reg = /^[0-9]{6}$/;
             if(!reg.test(value)){
                 alert("주민번호 6자리");
                 $("#birth").focus().val('');
             }
         });
	</script>
	
</body>


</html>