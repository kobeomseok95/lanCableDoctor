<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>포인트 사용내역</title>
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

    <div class="container" style="text-align: center;">
        <div style="width: 1000px; display: inline-block">
            <div class="row px-3 py-5">
                <div class="col-12 text-left">
    
                    <div class="point-breadcrumb text-left">
                        <a href="drMypagePoint.do" style="color:  #0071ce;letter-spacing: -0.5px; font-size: 20px;">
                            나의 포인트
                        </a>
                        >
                        <strong class="ml-2" style="font-size: 20px;">포인트내역</strong>
                    </div>
    
                    <div class="point-count-title mt-4 text-left" style="font-size: 30px;">
                         총 ${count}건의 포인트내역
                       
                    </div>
    
                   
                    <div style="border-top: solid 1px #9b9b9b;">

                    <!--포인트내역이 없을때-->
                    <c:if test="${empty list}">
                         <div class="color9b text-center" style="font-size: 1.313rem; margin-top: 73.7px;letter-spacing: -0.8px;">
                            <div class="my-3 text-center">
                                <p class="m-0">회원님의 포인트가 아직 없습니다.</p>
                                <p class="m-0">리뷰를 작성하고 바로 포인트를 받아보세요! </p>
                            </div>
                        </div>
                        <button type="button" onclick="location.href='hpReviewInsert.do'" id="return_event" class="btn btn-mdd w-100 p-2" style="background-color: #0071ce; color:whitesmoke;">리뷰 쓰러가기</button>
                    <!--리뷰 없을때 end-->
                    </c:if>
					
					<c:if test="${not empty list}">
						<c:forEach var="p" items="${list}">
                        <div class="border-bottom">
                            <div class="row px-3 py-3">
                                <div class="col-2">
                                <img src="<%=request.getContextPath()%>/resources/img/point.PNG">
                                </div>
                                <div class="col-10">
                                <!-- 적립포인트 -->
                                    <div>
                                        <b style="color:#f4b200">${p.useSavePoint}</b>
                                    </div>
                                <!-- 적립일자 -->
                                    <div style="color:#9b9b9b;">
                                    <c:if test="${not empty p.hpReNo and not empty p.adrNo}">
                                        	사용일자 : ${p.useSaveDate}
                                    </c:if>
                                    <c:if test="${empty p.hpReNo and not empty p.adrNo}">
                                    		적립일자 : ${p.useSaveDate}
                                    </c:if>
                                    <c:if test="${not empty p.hpReNo and empty p.adrNo}">
                                    		적립일자 : ${p.useSaveDate}
                                    </c:if>
                                    </div>
                                <!-- 리뷰정보 -->
                                    <div style="color:#9b9b9b;">
                                     <c:if test="${not empty p.hpReNo and not empty p.adrNo}">
                                        	    상품구매 : ${p.pdHpName}
                                     </c:if>    
                                      <c:if test="${empty p.hpReNo and not empty p.adrNo}">
                                        	    의사에게 물어봐 : ${p.pdHpName}
                                     </c:if>   
                                     <c:if test="${not empty p.hpReNo and empty p.adrNo}">
                                        	   병원리뷰 : ${p.pdHpName}
                                     </c:if>   
                                     
                                        
                                    </div>
                                </div>
                            </div>    
                        </div>
                        </c:forEach>
                        </c:if>

                      


                       
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
