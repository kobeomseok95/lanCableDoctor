<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<title>의사에게 물어봐 - 상세게시글</title>
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

	<!-- detailAskDr -->
	<section class="my-5">
		<div class="container">
			<div class="form-group form-inline">
				<label class="col-lg-5">	<!--control-label-->
					&nbsp;&nbsp;
					<a href="askDr.do">의사에게 물어봐 > </a>
					&nbsp;&nbsp;
					<a href="javascript:history.back();">${subject }</a> 
				</label>
			</div>

			<br>
			<div class="form-group form-inline">
				<label class="col-lg-3 col-sm-3 control-label">제목</label>
				<div class="col-lg-9 col-sm-9 control-label">${askDrBoardDetail.bTitle }</div>
			</div>
			<div class="form-group form-inline">
				<label class="col-lg-3 col-sm-3 control-label">작성자</label>
				<div class="col-lg-9 col-sm-9 control-label">${askDrBoardDetail.nickname }</div>
			</div>
			<div class="form-group form-inline">
				<label class="col-lg-3 col-sm-3 control-label">신체정보</label>
			</div>
			<div class="form-group form-inline">
				<label class="col-lg-3 col-sm-3 control-label">키</label>
				<div class="col-lg-9 col-sm-9 control-label">${askDrBoardDetail.height }</div>
			</div>
			<div class="form-group form-inline">
				<label class="col-lg-3 col-sm-3 control-label">몸무게</label>
				<div class="col-lg-9 col-sm-9 control-label">${askDrBoardDetail.weight }</div>
			</div>
			<div class="form-group form-inline">
				<label class="col-lg-3 col-sm-3 control-label">나이</label>
				<div class="col-lg-9 col-sm-9 control-label">${askDrBoardDetail.age } 세</div>
			</div>
			<div class="form-group form-inline">
				<label class="col-lg-3 col-sm-3 control-label">성별</label>
				<div class="col-lg-9 col-sm-9 control-label">${askDrBoardDetail.gender }</div>
			</div>
			<div class="form-group form-inline">
				<label class="col-lg-3 col-sm-3 control-label">복용중인 약 및 주의사항</label>
				<div class="col-lg-9 col-sm-9 control-label">${askDrBoardDetail.caution }</div>
			</div>
			<div class="form-group form-inline">
				<label class="col-lg-3 col-sm-3 control-label">구체적인 증상</label>
				<div class="col-lg-9 col-sm-9 control-label">
					${askDrBoardDetail.symptoms }
				</div>
			</div>
			<div class="form-group form-inline">
				<label class="col-lg-3 col-sm-3 control-label"></label>
				<div class="col-lg-9 col-sm-9 control-label my-3" align="right">
					<button class="btn btn-sm" style="background-color: #0071ce; color:white;">수정하기</button>
					&nbsp;
					<button class="btn btn-sm" style="background-color: #0071ce; color:white;">삭제하기</button>
					&nbsp;
					<button class="btn btn-sm" style="background-color: #0071ce; color:white;">채택하기</button>
				</div>
			</div>	
			
			<div class="form-group form-inline">
				<label class="col-lg-4" style="font-size: 25px; color:black;">선생님들의 의견 (??)</label>
				<!--?? = 댓글수-->
			</div>
			<div class="comment">
				<div class="form-group form-inline">
					<div class="col-lg-12 col-sm-12 control-label">
						<table class="table">
							<thead>
								<tr>
									<th colspan="2" style="width: 23%">선생님</th>
									<th style="width: 44%">내용</th>
									<th style="width: 15%">작성날짜</th>
									<th style="width: 18%">채택상태</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<img class="rounded-circle" src="../images/car.jpg">
									</td>
									<td>
										<div data-toggle="popover" data-html="true" title="선생님 정보" data-content="<a href='#'>프로필</a> <br> <a href='#'>여기는 병원이름</a>">
											고읍석
										</div>
									</td>
									<td>코로나보다 강한 고로나 조심하세요코로나보다 강한 고로나 조심하세요코로나보다 강한 고로나 조심하세요코로나보다 강한 고로나 조심하세요</td>
									<td>2020-07-03</td>
									<td>채택대기</td>
								</tr>
								<!-- 위의 tr은 의사가 로그인 한 경우 밑에는 작성자가 로그인 한 경우 -->
								<tr>
									<td>
										<img class="rounded-circle" src="../images/car.jpg">
									</td>
									<td>
										<div data-toggle="popover" data-html="true" title="선생님 정보" data-content="<a href='#'>프로필</a> <br> <a href='#'>여기는 병원이름</a>">
											고읍석
										</div>
									</td>
									<td>역시 코로나 보단 메로나!</td>
									<td>2020-07-03</td>
									<td><input type="radio"></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="form-group form-inline">
					<!--login-->
					<div class="col-lg-12 col-sm-12 control-label">
						<form action="#">
							<textarea rows="2" style="width: 100%;"></textarea>
							<div align="right">
								<button class="btn btn-sm" type="submit"
									style="background-color: #0071ce; color:white;">작성하기</button>
							</div>
						</form>
					</div>
				</div>
					<!-- not login -->
				<div class="form-group form-inline">
					<!--로그인을 했을 경우-->
					<div class="col-lg-12 col-sm-12">
						<div align="center">
							<a href="#">로그인</a>이&nbsp; 필요합니다.
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
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/jquery.slicknav.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/mixitup.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>
	<script>
		$(function(){
			$("[data-toggle='popover']").popover();
		});
	</script>
</body>

</html>