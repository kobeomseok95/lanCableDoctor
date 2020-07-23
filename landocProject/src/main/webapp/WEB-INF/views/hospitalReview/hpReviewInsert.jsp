<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>SolMusic | HTML Template</title>
	<meta charset="UTF-8">
	<meta name="description" content="SolMusic HTML Template">
	<meta name="keywords" content="music, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- Favicon -->
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap" rel="stylesheet">
 
	<!-- Stylesheets -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css"/>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/slicknav.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css"/>
	
	<!--star rating-->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->


	<script src= 'http://code.jquery.com/jquery-latest.js'></script>

<style>
	.btn-file input[type=file] {
									top: 0;
									left: 0;
									min-width: 100%;
									min-height: 100%;
									text-align: right;
									opacity: 0;
									background: none repeat scroll 0 0 transparent;
									cursor: inherit;
									display: block;
									position: absolute;} 

	.btn-block{background-color: #007ee5; position: relative;}
	.checked {color: orange;}
	.starRating{width: 50%;}
	



/*-------------------------------------------------------------*/
body {
  background-color: lightblue;
}

.rating {
  text-align: center;
  /* margin-top: 120px; */
  position: relative;
  width: 50%;
  float: left;
}

.hidden {
  opacity: 0;
}

.star {
  display: inline-block;
  margin: 5px;
  font-size: 30px;
  color: whitesmoke;
  position: relative;
}
.star.animate {
  -webkit-animation: stretch-bounce .5s ease-in-out;
}
.star.hidden {
  opacity: 0;
}

.full:before {
  font-family: fontAwesome;
  display: inline-block;
  content: "\f005";
  position: relative;
  float: right;
  z-index: 2;
}

.half:before {
  font-family: fontAwesome;
  content: "\f089";
  position: absolute;
  float: left;
  z-index: 3;
}

.star-colour {
  color: #ffd700;
}

@-webkit-keyframes stretch-bounce {
  0% {
    -webkit-transform: scale(1);
  }
  25% {
    -webkit-transform: scale(1.5);
  }
  50% {
    -webkit-transform: scale(0.9);
  }
  75% {
    -webkit-transform: scale(1.2);
  }
  100% {
    -webkit-transform: scale(1);
  }
}
.selected:before {
  font-family: fontAwesome;
  display: inline-block;
  content: "\f005";
  position: absolute;
  top: 0;
  left: 0;
  -webkit-transform: scale(1);
  opacity: 1;
  z-index: 1;
}
.selected.pulse:before {
  -webkit-transform: scale(3);
  opacity: 0;
}
.selected.is-animated:before {
  transition: 1s ease-out;
}

.score {
  font-family: arial;
  font-size: 20px;
  color: green;
  margin-top: 20px;
  margin-left: 50px;
}

.score-rating {
  vertical-align: sup;
  top: -5px;
  position: relative;
  font-size: 150%;
}

.total {
  vertical-align: sub;
  top: 0px;
  position: relative;
  font-size: 100%;
}

.average {
  font-family: arial;
  font-size: 20px;
  color: indianred;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}
.average .score-average {
  padding-top: 30px;
}


.clickedHpList{
	backgroud-color:#7fbef2;
}
.listLine{
		backgroud:#7fbef2;

}


/*--------------------------------------------------------------*/	
</style>
</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	  <%@ include file="../static/header.jsp" %>
		
	
	<link rel="stylesheet" type="text/css" href="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/mdd_event/style.css">
	
	
	<!--병원 검색 모달 창-->
	<div id="hospitalSearchModal" class="modal fade" tabindex="-1" role="dialog" style="display: none;" aria-hidden="true">
	  <div class="modal-dialog w-50" role="document">
		<div class="modal-content">
		  <div class="modal-header p-4">
			<h5 class="modal-title">병원명 입력</h5>
			<button type="button" class="close pt-2 pr-3 pb-0 pl-0" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">×</span>
			</button>
		  </div>
		  <div class="modal-body p-4">
			  <div>
				<p style="font-size: 12px;color: #b00020;">
					<b style="color: #494949">다녀온 병원명을 검색하세요</b>
				</p>
			  </div>
			  <div id="hospital-search-form">
				  <div class="input-group mb-3" style="border: solid 2px #007ee5;">
					  <input type="text" id="search_hospital_name" name="search_hospital_name"class="form-control border-0" placeholder="병원이름을 입력하세요." aria-describedby="button-addon-hsearch">
					  <div class="input-group-append pl-2 pr-2" style="background-color: #007ee5">
						<button class="btn btn-mdd border-0 w-100" type="button" id="button-addon-hsearch" style="background-color: transparent; color: white;">검색</button>
					  </div>
				  </div>
			  </div>
			 
			 
	<script>
		// 병원 검색 모달창
		$(function() {
			// 병원 조회하기 버튼 클릭 => modal open.
			$('#open-hospital-search-modal').on('click', function(e) {
				e.preventDefault();
				$('#hospitalSearchModal').modal();
			});
			
			// 병원 검색 -> 검색결과 띄우기
			$("#button-addon-hsearch").on("click",function(){
				var hpName = $("#search_hospital_name").val();
				
				$.ajax({
					url:"searchHpName.do",
					data:{hpName:hpName},
					dataType:"json",
					success:function(data){
						$tableBody = $("#searchHpNameTb");
						$tableBody.html("");
						var $tr;
						var $hpName;
						var $hpAddress;
						var $hpPhone;
						
						if(data.length>0){	// 검색결과가 존재할 경우
							for(var i in data){
								$tr = $("<tr>").addClass("listLine");
								$hpName = $("<td>").text(data[i].hpName);
								$hpAddress = $("<td>").text(data[i].hpAddress);
								$hpPhone = $("<td>").text(data[i].hpPHone);
								
								$tr.append($hpName);
								$tr.append($hpAddress);
								$tr.append($hpPhone);
								$tableBody.append($tr);
							
							}
							
						}else{
							$tr = $("<tr>");
							$hpName = $("<td>").text("등록된 병원이 없습니다.");
							
							$tr.append($hpName);
							$tableBody.apppend($tr);
							
						}
						
					},
					error:function(request, status, errorData){
	                    alert("error code: " + request.status + "\n"
	                          +"message: " + request.responseText
	                          +"error: " + errorData);
	                 }
				})
			});
			
		});
		
		
		// 검색된 병원리스트 선택
		$("#searchHpNameTb tr").mouseenter(function(){
				/* $(this).addClass("clickedHpList"); */
			$(this).css({"background" : "black"});
			
			
			
			
		});
		
		
		$(".listLine td").click(function(){
			$(this).css({"background" : "black"});
		})
		
		
		
		
		
		
		
		
		
	</script>
			 
			  <div class="card border-0">
				  <div class="card-body p-0" style="border-top: solid 1px #007ee5;">
					  <div class="small-greybox p-2" style="font-size: 12px; border-bottom:solid 1px #007ee5;">
						  병원 검색결과 (검색결과 중 하나를 선택하세요)
					  </div>

					  <!--병원 검색 결과 나오는 부분-->
					  <div class="border-left-0 hospital-search-result-container">
						<div class="list-group" style="height: 300px;overflow-y: scroll;">
							
							<!--검색 결과 나오는 부분-->
							<table id="searchHpNameTb">
								<tr>
									<td></td>
									<td colspan="2"></td>
								</tr>
							</table>
						</div>
					  </div>
					  
					  <button id="hospital-search-save-btn" class="btn btn-mdd w-100 p-2 mt-3" style="color: #FFFFFF;background-color: #007ee5;">
						  선택완료
					  </button>
				  </div>
			  </div>
	
		  </div>
		</div>
	  </div>
	</div>
	
	
	<!--form 태그 시작-->
	<form id="register-submit-form" enctype="multipart/form-data">
		<input type="hidden" name="csrfmiddlewaretoken" value="7EYyK9n8kkbHp3Y3zYlR8e1LSwhuubipViDL0KoRy7LwZOtyK80JuVWhaIcpapZA">
		
		<div class="container-fluid mt-0 pt-5 pb-5" style="background-color: #e5f2fc;text-align: center">
			<div style="width: 1000px; display: inline-block">
				<!--병원 찾기-->
			<div class="summit-content-box mx-auto p-5 mt-4">
				<div class="row mb-5">
					<div class="col-sm-1">
						<div class="content-box-numbering align-middle mx-auto">1</div>
					</div>
					<div class="col-sm-11 content-box-title">
						다녀가신 병원이름을 입력하세요
					</div>
				</div>
				<div class="row">
					<div class="col-sm-10 offset-sm-1 pt-5 pl-0" style="border-bottom: solid 2px #9b9b9b;">
						<input type="hidden" id="hospital_id" name="hospital_id" value="">
						<input type="text" class="form-control border-0 pl-0" id="hospital_name" name="hospital_name" disabled="" placeholder="하단의 '병원 조회하기'버튼을 눌러 선택해주세요" style="background-color: transparent; font-size: 21px; font-weight: bold; color: #494949;">
					</div>
				</div>
				<div class="row">
				
					<button type="button" id="open-hospital-search-modal" class="col-sm-10 offset-sm-1 btn btn-blackcontent w-100 h-100 p-3 mt-4" style="font-size:18px; background-color: #007ee5; color: white;" data-toggle="modal" data-target="#hospitalSearchModal">
						병원 조회하기
					</button>
				</div>
				
			</div>
	

			<!--인증자료 업로드 부분(영수증 부분)-->
			<div class="summit-content-box mx-auto p-5 mt-4">
				<div class="row mb-5">
					<div class="col-sm-1">
						<div class="content-box-numbering align-middle mx-auto">2</div>
					</div>
					<div class="col-sm-11 content-box-title">
						진료인증 자료를 업로드해주세요!
					</div>
				</div>
				<div class="row">
					<div class="col-sm-10 offset-sm-1 p-0">
						<span><img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/redstar.svg" class="img-fluid" alt="Responsive image"></span>
						<b class="align-middle" style="font-size: 21px; letter-spacing: -0.7px;color: #b00020;">전체화면 캡쳐필수</b>
						<span><img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/redstar.svg" class="img-fluid" alt="Responsive image"></span>
						<b class="content-box-text1 align-middle">(병원명 + 회원 성명 포함)</b>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-10 offset-sm-1 p-0">
						<div class="card-deck mt-5">
							<div class="card">
								<div class="card-body">
									<ul class="list-group m-4 list-text text-left">
									  <li class="list-group-item border-0">
										  <div class="row">
											  <div class="col-sm-1 p-0">
												<img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/check.svg" class="img-fluid" alt="Responsive image">
											  </div>
											  <div class="col-sm-11" style="color: #494949;">
												카드 결제 문자
											  </div>
										  </div>
									  </li>
									  <li class="list-group-item border-0">
										  <div class="row">
											  <div class="col-sm-1 p-0">
												<img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/check.svg" class="img-fluid" alt="Responsive image">
											  </div>
											  <div class="col-sm-11" style="color: #494949;">
												  뱅킹 어플 / 인터넷 뱅킹
											  </div>
										  </div>
									  </li>
									  <li class="list-group-item border-0">
										  <div class="row">
											  <div class="col-sm-1 p-0">
												<img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/check.svg" class="img-fluid" alt="Responsive image">
											  </div>
											  <div class="col-sm-11" style="color: #494949;">
												  진료영수증 / 처방전 / 진단서
											  </div>
										  </div>
									  </li>
									  <li class="list-group-item border-0">
										  <div class="row">
											  <div class="col-sm-1 p-0">
												<img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/check.svg" class="img-fluid" alt="Responsive image">
											  </div>
											  <div class="col-sm-11" style="color: #494949;">
												  건강보험공단 / 홈택스 진료내역
											  </div>
										  </div>
									  </li>
									</ul>
								</div>
							</div>
							<div class="card">
								<div class="card-body" style="background-color: #f8f8f8;">
									<img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/receipt_example_content.svg" class="img-fluid w-100 h-100" alt="Responsive image">
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 업로드 된 파일 미리보기 부분-->
				<div class="row mt-4">
                    <div class="col-sm-10 offset-sm-1 p-0 pr-3">
                        <div class="file-input file-input-new">
						
						<!--파일 미리보기 -->
						
						
							<span id="remove" style="display: none;">X</span>
					
						<div class="file-preview" id="thumb-receipt">
						</div>
						
						<div class="clearfix"></div>
						
						<div tabindex="500" class="btn btn-blackcontent btn-block p-3 btn-file" style="background-color:#0071ce" id="test" >
						
							<span style="font-size: 18px; color: white;">인증자료 첨부하기</span>
							<input id="receipt_image" name="receipt_image" type="file" style="opacity: 0; " onchange="setThumbnail(event)">
						</div>
					
						<script> 
						function setThumbnail(event) { 
							var reader = new FileReader(); reader.onload = function(event) { 
								var img = document.createElement("img"); img.setAttribute("src", event.target.result);
								document.querySelector("div#thumb-receipt").appendChild(img); }; 
								reader.readAsDataURL(event.target.files[0]);
							

								if($("#thumb-receipt").find('img')){
										$("#remove").show();
									
									}
							
								}
								
								
						$(function(){
							$("#remove").on("click",function(){
								$("#thumb-receipt").html("");
								$(this).hide();
								});
						})

						</script>
						</div>
                    </div>
                </div>
			</div>



			
			<script>
			var starClicked = false;

			$(function() {

			$('.star').click(function() {

				$(this).children('.selected').addClass('is-animated');
				$(this).children('.selected').addClass('pulse');

				var target = this;

				setTimeout(function() {
				$(target).children('.selected').removeClass('is-animated');
				$(target).children('.selected').removeClass('pulse');
				}, 1000);

				starClicked = true;
			})

			$('.half').click(function() {
				if (starClicked == true) {
				setHalfStarState(this)
				}
				$(this).closest('.rating').find('.js-score').text($(this).data('value'));

				$(this).closest('.rating').data('vote', $(this).data('value'));
				calculateAverage()
				console.log(parseInt($(this).data('value')));

			})

			$('.full').click(function() {
				if (starClicked == true) {
				setFullStarState(this)
				}
				$(this).closest('.rating').find('.js-score').text($(this).data('value'));

				$(this).find('js-average').text(parseInt($(this).data('value')));

				$(this).closest('.rating').data('vote', $(this).data('value'));
				calculateAverage()

				console.log(parseInt($(this).data('value')));
			})

			$('.half').hover(function() {
				if (starClicked == false) {
				setHalfStarState(this)
				}

			})

			$('.full').hover(function() {
				if (starClicked == false) {
				setFullStarState(this)
				}
			})

			})

			function updateStarState(target) {
			$(target).parent().prevAll().addClass('animate');
			$(target).parent().prevAll().children().addClass('star-colour');

			$(target).parent().nextAll().removeClass('animate');
			$(target).parent().nextAll().children().removeClass('star-colour');
			}

			function setHalfStarState(target) {
			$(target).addClass('star-colour');
			$(target).siblings('.full').removeClass('star-colour');
			updateStarState(target)
			}

			function setFullStarState(target) {
			$(target).addClass('star-colour');
			$(target).parent().addClass('animate');
			$(target).siblings('.half').addClass('star-colour');

			updateStarState(target)
			}

			function calculateAverage() {
			var average = 0

			$('.rating').each(function() {
				average += $(this).data('vote')
			})

			$('.js-average').text((average/ $('.rating').length).toFixed(1))
			}


			</script>



			<!-------------------------------------------------------------------------------------------------->
			<div class="summit-content-box mx-auto p-5 mt-4">
				<div class="row mb-5">
					<div class="col-sm-1">
						<div class="content-box-numbering align-middle mx-auto">3</div>
					</div>
					<div class="col-sm-11 content-box-title">
						별점
						<b class="p-2" style="font-size: 24px;font-weight: 300;">'매우 그렇다'면 5점, '전혀 그렇지 않다'면 0점을 주세요!</b>
					</div>
				</div>
				<div class="row">
					
					<div class="col-sm-10 offset-sm-1 p-0">
						<ul class="list-group list-group-flush content-box-text1">
						  <li class="list-group-item pl-0 pr-0 pt-3">
							  <div class="row">
								  <div class="col-sm-11 pr-0">
									  <div class="d-flex justify-content-between align-items-center">
										  직원의 친절
										  <div class="rating" data-vote="0">
											
											<div class="star hidden">
											  <span class="full"data-value="0"></span>
											  <span class="half"data-value="0"></span>
											</div>
										  
											<div class="star">
										  
											  <span class="full" data-value="1"></span>
											  <span class="half" data-value="0.5"></span>
											  <span class="selected"></span>
										  
											</div>
										  
											<div class="star">
										  
											  <span class="full" data-value="2"></span>
											  <span class="half" data-value="1.5"></span>
											  <span class="selected"></span>
										  
											</div>
										  
											<div class="star">
										  
											  <span class="full" data-value="3"></span>
											  <span class="half" data-value="2.5"></span>
											  <span class="selected"></span>
										  
											</div>
										  
											<div class="star">
										  
											  <span class="full" data-value="4"></span>
											  <span class="half" data-value="3.5"></span>
											  <span class="selected"></span>
										  
											</div>
										  
											<div class="star">
										  
											  <span class="full" data-value="5"></span>
											  <span class="half" data-value="4.5"></span>
											  <span class="selected"></span>
											  
											</div>
											
											<div class="score">
												<span class="score-rating js-score">0</span>
												<span>/</span>
												<span class="total">5</span>
											</div>
										</div>
										


									  </div>
								  </div>
								  <div class="col-sm-1 p-0 d-flex align-items-center caption" id="kv-caption-kindness" style="color: #9b9b9b;"><span class="badge badge-default"></span></div>
							  </div>
						  </li>
						  <li class="list-group-item pl-0 pr-0 pt-3">
							  <div class="row">
								  <div class="col-sm-11 pr-0">
									  <div class="d-flex justify-content-between align-items-center">
										  짧은 대기시간
										  
									  </div>
								  </div>
								  <div class="col-sm-1 p-0 d-flex align-items-center caption" id="kv-caption-waiting" style="color: #9b9b9b;"><span class="badge badge-default"></span></div>
							  </div>
						  </li>
						  <li class="list-group-item pl-0 pr-0 pt-3">
							  <div class="row">
								  <div class="col-sm-11 pr-0">
									  <div class="d-flex justify-content-between align-items-center">
										  청결함
										  
									  </div>
								  </div>
								  <div class="col-sm-1 p-0 d-flex align-items-center caption" id="kv-caption-clarity" style="color: #9b9b9b;"><span class="badge badge-default"></span></div>
							  </div>
						  </li>
						  <li class="list-group-item pl-0 pr-0 pt-3">
							  <div class="row">
								  <div class="col-sm-11 pr-0">
									  <div class="d-flex justify-content-between align-items-center">
										  치료에 대한 자세한 설명
										  
									  </div>
								  </div>
								  <div class="col-sm-1 p-0 d-flex align-items-center caption" id="kv-caption-explain" style="color: #9b9b9b;"><span class="badge badge-default"></span></div>
							  </div>
						  </li>
						  <li class="list-group-item pl-0 pr-0 pt-3">
							  <div class="row">
								  <div class="col-sm-11 pr-0">
									  <div class="d-flex justify-content-between align-items-center">
										  적절한 금액
										 
									  </div>
								  </div>
								  <div class="col-sm-1 p-0 d-flex align-items-center caption" id="kv-caption-cost" style="color: #9b9b9b;"><span class="badge badge-default"></span></div>
							  </div>
						  </li>
						  <li class="list-group-item pl-0 pr-0 pt-3 border-bottom">
							  <div class="row">
								  <div class="col-sm-11 pr-0">
									  <div class="d-flex justify-content-between align-items-center">
										  치료 후 결과
										  
									  </div>
								  </div>
								  <div class="col-sm-1 p-0 d-flex align-items-center caption" id="kv-caption-outcome" style="color: #9b9b9b;"><span class="badge badge-default"></span></div>
							  </div>
						  </li>
						</ul>
					</div>
				</div>
			</div>
	

			<!--텍스트 리뷰-->
			<div class="summit-content-box mx-auto p-5 mt-4">
				<div class="row mb-4">
					<div class="col-sm-1">
						<div class="content-box-numbering align-middle mx-auto">4</div>
					</div>
					<div class="col-sm-11 content-box-title">
						텍스트 리뷰
					</div>
				</div>
				<div class="row text-left">
					<div class="col-sm-10 offset-sm-1 p-3 rounded-lg" style="background-color: #f8f8f8;">
						<b style="color: #494949;">좋은 리뷰는?</b>
						<b style="color: #494949; font-weight:300;">1. 의사 중심의 리뷰  /  2. 처치 중심의 리뷰  /  3. 진료실 내부의 리뷰</b>
					</div>
				</div>
	
				<div class="row">
					<div class="col-sm-10 offset-sm-1 p-0 d-flex justify-content-end">
						<button type="button" class="btn btn-link" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample" style="font-size: 14px;font-weight: bold;color: #007ee5;">
							예시 보기</button>
					</div>
					<div class="row collapse mt-2 mb-2 text-left" id="collapseExample">
						<div class="col-sm-10 offset-sm-1">
							<div class="p-3 border rounded-lg" style="font-size: 14px;color: #494949;">
								OOO 선생님 좋았습니다. 우선 <b class="text-emphasize-puple">진료실 내부</b>에서 상냥하게 인사해주고,
								<b class="text-emphasize-puple">처치내용</b>에 대해 단계별로 설명해주셨습니다.
								저는 <b class="text-emphasize-puple">OOOO이 아파서 갔는데</b> 왜 아픈지, 앞으로 치료는 어떤식으로 진행될 지,
								평소에 생활습관은 어떻게 가져가야 하는지에 대한 자세한 설명을 들을 수 있었습니다.
								이후 <b class="text-emphasize-puple">처치실에서도</b> 아픈 처치가 이루어지기 전에는 미리 알려주시고 환자를 배려하여 진행해주셨습니다.
								다만 <b class="text-emphasize-puple">단점으로는</b> 대기시간이 길었던 점과, 영업시간이 짧다는 점, 그리고 데스크 직원분들이 불친절했던 것을 꼽을 수 있습니다.
							</div>
						</div>
					</div>
				</div>
	
				<div class="row">
					<div class="col-sm-10 offset-sm-1 p-0 mt-1">
							<textarea class="form-control" rows="5" id="comment" name="comment" placeholder="의사 선생님께 받은 치료 경험을 진솔한 이야기로 풀어주세요. (200자 이상)" onkeyup="textCounter(this, 'counter', 200);"></textarea>
							<div class="mt-1" style="font-size:14px;text-align:right;color:#494949;letter-spacing: -0.6px;">
								(<span id="counter">0</span>자, 최소 200자 이상)
							</div>
							<script>
								function textCounter(field,field2,maxlimit)
								{
									$('#' + field2).text(field.value.length);
								}
							</script>
					</div>
				</div>
			</div>
	
			
	
			<div class="summit-content-box mx-auto p-5 mt-4">
				<div class="row mb-4">
					<div class="col-sm-1">
						<div class="content-box-numbering align-middle mx-auto">6</div>
					</div>
					<div class="col-sm-11 content-box-title">
						이 병원은..?
					</div>
				</div>

				<div class="row">
					<div class="col-sm-10 offset-sm-1">
						<div class="card-group border-0">
							<div class="card border-0 d-flex justify-content-center">
								<img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/goodface.svg" class="img-fluid" alt="Responsive image" id="goodface">
								<div class="card-body">
									<input type="radio" name="suggest" value="true" id="good_suggest_input">
								</div>
							</div>
							<div class="card border-left-0 border-top-0 border-bottom-0 d-flex justify-content-center">
								<img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/wrongface.svg" class="img-fluid" alt="Responsive image" id="wrongface">
								<div class="card-body">
									<input type="radio" name="suggest" value="false" id="wrong_suggest_input">
								</div>
							</div>
						</div>
	
					</div>
				</div>

			</div>

			<div class="row mt-5 mb-5 pt-3">
				<div class="col-sm-6 offset-sm-3 p-0 align-top">
					<button class="btn btn-mdd w-100 p-4" type="submit" style="font-size:21px; color: white; background-color: #0071ce;">
						작성한 리뷰 제출하기
					</button>
				</div>
			</div>
	
		</div>
		</div>
	</form>
	
	
	
	
	<script>
	
	function openNextPage(url){
		var past_url = $.QueryString.past_url;
		if (past_url){
			ga('send', 'pageview', '/complex_review/from_doctor_page/');
			window.location.href = decodeURIComponent($.QueryString.past_url);
		} else {
			var xhr = new XMLHttpRequest();
			// 다음 위치가 정상적인 상태인지 확인 후 진행
			xhr.onreadystatechange = function() {
				if(xhr.readyState == 4 && xhr.status == 200) {
					window.location.href = url;
				}
				if(xhr.status == 403) {
					// do whatever
				}
			}
			xhr.open('head',url);
			xhr.send();
		}
	}
	// sentry error reporting for ajax error
	$(document).ajaxError(function(event, jqXHR, ajaxSettings, thrownError) {
		Sentry.setExtra("type", ajaxSettings.type)
		Sentry.setExtra("url", ajaxSettings.url)
		Sentry.setExtra("data", ajaxSettings.data)
		Sentry.setExtra("status", jqXHR.status)
		Sentry.setExtra("error", thrownError || jqXHR.statusText)
		Sentry.setExtra("response.substring(0, 300)", jqXHR.responseText.substring(0, 300))
		Sentry.captureMessage(thrownError || jqXHR.statusText, 'fatal');
	});
	
	$(document).ready(function(){
		// 실수로 모두닥, 리뷰이벤트 하기 버튼 클릭하여 초기화되는 문제를 위해
		// 링크 비활성화 하기.
		
		
		// 여기부분! img태그의 표정 색칠하기
		// suggest필드의 표정색칠하기
		$(function() {
			$('#wrong_suggest_input').click(function(){
				$('#goodface').attr('src','https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/goodface.svg');
				$('#wrongface').attr('src','https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/wrongface_color.svg');
			})
			$('#good_suggest_input').click(function(){
				$('#goodface').attr('src','https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/goodface_color.svg');
				$('#wrongface').attr('src','https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/wrongface.svg');
			})
		// 사진을 눌러도 된다.
			$('#goodface').click(function(){
				$('#goodface').attr('src','https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/goodface_color.svg');
				$('#wrongface').attr('src','https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/wrongface.svg');
				$('#wrong_suggest_input').prop('checked', false);
				$('#good_suggest_input').prop('checked', true);
			})
			$('#wrongface').click(function(){
				$('#wrongface').attr('src','https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/wrongface_color.svg');
				$('#goodface').attr('src','https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/goodface.svg');
				$('#good_suggest_input').prop('checked', false);
				$('#wrong_suggest_input').prop('checked', true);
			})
	
		});
	
		
		// 리뷰 제출하기.
		$(document).ready(function() {
			$('#receipt_image').fileinput({
				browseClass: "btn btn-blackcontent btn-block p-3",
				browseLabel: "인증자료 첨부하기",
				language: 'kr',
				uploadAsync: false,
				initialPreviewFileType: 'image',
				showUpload: false,
				showCaption: false,
				showRemove: false,
				dropZoneEnabled: false,
				fileActionSettings: {
					showUpload: false,
					showZoom: true,
					showDrag: false
				},
			});
			$('#cei_hospital').fileinput({
				browseClass: "btn btn-outline-secondary btn-block p-3",
				language: 'kr',
				browseLabel: "병원사진 찾기",
				uploadUrl: "/",
				uploadAsync: false,
				showUpload: false,
				showCaption: false,
				showRemove: false,
				fileActionSettings: {
					showUpload: false,
					showZoom: true,
					showDrag: false
				},
				dropZoneEnabled: false,
				minFileCount: 2,
				maxFileCount: 5,
				overwriteInitial: false,
			});
			$('#cei_treatment').fileinput({
				browseClass: "btn btn-outline-secondary btn-block p-3",
				language: 'kr',
				browseLabel: "치료사진 찾기",
				uploadUrl: "/",
				uploadAsync: false,
				showUpload: false,
				showCaption: false,
				showRemove: false,
				fileActionSettings: {
					showUpload: false,
					showZoom: true,
					showDrag: false
				},
				dropZoneEnabled: false,
				minFileCount: 0,
				maxFileCount: 5,
				overwriteInitial: false,
				initialPreviewAsData: false,
				initialPreviewFileType: 'image',
			});
			// 회원이 영수증 증빙자료를 선택할 때.
			$('#receipt_image').on('change', function() {
				var files = $('#receipt_image')[0].files;
				var file = files[0];
				if(!file){
					return alert("이미지 파일을 고르지 않았습니다!");
				}
				$('#receipt_image_url').val(file.name);
			});
	
			// bootstrap star rating.
			$('#score_service_kindness').rating({
				min: 0,
				max: 10,
				step: 1,
				theme: 'krajee-fas',
				clearButton: '',
				starCaptions: {1: '1/10점', 2: '2/10점', 3: '3/10점', 4: '4/10점', 5: '5/10점', 6: '6/10점', 7: '7/10점', 8: '8/10점', 9: '9/10점', 10: '10/10점'},
				starCaptionClasses: function(val) {
					return 'badge badge-default';
				},
				captionElement: "#kv-caption-kindness",
				clearCaption: ''
			});
			$('#score_service_clarity').rating({
				min: 0,
				max: 10,
				step: 1,
				theme: 'krajee-fas',
				clearButton: '',
				starCaptions: {1: '1/10점', 2: '2/10점', 3: '3/10점', 4: '4/10점', 5: '5/10점', 6: '6/10점', 7: '7/10점', 8: '8/10점', 9: '9/10점', 10: '10/10점'},
				starCaptionClasses: function(val) {
					return 'badge badge-default';
				},
				captionElement: "#kv-caption-clarity",
				clearCaption: ''
			});
			$('#score_service_waiting').rating({
				min: 0,
				max: 10,
				step: 1,
				theme: 'krajee-fas',
				clearButton: '',
				starCaptions: {1: '1/10점', 2: '2/10점', 3: '3/10점', 4: '4/10점', 5: '5/10점', 6: '6/10점', 7: '7/10점', 8: '8/10점', 9: '9/10점', 10: '10/10점'},
				starCaptionClasses: function(val) {
					return 'badge badge-default';
				},
				captionElement: "#kv-caption-waiting",
				clearCaption: ''
			});
			$('#score_treatment_cost').rating({
				min: 0,
				max: 10,
				step: 1,
				theme: 'krajee-fas',
				clearButton: '',
				starCaptions: {1: '1/10점', 2: '2/10점', 3: '3/10점', 4: '4/10점', 5: '5/10점', 6: '6/10점', 7: '7/10점', 8: '8/10점', 9: '9/10점', 10: '10/10점'},
				starCaptionClasses: function(val) {
					return 'badge badge-default';
				},
				captionElement: "#kv-caption-cost",
				clearCaption: ''
			});
			$('#score_treatment_explain').rating({
				min: 0,
				max: 10,
				step: 1,
				theme: 'krajee-fas',
				clearButton: '',
				starCaptions: {1: '1/10점', 2: '2/10점', 3: '3/10점', 4: '4/10점', 5: '5/10점', 6: '6/10점', 7: '7/10점', 8: '8/10점', 9: '9/10점', 10: '10/10점'},
				starCaptionClasses: function(val) {
					return 'badge badge-default';
				},
				captionElement: "#kv-caption-explain",
				clearCaption: ''
			});
			$('#score_treatment_outcome').rating({
				min: 0,
				max: 10,
				step: 1,
				theme: 'krajee-fas',
				clearButton: '',
				starCaptions: {1: '1/10점', 2: '2/10점', 3: '3/10점', 4: '4/10점', 5: '5/10점', 6: '6/10점', 7: '7/10점', 8: '8/10점', 9: '9/10점', 10: '10/10점'},
				starCaptionClasses: function(val) {
					return 'badge badge-default';
				},
				captionElement: "#kv-caption-outcome",
				clearCaption: ''
			});
	
	
			$('#register-submit-form').on('submit', function(e) {
				e.preventDefault();
				var files = $('#receipt_image')[0].files;
				var file = files[0];
				if(!file){
					return alert("영수증 자료를 업로드하지 않으셨습니다!");
				}
				$('#wrap-loading-text1').text("작성하신 리뷰를 열심히 업로드 중입니다.")
				$('#wrap-loading-text2').text("10초만 기다려주세요 :)")
	
				// 리뷰 제출 시작
				$.ajax({
					url: "/mdd_event/s3_direct_upload/?file_name=" + file.name + '&file_type=' + file.type,
					type: 'GET',
					cache: false,
					success: function(data){
						var response = data;
						var postData = new FormData();
						for(key in response.data.fields){
							postData.append(key, response.data.fields[key]);
						}
						postData.append('file', file);
						var receipt_image_new_name = response.receipt_image_new_name;
						// upload image file
						$.ajax({
							url: response.data.url,
							type: 'POST',
							processData: false,
							contentType: false,
							data: postData,
							success: function(data, textStatus, xhr) {
								var formData2 = new FormData();
								formData2.append('hospital_name', $('#hospital_name').val());
								formData2.append('doctor_name', $('#doctor_name').val());
								formData2.append('hospital_id', $('#hospital_id').val());
								formData2.append('doctor_id', $('#doctor_id').val());
								formData2.append('receipt_image_new_name', receipt_image_new_name);
								formData2.append('original_image_name', $('#receipt_image_url').val());
								formData2.append('score_service_kindness', $('#score_service_kindness').val());
								formData2.append('score_service_waiting', $('#score_service_waiting').val());
								formData2.append('score_service_clarity', $('#score_service_clarity').val());
								formData2.append('score_treatment_explain', $('#score_treatment_explain').val());
								formData2.append('score_treatment_cost', $('#score_treatment_cost').val());
								formData2.append('score_treatment_outcome', $('#score_treatment_outcome').val());
								formData2.append('comment', $('#comment').val());
								formData2.append('treatment_essay', $('#treatment_essay').val());
								formData2.append('price_essay', $('#price_essay').val());
								// formData2.append('price_content', $('#price_content').val());
								formData2.append('suggest', $('input:radio[name=suggest]:checked').val());
								formData2.append('reference', $('#reference').val());
								
								formData2.append('is_public', $('#is_public').is(":checked"));
	
								var treatment_category_ids = new Array();
								var prices = new Array();
								var price_details = new Array();
								$('.tc-price').each(function (index, item) {
									prices.push($(item).val());
									treatment_category_ids.push($(item).data("value"));
								});
								$('.price-detail').each(function (index, item) {
									price_details.push($(item).val());
								});
								formData2.append('treatment_category_ids', JSON.stringify(treatment_category_ids));
								formData2.append('prices', JSON.stringify(prices));
								formData2.append('price_details', JSON.stringify(price_details));
								// 리뷰정보 업데이트.
								$.ajax({
									url: "/mdd_event/ajax_review_submit/",
									type: 'POST',
									data: formData2,
									cache : false,
									contentType: false,
									processData: false,
									success: function(data) {
										if(data.status === 'success'){
											var files_cei_hospital = $('#cei_hospital').fileinput('getFileList');
											var files_cei_treatment = $('#cei_treatment').fileinput('getFileList');
											var files_cei = files_cei_hospital.concat(files_cei_treatment);
											// 업로드된 병원, 치료사진이 없으면 5단계 페이지로 바로 넘어가기.
											if (!files_cei) {
												openNextPage("/mdd_event/get_5step/");
											}
											var requestData = [];
											for (i=0; i < files_cei_hospital.length; i++){
												var ele_file_i = {
													file_type: files_cei_hospital[i].type,
													original_image_name: files_cei_hospital[i].name,
													category: 1,
													rs_id: data.rs_id
												};
												requestData.push(ele_file_i);
											}
											for (k=0; k < files_cei_treatment.length; k++){
												var ele_file_k = {
													file_type: files_cei_treatment[k].type,
													original_image_name: files_cei_treatment[k].name,
													category: 2,
													rs_id: data.rs_id
												};
												requestData.push(ele_file_k);
											}
											var formData3 = new FormData();
											formData3.append('data', JSON.stringify(requestData));
											$.ajax({
												url: "/mdd_event/s3_direct_upload_cei/",
												type: 'POST',
												data: formData3,
												cache : false,
												contentType: false,
												processData: false,
												success: function(data){
													var deferred = [];
													for (j=0; j < data.length; j++){
														var postData = new FormData();
														for(key in data[j].presigned_post.fields){
															postData.append(key, data[j].presigned_post.fields[key]);
														}
														postData.append('file', files_cei[j]);
														deferred.push(
															$.ajax({
																url: data[j].presigned_post.url,
																type: 'POST',
																processData: false,
																contentType: false,
																data: postData,
															})
														);
													}
													
													$.when.apply($, deferred).then(function() {
														openNextPage("/mdd_event/get_5step/");
													});
												},
												failure: function(err){}
											});
										} else if (data === 'fail') {
											toastr['error']('리뷰 제출 실패하였습니다');
										} else if (data === 'not_self_identified') {
											window.location.replace('/mdd_event/');
										} else {
											// toastr['error']('리뷰 제출 실패하였습니다');
											alert('리뷰 제출에 실패하였습니다. 하단에 표시된 에러내용을 확인 후 다시 제출해주세요!');
											$('.errors-info-review-submit').html(data);
										}
									},
									complete: function() {
										$('.wrap-loading').addClass('display-none');
									},
									error: function(jqXHR, textStatus, errorThrown) {
									}
								});
							},
							complete: function() {
							},
							error: function(jqXHR, textStatus, errorThrown) {
							}
						});
					},
					complete: function() {
					},
					error: function(jqXHR, textStatus, errorThrown) {
					}
				});
			});
		
	

	</script>
	
	

	 <%@ include file="../static/footer.jsp" %>
	
	<!--====== Javascripts & Jquery ======-->
	<script src="<%=request.getContextPath()%>/resources/js/jquery-3.2.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/jquery.slicknav.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/mixitup.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>

	</body>
</html>
    