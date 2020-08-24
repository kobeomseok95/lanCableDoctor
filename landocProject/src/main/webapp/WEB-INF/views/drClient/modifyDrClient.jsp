<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String result1 = (String)request.getParameter("result1");
	String searchFile3 = (String)request.getParameter("searchFile3");
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>의사 회원정보</title>
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
	height:400px;
}
/* .tableForm td{border-bottom: 1px solid black; border-top: 1px solid black; } */
.title {
	background-color: #e9e9e9;
	width: 200px;
	border-bottom: 1px solid lightgray;
	border-top: 1px solid lightgray;
	text-align:center;
}

.title1 {
	width: 400px !important;
	border-top: 1px solid lightgray;
}

.modibtn {
	width: 400px;
	height: 55px;
	border-radius: 5px;
	background-color: #007ee5;
	color: white;
	font-size: 25px;
	border: 0px;
	height: 60px;
	padding-top: 10px;
	text-align:center;
	
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
	border-bottom: 1px solid lightgray;
	border-top: 1px solid lightgray;
}

#subBtn {
	background-color: #007ee5;
	border-radius: 5px;
	border: 0px;
	color: white;
	height:40px;
	width: 120px;
	padding-top:6px;
	display:inline-block;
}

#noBtn {
	background-color: #e9e9e9;
	border-radius: 5px;
	border: 0px;
	height: 40px;
	color:	black;
	width: 120px;
	padding-top:6px;
	display:inline-block;
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
				<h4 style="float: left; font-size:30px;">나의 회원 정보</h4>
			</div>
			<form  action="updateDrClient.do?drNo=${loginDrClient2.drNo }" method="post" enctype="multipart/form-data" id="modi">
				<div class="myTable">
					<table class="tableForm">

						<tr>
						<c:if test="${loginDrClient2.proRename != null }">
							<td rowspan="6" class="title1"><img id="imagePreview1"
								style="width: 400px; height: 400px;" src="/projectFiles/${loginDrClient2.proRename }"></td>
						</c:if>
						<c:if test="${loginDrClient2.proRename == null }">
							<td rowspan="6" class="title1"><img id="imagePreview1"
								style="width: 400px; height: 400px;" src="/projectFiles/profile.png"></td>
						</c:if>
							<td class="title">아이디</td>
							<td class="modiInput"><input class="modiBox" type="text" name="userId"
								value="${loginDrClient2.userId }" readonly></td>
						</tr>
						<tr>
							<td class="title">이름</td>
							<td class="modiInput"><input class="modiBox" type="text"
								value="${loginDrClient2.userName }" readonly name="userName"></td>
						</tr>
						<tr>
							<td class="title">병원이름</td>
							<td class="modiInput"><input class="modiBox" type="text"
								value="${loginDrClient2.hpName }" readonly name="hpName"></td>
						</tr>
						<tr>
							<td class="title">주분야</td>
							<td class="modiInput"><input class="modiBox" type="text"
								value="${loginDrClient2.hpCateName }" readonly name="hpCateName"></td>
						</tr>
						<tr>
							<td class="title">이메일</td>
							<td class="modiInput"><input class="modiBox" type="text" name="email" id="email" required="required"
								value="${loginDrClient2.email }"></td>
						</tr>
						<tr>
							<td class="title">전화번호</td>
							<td class="modiInput"><input class="modiBox" type="text" name="phone" id="phone" required="required"
								value="${loginDrClient2.phone }"></td>
						</tr>
						<tr>
							<td><label for="ex_file" class="modibtn">프로필 수정</label> <input
								type="file" id="ex_file" name="profile"></td>
							<td class="title">생년월일</td>
							<td class="modiInput"><input class="modiBox" type="text" name="birth" id="birth" required="required"
								value="${loginDrClient2.birth }"></td>
						</tr>
					</table>
					<div class="btn">
						<!-- <input id="subBtn" type="submit" value="병원수정하기">  -->
						<c:url var="DrClientHpUpdateView" value="DrClientHpUpdateView.do">
				 			<c:param name="drNo" value="${loginDrClient2.drNo }"/>
				 			<%-- <c:param name="hpNo" value="${loginDrClient2.hpNo }"/> --%>
				 		</c:url>
						<span style="color:lightgrey; margin-right:10px">(이직하신 경우 or 미승인 시)</span><a id="subBtn" href="${DrClientHpUpdateView }">병원 수정하기</a>
						<c:url var="DrClientDelete" value="DrClientDelete.do">
				 			<c:param name="drNo" value="${loginDrClient2.drNo }"/>
				 			<c:param name="status" value="${loginDrClient2.status }"/>
				 		</c:url>
						<a id="noBtn" href="${DrClientDelete }">탈퇴하기</a>
					</div>
					<div style="text-align: center; padding-top: 100px;">
						<button value="수정하기"
							style="width: 400px; background-color: #007ee5; color: white; border-radius: 5px; border: 0px; height: 50px;" onclick="validate();">수정하기</button>
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
		<%if(searchFile3 != null){%>
		alert("병원 수정이 완료되었습니다.");
	
	<%}%>
		
	 function validate(){
			
         var value1 = $("#nickName").val();
         var reg1 = /^[a-zA-Z0-9가-힣ㄱ-ㅎ]{4,20}$/;
         var value2 = $("#phone").val();
         var reg2 = /^[0-9]{11}$/;
         var value3 = $("#email").val();
         var reg3 = /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/;
         var value4 = $("#birth").val();
         var reg4 = /^[0-9]{6}$/;
         
         if(!reg1.test(value1)){
             alert("영문자와 숫자로 4글자 이상 20글자 이하여야 합니다.");
             $("#nickName").focus().val('');
             return false;
         }else if(!reg2.test(value2)){
             alert("-를 제외한 숫자 11개");
             $("#phone").focus().val('');
             return false;
         }else if(!reg3.test(value3)){
             alert("이메일 형식으로 작성해주세요");
             $("#email").focus().val('');
             return false;
         }else if(!reg4.test(value4)){
             alert("주민번호 6자리");
             $("#birth").focus().val('');
             return false;
         }else{
        	 $("#modi").submit();
         }
     
         
 
        
  
         
         
  
}
	</script>
	
	
</body>


</html>