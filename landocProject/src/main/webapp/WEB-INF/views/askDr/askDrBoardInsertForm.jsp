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
<style>
	#fileUpload {
		background-color: #0071ce;
	}
	
	#fileUpload > h3 {
		color: white;
	}
</style>
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
			<form class="form-horizontal" action="askDrBoardInsert.do" method="post" enctype="multipart/form-data">
				<div class="form-group form-inline">
					<label for="category" class="col-sm-3 control-label"> 진료과목 </label> 
					<select id="category" name="categoryNo" class="form-control" required>
						<option value="122">가정의학과</option>
						<option value="101">내과</option>
						<option value="116">통증의학과</option>
						<option value="115">비뇨기과</option>
						<option value="110">산부인과</option>
						<option value="108">성형외과</option>
						<option value="111">소아과</option>
						<option value="102">신경과</option>
						<option value="106">신경외과</option>
						<option value="112">안과</option>
						<option value="109">영상의학과</option>
						<option value="104">외과</option>
						<option value="113">이비인후과</option>
						<option value="120">재활의학과</option>
						<option value="103">정신의학과</option>
						<option value="105">정형외과</option>
						<option value="400">치과</option>
						<option value="114">피부과</option>
						<option value="300">한의원</option>
					</select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<p style="color: #a82400">* 증상과 유사한 진료과목을 선택해주세요</p>
				</div>
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">제목</label> 
					<input name="bTitle" type="text" class="form-control" style="width: 70%" required>
				</div>
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">신체정보</label>
					<p style="color: #a82400">* 키, 몸무게, 나이, 성별은 비공개 처리되며 반드시 기재해주세요.</p>
				</div>
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">키</label> 
					<input name="height" type="text" class="form-control" size="2" required>&nbsp;cm
				</div>
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">몸무게</label> 
					<input name="weight" type="text" class="form-control" size="2" required>&nbsp;kg
				</div>
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">나이</label> 
					<input name="age" type="text" class="form-control" size="1" required>&nbsp;세
				</div>
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">성별</label> 
					<label class="radio-inline"> 
						<input type="radio" name="gender" value="M"> 남
					</label> &nbsp;&nbsp;&nbsp; <label class="radio-inline"> 
						<input type="radio" name="gender" value="F"> 여
					</label>
				</div>
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">복용중인 약 및 주의사항</label>
					<textarea name="caution"
						class="form-control col-sm-9" 
						style="max-width: 70%;"
						placeholder="복용중인 약 혹은 주의사항을 상세히 기재해 주세요. 해당 입력칸은 빈칸으로 제출하셔도 됩니다."></textarea>
				</div>
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">구체적인 증상</label>
					<textarea 	name="symptoms"
						class="form-control col-sm-9" 
						style="max-width: 70%;"
						rows="10" placeholder="증상을 구체적으로 작성해주세요."></textarea>
				</div>
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">증상 사진</label>
					<p style="color: #a82400">* 증상 사진은 게시글 작성자, 의사 선생님들 외에는 비공개
						처리되며, 최대 3장 업로드 가능합니다.</p>
				</div>
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">첨부사진</label>
					<button id="fileUpload" class="btn btn-sm" type="button">
						<h3>+</h3>
					</button>
					<input id="file" name="symptomPicture" type="file" multiple="multiple" style="display: none;" />
				</div>
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label"></label>
					<div id="preview"></div>
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
	<script>
		$(document).ready(function (e) {

			$("#fileUpload").on("click", function (e) {
				e.preventDefault();
				$("#file").click();
			});

			$("#file").change(function (e) {

				$('#preview').empty();

				var files = e.target.files;
				var arr = Array.prototype.slice.call(files);
				
				if(files.length >= 4){	//네장일 경우 안된다.
					alert("사진 파일은 세장까지만 등록 가능합니다.");
					$("#file").val("");
					return ;
				}
				else{
					for (var i = 0; i < files.length; i++) {
						if (!checkExtension(files[i].name, files[i].size)) {
							return false;
						}
					}
				}
				preview(arr);
			});//file change

			function checkExtension(fileName, fileSize) {

				var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
				var maxSize = 20971520;  //20MB

				if (fileSize >= maxSize) {
					alert('파일 사이즈 초과');
					$("input[type='file']").val("");  //파일 초기화
					return false;
				}

				if (regex.test(fileName)) {
					alert('업로드 불가능한 파일이 있습니다.');
					$("input[type='file']").val("");  //파일 초기화
					return false;
				}
				return true;
			}

			function preview(arr) {
				arr.forEach(function (f) {

					//파일명이 길면 파일명...으로 처리
					var fileName = f.name;
					if (fileName.length > 10) {
						fileName = fileName.substring(0, 7) + "...";
					}

					//div에 이미지 추가
					var str = '<div class="pr-3" style="display: inline">';

					//이미지 파일 미리보기
					if (f.type.match('image.*')) {
						var reader = new FileReader();
						reader.onload = function (e) {
							str += '<img src="' + e.target.result + '" style="width: 243px; height: 243px;" />';
							str += '</div>';
							$(str).appendTo('#preview');
						}
						reader.readAsDataURL(f);
					}
					else {
						str += '<img src="/resources/img/fileImg.png" title="' + f.name + '" style="width: 243px; height: 243px;" />';
						$(str).appendTo('#preview');
					}
				});//arr.forEach
			}
		});
	</script>
</body>
</html>
