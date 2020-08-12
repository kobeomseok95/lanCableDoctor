<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.kh.landocProject.payment.model.vo.MemberPay" %>
<%@ page import="com.kh.landocProject.payment.model.vo.PayProduct" %>
<%@ page import="java.text.DecimalFormat" %>
<%

	PayProduct pro = (PayProduct)request.getAttribute("selectPro");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>결제</title>
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
  .resultBtn{width: 400px; height: 40px; border: 0px; border-radius: 5px; background-color: #007ee5; color: white;}
        .resultDiv{text-align:center; padding-bottom: 15px;}
        .resultDiv1{text-align:center; padding-bottom: 15px; padding-top: 20px;}
		.resultDiv2{text-align:center; padding-bottom: 110px;}
		.logoDiv{background-color: #007ee5; width: 100px; height: 100px; margin: auto; border-radius: 7px;}
		.logoDiv .logo{width: 100px; height: 100px;}
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

	<div style="padding-top: 100px;">
		<div class="logoDiv"> 
			<img class="logo" src="<%=request.getContextPath()%>/resources/login_image/KakaoTalk_20200702_150917241.png">
		</div>
	</div>
   
    <div class="d-flex justify-content-center mt-1" style="padding-top: 20px;">
        <div class="content-title1 mt-5 mb-5" style=" text-align: center;">
            <p class="m-0" style="font-size: 52px; color: rgba(0, 0, 0, 0.89);">결제가 완료되었습니다.</p>
            <p class="m-0" style="font-size: 52px; color: rgba(0, 0, 0, 0.89);">이용해 주셔서 감사합니다.</p>
        </div>
	</div>
    
    <div class="d-flex justify-content-center mb-3 content-box-text1" style="font-weight:300; text-align: center;">
        <div>
			<p class="m-0">상품에 대한 리뷰를 작성해 주시면 포인트가</p>
			<p class="m-0">지급되며 저희 랜선닥터에 큰 도움이 됩니다.</p>
            <p class="m-0">환자들이 안심하고 의사를 찾을 수 있는 환경을 만들어 가겠습니다 :)</p>
        </div>
	</div>

    <div class="resultDiv1">
        <button type="button" class="resultBtn">메인으로</button>
	</div>
	<div class="resultDiv">
        <button type="button" class="resultBtn">마이페이지</button>
	</div>
	<div class="resultDiv2">
        <button type="button" class="resultBtn">상품 더보기</button>
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
	
	</script>
	
	
</html>