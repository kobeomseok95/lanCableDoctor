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
			<form class="form-horizontal" action="askDrBoardUpdate.do" method="post">
				<input name="bNo" type="hidden" value="${askDrBoardUpdateDetail.bNo }" />
				<div class="form-group form-inline">
					<label for="category" class="col-sm-3 control-label"> 진료과목 </label> 
					<!-- String categoryNo에서 값 배정해주기 -->
					<select id="category" name="categoryNo" class="form-control" required>
						<option value="122" 
						<c:if test="${askDrBoardUpdateDetail.categoryNo eq '122'}">selected</c:if>
						>가정의학과</option>
						<option value="101" 
						<c:if test="${askDrBoardUpdateDetail.categoryNo eq '101'}">selected</c:if>
						>내과
						<option value="116" 
						<c:if test="${askDrBoardUpdateDetail.categoryNo eq '116'}">selected</c:if>
						>통증의학과</option>
						<option value="115" 
						<c:if test="${askDrBoardUpdateDetail.categoryNo eq '115'}">selected</c:if>
						>비뇨기과</option>
						<option value="110" 
						<c:if test="${askDrBoardUpdateDetail.categoryNo eq '110'}">selected</c:if>
						>산부인과</option>
						<option value="108" 
						<c:if test="${askDrBoardUpdateDetail.categoryNo eq '108'}">selected</c:if>
						>성형외과</option>
						<option value="111" 
						<c:if test="${askDrBoardUpdateDetail.categoryNo eq '111'}">selected</c:if>
						>소아과</option>
						<option value="102" 
						<c:if test="${askDrBoardUpdateDetail.categoryNo eq '102'}">selected</c:if>
						>신경과</option>
						<option value="106" 
						<c:if test="${askDrBoardUpdateDetail.categoryNo eq '106'}">selected</c:if>
						>신경외과</option>
						<option value="112" 
						<c:if test="${askDrBoardUpdateDetail.categoryNo eq '112'}">selected</c:if>
						>안과</option>
						<option value="109" 
						<c:if test="${askDrBoardUpdateDetail.categoryNo eq '109'}">selected</c:if>
						>영상의학과</option>
						<option value="104" 
						<c:if test="${askDrBoardUpdateDetail.categoryNo eq '104'}">selected</c:if>
						>외과</option>
						<option value="113" 
						<c:if test="${askDrBoardUpdateDetail.categoryNo eq '113'}">selected</c:if>
						>이비인후과</option>
						<option value="120" 
						<c:if test="${askDrBoardUpdateDetail.categoryNo eq '120'}">selected</c:if>
						>재활의학과</option>
						<option value="103" 
						<c:if test="${askDrBoardUpdateDetail.categoryNo eq '103'}">selected</c:if>
						>정신의학과</option>
						<option value="105" 
						<c:if test="${askDrBoardUpdateDetail.categoryNo eq '105'}">selected</c:if>
						>정형외과</option>
						<option value="400" 
						<c:if test="${askDrBoardUpdateDetail.categoryNo eq '400'}">selected</c:if>
						>치과</option>
						<option value="114" 
						<c:if test="${askDrBoardUpdateDetail.categoryNo eq '114'}">selected</c:if>
						>피부과</option>
						<option value="300" 
						<c:if test="${askDrBoardUpdateDetail.categoryNo eq '300'}">selected</c:if>
						>한의원</option>
					</select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<p style="color: #a82400">* 증상과 유사한 진료과목을 선택해주세요</p>
				</div>
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">제목</label> 
					<input value="${askDrBoardUpdateDetail.bTitle}"
					name="bTitle" type="text" class="form-control" style="width: 70%" required />
				</div>
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">신체정보</label>
					<p style="color: #a82400">* 키, 몸무게, 나이, 성별은 비공개 처리되며 반드시 기재해주세요.</p>
				</div>
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">키</label> 
					<input value="${askDrBoardUpdateDetail.height}"
					name="height" type="text" class="form-control" size="2" required />&nbsp;cm
				</div>
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">몸무게</label> 
					<input value="${askDrBoardUpdateDetail.weight}"
					name="weight" type="text" class="form-control" size="2" required />&nbsp;kg
				</div>
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">나이</label> 
					<input value="${askDrBoardUpdateDetail.age}"
					name="age" type="text" class="form-control" size="1" required />&nbsp;세
				</div>
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">성별</label> 
					<label class="radio-inline"> 
						<input type="radio" name="gender" value="M" 
						<c:if test="${askDrBoardUpdateDetail.gender eq 'M'}">
							checked
						</c:if>
						/> 남
					</label> &nbsp;&nbsp;&nbsp; 
					<label class="radio-inline"> 
						<input type="radio" name="gender" value="F" 
						<c:if test="${askDrBoardUpdateDetail.gender eq 'F'}">
							checked
						</c:if>
						/> 여
					</label>
				</div>
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">복용중인 약 및 주의사항</label>
					<textarea name="caution"
						class="form-control col-sm-9" 
						style="max-width: 70%;"
						placeholder="복용중인 약 혹은 주의사항을 상세히 기재해 주세요. 해당 입력칸은 빈칸으로 제출하셔도 됩니다.">${askDrBoardUpdateDetail.caution}</textarea>
				</div>
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">구체적인 증상</label>
					<textarea 	name="symptoms"
						class="form-control col-sm-9" 
						style="max-width: 70%;"
						rows="10" placeholder="증상을 구체적으로 작성해주세요.">${askDrBoardUpdateDetail.symptoms}</textarea>
				</div>
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">증상 사진</label>
					<p style="color: #a82400">* 증상 사진은 게시글 작성자, 의사 선생님들 외에는 비공개
						처리되며, 최대 3장 업로드 가능합니다.</p>
				</div>
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">첨부파일</label> 
					<input type="file" />
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
