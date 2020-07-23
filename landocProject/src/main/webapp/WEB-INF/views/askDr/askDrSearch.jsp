<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>의사에게 물어봐 - 게시글 작성</title>
	<meta charset="UTF-8">
	<meta name="description" content="SolMusic HTML Template">
	<meta name="keywords" content="music, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->
	<link href="img/favicon.ico" rel="shortcut icon" />

	<!-- Favicon -->
	<link href="<%=request.getContextPath()%>/resources/img/favicon.ico" rel="shortcut icon" />
	
	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap" rel="stylesheet">
	<!-- Stylesheets -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" />
	<!-- font awesome cdn -->
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/slicknav.min.css" />
	
	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css" />


	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	<!-- Header section -->
	<%@ include file="../static/header.jsp"%>
	<!-- Header section end -->

	<!-- detailAskDr -->
	<section class="premium-section spad" style="padding-bottom: 30px;">
		<div class="container">
			<div class="row">	<!--'검색한 의사 성함' 선생님 검색 결과-->
				<div class="col-lg-4"></div>
				<div class="col-lg-4" style="text-align: center;">
					<h1 style="font-size: 25px; color:black;">'검색한' 선생님 검색 결과</h1>
				</div>
			</div>
			<br><br>

			 <div class="row">
				<form class="form form-inline" style="margin: 0 auto;">
					<input type="text" class="form-control form-control-lg" value="검색한">
					<button type="submit" class="btn btn-lg btn-primary" style="background-color:  #0071ce;">검색</button>
				</form>
			</div>

			<div class="row">

			</div>
			<br><br>

			<div class="row">
				<div class="col-lg-2"></div>
				<div class="col-lg-7">
					<div class="media">
						<div class="media-left">
							<a href="#">
								<img class="media-object rounded-circle searchDrImage" src="../images/car.jpg">
							</a>
						</div>
						&nbsp;&nbsp;&nbsp;
						<div class="media-body">
							<h3 class="media-heading">
								고범석 선생님
							</h3>
							<a href="#" style="color:#0071ce;">저승횡단열차 병원</a>
							<div class="media-object">
								<span>채택</span>
								<span class="count-no">12</span>
							</div>
							<div class="media-object">
								<span>좋아요</span>
								<span class="count-no">12</span>
							</div>
						</div>
						<div class="media-right">
							<div style="padding-top:40px">
								<h5>
									<a href="#" style="color:#0071ce;">
										<i class="far fa-address-card fa-3x"></i>	<!--얘는 프로필로 간다-->
									</a>
								</h5>
							</div>
						</div>
					</div><br><br>
					<div class="media">
						<div class="media-left">
							<a href="#">
								<img class="media-object rounded-circle searchDrImage" src="../images/car.jpg">
							</a>
						</div>
						&nbsp;&nbsp;&nbsp;
						<div class="media-body">
							<h3 class="media-heading">
								고범석 선생님
							</h3>
							<a href="#" style="color:#0071ce;">저승횡단열차 병원</a>
							<div class="media-object">
								<span>채택</span>
								<span class="count-no">12</span>
							</div>
							<div class="media-object">
								<span>좋아요</span>
								<span class="count-no">12</span>
							</div>
						</div>
						<div class="media-right">
							<div style="padding-top:40px">
								<h5>
									<a href="#" style="color:#0071ce;">
										<i class="far fa-address-card fa-3x"></i>	<!--얘는 프로필로 간다-->
									</a>
								</h5>
							</div>
						</div>
					</div><br><br>
					<div class="media">
						<div class="media-left">
							<a href="#">
								<img class="media-object rounded-circle searchDrImage" src="../images/car.jpg">
							</a>
						</div>
						&nbsp;&nbsp;&nbsp;
						<div class="media-body">
							<h3 class="media-heading">
								고범석 선생님
							</h3>
							<a href="#" style="color:#0071ce;">저승횡단열차 병원</a>
							<div class="media-object">
								<span>채택</span>
								<span class="count-no">12</span>
							</div>
							<div class="media-object">
								<span>좋아요</span>
								<span class="count-no">12</span>
							</div>
						</div>
						<div class="media-right">
							<div style="padding-top:40px">
								<h5>
									<a href="#" style="color:#0071ce;">
										<i class="far fa-address-card fa-3x"></i>	<!--얘는 프로필로 간다-->
									</a>
								</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- detailAskDoctor end -->

	<!-- Footer section -->
	<%@ include file="../static/footer.jsp"%>
	<!-- Footer section end -->
	<!--====== Javascripts & Jquery ======-->
	<script src="http://code.jquery.com/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/jquery.slicknav.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/mixitup.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>
</body>

</html>