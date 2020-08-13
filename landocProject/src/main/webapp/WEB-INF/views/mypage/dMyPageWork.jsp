<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>나의 활동(의사)</title>
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
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<%@ include file="../static/header.jsp"%>

	<div class="container"
		style="text-align: center; margin-top: 80px; margin-bottom: 80px;">
		<div class="p-4" style="width: 1000px; display: inline-block;">
			<div class="row">
                <div class="col-2 d-flex align-items-center" style="border: 2px solid #9b9b9b; height: 131px;">
                	<c:if test="${empty dr.proRename || dr.proRename eq ''}">
                		<img style="width: 100%; height: auto;" src="/projectFiles/profile.png">
                	</c:if>
                	
                	<c:if test="${!empty dr.proRename }">	
                		<img style="width: 100%; height: auto;" src="/projectFiles/${dr.proRename }">
                	</c:if>
           
                </div>
                <div class="col-8 pl-5 text-left">
                    <div class="d-flex align-items-center">
                    <div class="review-list-title text-left" style="font-weight: bold; font-size: 35px;">
                       		 ${dr.userName } 의사님
                    </div>
                     
                    </div>
                    <div class="text-left py-2">
                        ${dr.email }
                    </div>
                    <button type="button" onclick="checkDrProfile();" id="edit_profile" class="btn btn-blackcontent w-25 p-1" style="font-size:18px; background-color: #0071ce; color: whitesmoke;">
                       		 프로필 확인
					</button>
				
					<button type="button" onclick="editHp();" id="edit_hospital" class="btn btn-blackcontent w-25 p-1" style="font-size:18px; background-color: #0071ce; color: whitesmoke">
                       		 병원 수정
                    </button>
                </div>
            </div>


			<div class="row mt-5">
				<button class="btn w-100 py-3 pl-5 text-left" id="my_reviews" style="border: 2px solid #9b9b9b; font-size: 21px;">
                    	건강 보조 식품 추천하기
                </button>
			</div>

			<div class="row mt-3" id="myReviewSub" style="display: none;">
				<button class="btn w-100 py-3 pl-5 text-left" id="" style="border: 2px solid #9b9b9b; font-size: 21px;">
                    	의사에게 물어봐 답변글
                </button>
			</div>

			<div class="row mt-3">
				<button class="btn w-100 py-3 pl-5 text-left" id="" style="border: 2px solid #9b9b9b; font-size: 21px;">
                  	  병원 QnA 답변글
                </button>
			</div>


			<div class="row mt-3">
				<button class="btn w-100 py-3 pl-5 text-left" id="myQna" style="border: 2px solid #9b9b9b; font-size: 21px;">
					<div class="text-left" style="float: left;">
						나의 QnA 문의글 
					</div>
					<div class="text-right" style="float: right;">
						<img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_05/img/arrow_bottom.svg" class="img-fluid" alt="Responsive image" style="width:24px;height:24px;">
					</div>
                </button>
			</div>

			<div class="row mt-3" id="myQnaSub" style="display: none;">
				<div class="btn w-100 py-3 pl-5 text-left" id="" style="border: 2px solid #9b9b9b; font-size: 21px;">
					<a href="#" style="color: #45668e;">상품 QnA</a><br>
					<a href="drOrderQnaList.do" style="color: #45668e;">주문 QnA</a><br>
				</div>
			</div>

			<div class="row mt-3">
				<button class="btn w-100 py-3 pl-5 text" id="myOrder"
					style="border: 2px solid #9b9b9b; font-size: 21px;">
					<div class="text-left" style="float: left;">나의 주문조회</div>
					<div class="text-right" style="float: right;">
						<img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_05/img/arrow_bottom.svg" class="img-fluid" alt="Responsive image"
							style="width: 24px; height: 24px;">
					</div>

				</button>
			</div>

			<div class="row mt-3" id="myOrderSub" style="display: none;">
				<div class="btn w-100 py-3 pl-5 text-left" id="" style="border: 2px solid #9b9b9b; font-size: 21px;">
					<a href="drMyOrderList.do" style="color: #45668e;">주문목록</a><br> 
					<a href="drMyOrderCancelList.do" style="color: #45668e;">주문취소/교환/반품 목록</a>
				</div>
			</div>

			<div class="row mt-3">
				<button class="btn w-100 py-3 pl-5 text-left" id="" onclick="location.href='drPdReview.do'" style="border: 2px solid #9b9b9b; font-size: 21px;">
                  	  상품 리뷰
                </button>
			</div>
			
			<div style="position: fixed; bottom: 70px; right: 100px; z-index: 999;">
				<a href="https://pf.kakao.com/_VAryxb" target="_blank"> <img
					src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/katalk_Q.png"
					style="width: auto; height: 80px;">
				</a>
			</div>
			
		</div>
	</div>

	<script>
	
		// 병원 수정 페이지 이동 함수
		function editHp(){
			location.href="editHp.do";
		}
	
	
		$("#myQna").click(function(){
			if($("#myQnaSub").css("display") == "none"){
				$("#myQnaSub").show();
			}else{
				$("#myQnaSub").hide();
			}

		})


		$("#myOrder").click(function(){
			if($("#myOrderSub").css("display") == "none"){
				$("#myOrderSub").show();
			}else{
				$("#myOrderSub").hide();
			}

		})

		function checkDrProfile(){
			location.href="checkDrProfile.do";
		}
		
		
		
	</script>

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