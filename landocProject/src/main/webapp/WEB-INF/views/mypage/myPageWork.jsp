<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="ko">
<head>
   <title>나의 활동</title>
   <meta charset="UTF-8">
   <meta name="description" content="SolMusic HTML Template">
   <meta name="keywords" content="music, html">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">

   <!-- Favicon -->
   <link href="<%=request.getContextPath()%>/resources/img/favicon.ico" rel="shortcut icon" />

   <!-- Google font -->
   <link
      href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap"
      rel="stylesheet">

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
   	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
   <!-- Page Preloder -->
   <div id="preloder">
      <div class="loader"></div>
   </div>

   <%@ include file="../static/header.jsp" %>

	<div class="container" style="text-align: center; margin-top: 80px; margin-bottom: 80px; ">
		 <div class="p-4" style="width: 1000px; display: inline-block;">
    		<div class="row">
                <div class="col-2 d-flex align-items-center" style="border: 2px solid #9b9b9b; height: 131px;">
                    <img class="img-fluid" style="width:100%; height: auto;" alt="Responsive image" src="https://d23zwvh2kbhdec.cloudfront.net/media/public/customers/photos/animals/dog.png">
                </div>
                <div class="col-8 pl-5 text-left">
                    <div class="d-flex align-items-center">
                    <div class="review-list-title text-left" style="font-weight: bold; font-size: 35px;">
                        소혀니야
                    </div>
                     
                    </div>
                    <div class="text-left py-2">
                        mo_so@naver.com
                    </div>
                    <button type="button" id="edit_profile" class="btn btn-blackcontent w-50 p-1" style="font-size:18px; background-color: #0071ce; color: whitesmoke">
                        프로필 수정
					</button>
					
					
                </div>
            </div>
    
    
            <div class="row mt-5">
                <button class="btn w-100 py-3 pl-5" id="myReview" style="border: 2px solid #9b9b9b; font-size: 21px;">
					<div class="text-left" style="float: left;">
						나의 리뷰
					</div>
					<div class="text-right" style="float: right;">
						<img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_05/img/arrow_bottom.svg" class="img-fluid" alt="Responsive image" style="width:24px;height:24px;">
					</div>
                </button>
			</div>
			
			<div class="row mt-3" id="myReviewSub" style="display: none;" >
                <div class="btn w-100 py-3 pl-5 text-left" id="" style="border: 2px solid #9b9b9b; font-size: 21px;">
					<a href="#">병원리뷰</a><br>
					<a href="pdReview.do">상품리뷰</a><br>
			    </div>
			</div>
    
            <div class="row mt-3">
                <button class="btn w-100 py-3 pl-5 text-left" id="" style="border: 2px solid #9b9b9b; font-size: 21px;">
                    나의 의사에게 물어봐 문의글
                </button>
			</div>
			
			
            <div class="row mt-3">
                <button class="btn w-100 py-3 pl-5" id="myQna" style="border: 2px solid #9b9b9b; font-size: 21px;">
					<div class="text-left" style="float: left;">
					나의 QnA 문의글 
					</div>
					<div class="text-right" style="float: right;">
					<img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_05/img/arrow_bottom.svg" class="img-fluid" alt="Responsive image" style="width:24px;height:24px;">
					</div>
				</button>
				
			</div>
			
			<div class="row mt-3" id="myQnaSub" style="display: none;" >
                <div class="btn w-100 py-3 pl-5 text-left" id="" style="border: 2px solid #9b9b9b; font-size: 21px;">
					<a href="#">사이트 QnA</a><br>
					<a href="#">상품 QnA</a><br>
					<a href="#">주문 QnA</a>
				</div>
			</div>
			
			<div class="row mt-3">
                <button class="btn w-100 py-3 pl-5 text" id="myOrder" style="border: 2px solid #9b9b9b; font-size: 21px;">
					<div class="text-left" style="float: left;">
						나의 주문조회
					</div>
					<div class="text-right" style="float: right;">
						<img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_05/img/arrow_bottom.svg" class="img-fluid" alt="Responsive image" style="width:24px;height:24px;">
					</div>

                </button>
			</div>
			
			<div class="row mt-3" id="myOrderSub" style="display: none;" >
                <div class="btn w-100 py-3 pl-5 text-left" id="" style="border: 2px solid #9b9b9b; font-size: 21px;">
					<a href="myOrderList.do">주문목록</a><br>
					<a href="#">주문취소/교환/반품 목록</a>
				</div>
			</div>

            <div class="row mt-3">
                <button onclick="likehp();" class="btn w-100 py-3 pl-5 text-left" id="bookmark_list" style="border: 2px solid #9b9b9b; font-size: 21px;">
                    찜한 병원 <b class="px-3" style="color: #0071ce;">3</b>
                </button>
            </div>
			<div style="position:fixed;bottom:70px;right:100px;z-index: 999;">
				<a href="https://pf.kakao.com/_VAryxb" target="_blank">
					<img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/katalk_Q.png" style="width:auto;height:80px;">
				</a>
			</div>
        </div>
    </div>

	<script>

		$("#myReview").click(function(){
			if($("#myReviewSub").css("display") == "none"){
				$("#myReviewSub").show();
			}else{
				$("#myReviewSub").hide();
			}

		})




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

		
		function likehp(){
			location.href="likeHp.do";
		}
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