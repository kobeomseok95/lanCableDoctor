<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    .p{text-align: center; padding-top: 30px; padding-bottom: 40px;}
	.pa{border-bottom: 1px solid black; border-top: 1px solid black; height: 130px; width: 600px;}
	.pay{padding-top: 15px; width: 600px;}
	.payD{width: 150px;display: inline-block;}
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
		<div class="p-4" style="width: 1200px; margin-bottom: 50px;">
			<div class="p">
				<h3>주문/결제</h3>
			</div>
			<div>
				<span>제품정보</span>
				<div class="pa">
					<div class="pay">
						<div class="payD">
							<img src="../../KakaoTalk_20200702_150917241.png" width="100px" height="100px" style="margin-left: 10px; border: 1px solid black;">
						</div>
						<div style="display: inline-block;">
							<span>파이토 오메가</span> <span style="margin-left: 20px;">58,000</span> <span style="margin-left: 20px;">x</span> <span style="margin-left: 20px;">1 </span> <span style="margin-left: 20px;">=</span> <span style="margin-left: 20px;">58,000원</span>
						</div>
					</div>
				</div>
				<form>	
					<div style="margin-top: 30px; background-color: #e5f2fc; width: 600px; height: 530px; border-radius: 7px; display: inline-block; position: relative;">
						<div style="padding-left: 20px; padding-top: 20px; width: 600px;">
							<h4 style="color: black;">주문자 정보</h4>
						</div>
						<div style="border: 1px solid #e5f2fc; margin-top: 25px; margin-left: 20px; width: 560px; border-radius: 7px; background-color: white;">
							<div style="border-bottom: 1px solid lightgray; margin: 10px; margin-top: 20px; height: 50px;">
								<label>주문자명</label><input type="text" value="" style="float: right; margin-right: 10px; width: 400px; height:35px; border: 1px solid lightgray;">
							</div>
							<div style="border-bottom: 1px solid lightgray; margin: 10px; margin-top: 20px; height: 50px;">
								<label>연락처</label><input type="text" style="float: right; margin-right: 10px; width: 400px; height:35px; border: 1px solid lightgray;">
							</div>
							<div style="border-bottom: 1px solid lightgray; margin: 10px; margin-top: 20px; height: 50px;">
								<label>이메일</label><input type="text" style="float: right; margin-right: 10px; width: 400px; height:35px; border: 1px solid lightgray;">
							</div>
							<div style="border-bottom: 1px solid lightgray; margin: 10px; margin-top: 20px; height: 50px;">
								<label>우편번호</label><input type="text" name="post" value="" id="post" style="width: 250px; margin-left: 65px; height:35px; border: 1px solid lightgray;">
								<input type="button" value="검색" style="float: right; margin-right: 10px; width: 130px; height:35px ; color: black; background-color: #e5f2fc; border: 0px; border-radius: 3px;">
							</div>
							<div style="border-bottom: 1px solid lightgray; margin: 10px; margin-top: 20px; height: 50px;">
								<label>도로명 주소</label><input type="text" style="float: right; margin-right: 10px; width: 400px; height:35px; border: 1px solid lightgray;">
							</div>
							<div style="border-bottom: 1px solid lightgray; margin: 10px; margin-top: 20px; margin-bottom: 20px; height: 50px;">
								<label>상세 주소</label><input type="text" style="float: right; margin-right: 10px; width: 400px; height:35px; border: 1px solid lightgray;">
							</div>
						</div>
					</div>
					<div style="margin-left: 200px; margin-top: 30px; background-color: #e5f2fc; width: 400px; height: 530px; border-radius: 7px; display: inline-block; position: absolute; border: 1px solid white;" >
						<div style="border: 1px solid white; background-color: white; margin: 10px; height: 300px; border-radius: 7px;">
							<div style="margin-left: 10px; margin-top: 10px; width: 180px; display: inline-block; position: relative;">
								<h6>총 주문금액</h6><br>
								<span>할인금액</span><br><br>
								<span>포인트</span><br>
								<span style="font-size: 10px;">(포인트는 5000점부터 사용가능)</span><br>
								<hr>
								<br>
								<h6>총 결제금액</h6><br>
								<h6>적립금</h6>
							</div>
							<div style="margin-right: 10px; margin-top: 10px; width: 180px; display: inline-block; position: absolute; text-align: right;">
								<label>50,000</label><br>
								<label>10,000</label><br><br>
								<input type="text" style="width: 100px; height: 20px;"><span>원</span><br><br>
								<hr>
								<br>
								<h6>총 결제금액</h6><br>
								<h6>적립금</h6>
							</div>
						</div>
						<div style="margin: 20px; margin-top: 30px;">
							<h5>결제 수단</h5>
							<hr>
						</div>
						<div style="margin-left: 20px; margin-right: 20px;">
							<label style="margin-right: 100px;"><input type="radio" name="pay" style="margin-right: 10px;" disabled>신용카드</label>
							<label><input type="radio" name="pay" style="margin-right: 10px;" disabled>가상계좌</label>
							<label style="margin-right: 52px;"><input name="pay" type="radio" style="margin-right: 10px;" disabled>실시간계좌이체</label>
							<label><input type="radio" name="pay" style="margin-right: 10px;" checked>카카오페이</label>
						</div>
						<div style="margin: 10px; text-align: center;">
							<input type="submit" value="결제" style="width: 100px; height: 40px; margin-right: 50px; border-radius: 5px; border: 0px; background-color:#007ee5; color: white;">
							<input type="button" value="취소" style="width: 100px; height: 40px; border-radius: 5px; border: 0px; background-color:#007ee5; color: white;">
						</div>
					</div>
				</form>
			</div>
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

	
	

	
</body>


</html>