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
<style>

</style>

</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<%@ include file="../static/header.jsp"%>
	
	<div class="container" style="text-align: center; margin-top: 80px; margin-bottom: 80px; ">
		<div class="p-4" style="width: 1000px; display: inline-block;">
   
    
            <div class="row page-subtitle">
                <div class="text-left"> <h1 class="mb-5" style="font-size: 30px; display: inline-block;" >회원님의 보유포인트</h1></div>
              
            </div>
    
            <div class="row mt-3 point-title d-flex align-items-center">
                <h1 class="mb-5" style="font-size: 60px;"><img src="<%=request.getContextPath()%>/resources/img/point.PNG"></h1>
            <div class="ml-3"><h1 class="mb-5" style="font-size: 60px;">${point.cPoint}</h1></div>
    
            </div>
    
            <div class="row mt-5">
                <div class="w-100">
                <button type="button" id="link_to_products" class="btn btn-block btn-lg btn-primary" style="background-color:  #0071ce;">상품 구매하기</button>
                </div>
            </div>
    
            <div class="row mt-5">
                 <div class="col-6 pl-0">
                    <div style="border-bottom:solid 2px #9b9b9b;"></div>
    
					<div id="link_to_saves" class="border-bottom d-flex justify-content-between pl-2 py-4 pr-5" style="font-size: 18px; ">
                        <div style="letter-spacing: -1px;">
                            소비포인트
                        </div>
                        <div>
                           ${point.allSumUsePoint}
                        </div>
					</div>
					
					
                  
                 </div>
    
    
                <div class="col-6 pr-0">
                    <div style="border-bottom:solid 2px #9b9b9b;"></div>
					<div id="link_to_saves" class="border-bottom d-flex justify-content-between pl-2 py-4 pr-5" style="font-size: 18px; ">
                        <div style="letter-spacing: -1px;">
                            	${point.nowMonth} 소비된 포인트
                        </div>
                        <div>
							${point.monthSumUsePoint}
                        </div>
					</div>
                    
                </div>
			 </div>
			 

			 <!--div에 클릭이벤트 넣어서 페이지 이동-->
			 <div class="row">
				 <div class="col-12 pl-0" style="padding-right: 0px;" onclick="pointList();">
				     <div id="link_to_saves" class="border-bottom d-flex justify-content-between pl-2 py-4 pr-5" style="font-size: 18px; cursor: pointer;">
					   <div style="letter-spacing: -1px;">
						   포인트내역
					   </div>
					   <div>
						   >
					   </div>
				   </div>
				 </div>
			</div>

			<div style="position:fixed;bottom:70px;right:100px;z-index: 999;">
				<a href="https://pf.kakao.com/_VAryxb" target="_blank">
					<img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/katalk_Q.png" style="width:auto;height:80px;">
				</a>
			</div>
         </div>
    </div>
	
	<script>
		function pointList(){
			location.href="pointList.do";
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
