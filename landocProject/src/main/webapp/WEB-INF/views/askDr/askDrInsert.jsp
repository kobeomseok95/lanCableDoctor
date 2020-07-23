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
	<link href="<%=request.getContextPath()%>/resources/img/favicon.ico" rel="shortcut icon" />
	
	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap" rel="stylesheet">
	<!-- Stylesheets -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css" />
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

	<!-- insertAskDoctor -->
	<section class="playlist-section">
		<!--class="playlist-section spad"-->
		<div class="container">
			<h2 class="mb-5">의사에게 물어보기</h2>
			<form class="form-horizontal" action="#" method="post">
				<div class="form-group form-inline">
					<label for="category" class="col-sm-3 control-label"> 진료과목
					</label> <select id="category" name="medicalSubject" class="form-control"
						required>
						<option value="">----------</option>
						<option value="1">가정의학과</option>
						<option value="2">내과</option>
						<option value="3">통증의학과</option>
						<option value="4">비뇨기과</option>
						<option value="5">산부인과</option>
						<option value="6">성형외과</option>
						<option value="7">소아과</option>
						<option value="8">신경과</option>
						<option value="9">신경외과</option>
						<option value="10">안과</option>
						<option value="11">영상의학과</option>
						<option value="12">외과</option>
						<option value="13">이비인후과</option>
						<option value="14">재활의학과</option>
						<option value="15">정신의학과</option>
						<option value="16">정형외과</option>
						<option value="17">치과</option>
						<option value="18">피부과</option>
						<option value="19">한의원</option>
					</select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<p style="color: #a82400">* 증상과 유사한 진료과목을 선택해주세요</p>
				</div>
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">제목</label> <input
						name="bTitle" type="text" class="form-control" style="width: 70%"
						required>
				</div>
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">신체정보</label>
					<p style="color: #a82400">* 키, 몸무게, 나이, 성별은 비공개 처리되며 반드시
						기재해주세요.</p>
				</div>
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">키</label> <input
						name="height" type="text" class="form-control" size="2" required>&nbsp;cm
				</div>
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">몸무게</label> <input
						name="weight" type="text" class="form-control" size="2" required>&nbsp;kg
				</div>
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">나이</label> <input
						name="height" type="text" class="form-control" size="1" required>&nbsp;세
				</div>
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">성별</label> <label
						class="radio-inline"> <input type="radio" name="male"
						value="male"> 남
					</label> &nbsp;&nbsp;&nbsp; <label class="radio-inline"> <input
						type="radio" name="male" value="female"> 여
					</label>
				</div>
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">복용중인 약 및 주의사항</label>
					<textarea class="form-control col-sm-9" style="max-width: 70%;"
						placeholder="복용중인 약 혹은 주의사항을 상세히 기재해 주세요. 해당 입력칸은 빈칸으로 제출하셔도 됩니다."></textarea>
				</div>
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">구체적인 증상</label>
					<textarea class="form-control col-sm-9" style="max-width: 70%;"
						rows="10" placeholder="증상을 구체적으로 작성해주세요."></textarea>
				</div>
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">증상 사진</label>
					<p style="color: #a82400">* 증상 사진은 게시글 작성자, 의사 선생님들 외에는 비공개
						처리되며, 최대 3장 업로드 가능합니다.</p>
				</div>
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">첨부파일</label> <input
						type="file" />
				</div>
				<div class="row mt-5">
					<div class="col-sm-4"></div>
					<div class="col-sm-4" style="text-align: center;">
						<button class="btn btn-default" type="submit">제출하기</button>
						&nbsp;
						<button class="btn btn-default" type="reset">목록으로</button>
					</div>
					<div class="col-sm-4"></div>
				</div>
			</form>
		</div>
	</section>
	<!-- insertAskDoctor end -->

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
