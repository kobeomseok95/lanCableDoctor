<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    
    
    <script src= 'http://code.jquery.com/jquery-latest.js'></script>


    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    
    <script src="https://kit.fontawesome.com/02aa01148e.js" crossorigin="anonymous"></script>
    

	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
<style>
    .star-image {
    width: 16px;
    height: 16px;
}
.star-image2 {
    width: 16px;
    height: 16px;
}
img {
    vertical-align: middle;
    border-style: none;
}
.middle-tab {
    position: sticky;
    z-index: 999;
    top: 0px;
    background-color: white;
}
.page-item.active .page-link {
    z-index: 1;
    color: #fff;
    background-color: #007ee5;
    border-color: #007ee5#007ee5;
}

#map_canvas{
     width: 100%;
     height: 100%;
	}

.dropdown-toggle::after{margin-left:55%;}

</style>
</head>
<body>

	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	
 	<%@ include file="../static/header.jsp" %>

   
    <div style="text-align: center;">
        <div style="width: 960px; display: inline-block">
        
        	<!-- 상단 병원 사진부분 -->
            <div class="hospital-images-box d-flex" style="overflow-x:auto;">
                
                <c:forEach var="pic" items="${picList }">
	                <div class="hospital-image-box" style="width: auto; height: 231px;">
	                	<c:set var="fullPath" value="/projectFiles/${pic.renameFileName }"/>
						<img src="${fullPath}" style="width: auto; height: 100%;"/>
	                </div>
                </c:forEach>
            </div>
            
            <div class="row p-3">
    
                <div class="doctor-in-detail-doctor-box col-8 border-0">
                    <div class="row p-3">
                        <div class="image-box col-2 p-0">
                            <div style="width: 100%;">
                                <img src="#" style="width:100%; height:auto;">
                            </div>
                            
                            <div class="mt-2">
                            	<!-- 찜 한 숫자 -->
                                <i class="fas fa-bookmark" style="color:#9b9b9b;"></i>
                                <span style="color:#9b9b9b;"><b>${likeNum }</b></span>
                            </div>
                            
                        </div>
    
                        <div class="col-9 text-left pt-2">
                            <div style="font-weight: 300;">
                                <a href="/q/?search_query=서울 치과" style="color: #1d458d;font-weight: 600;text-decoration: underline;">
                                    	서울
                                </a>
                                &gt;
                                
                                
                                <a href="/q/?search_query=서초구 치과" style="color: #1d458d;font-weight: 600;text-decoration: underline;">
                                    	서초구
                                </a>
                                &gt;
                                
                                <a href="/q/?search_query=이미지치과의원" style="color: #1d458d;font-weight: 600;text-decoration: underline;s">
                                    	이미지치과의원
                                </a>
                            </div>
    
                            <div class="hospital-doctor-name-box d-flex align-items-center mt-3 mb-3" style="font-size:20px; font-weight:600;">
                            <input type="hidden" value="${hp.hpNo }" id="hpNoAjax">
                            <input type="hidden" value="${hp.hpName }" id="hpNameAjax">
          						${hp.hpName }
                            </div>
    
                            <div class="d-flex align-items-start color49 border-bottom pb-3">
			                            	<c:if test="${hr.avgRate eq 'NaN' }">
			                            			<img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
			                            	
			                            	
			                            	</c:if>
                            	 			<c:if test="${hr.avgRate ge 0 && hr.avgRate lt 1}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            
                                            <c:if test="${hr.avgRate eq 1}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.avgRate gt 1 && hr.avgRate lt 2}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.avgRate eq 2}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            
                                            <c:if test="${hr.avgRate gt 2 && hr.avgRate lt 3}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.avgRate eq 3}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.avgRate gt 3 && hr.avgRate lt 4}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.avgRate eq 4}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                          
                                            <c:if test="${hr.avgRate gt 4 && hr.avgRate lt 5}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                           <c:if test="${hr.avgRate eq 5}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                            	
                            	
                                <div class="ml-1" style="letter-spacing: -0.5px;">
                                
	                                <c:if test="${hr.avgRate eq 'NaN' }">
	                                	0&nbsp;
	                                    (리뷰 ${reviewNum })
	                                </c:if>
	                                
	                                <c:if test="${hr.avgRate ne 'NaN' }">
	                                   ${hr.avgRate }&nbsp;
	                                    (리뷰 ${reviewNum })
	                                </c:if>
                                </div>
                            </div>
    
   							
   							<!-- 주소  -->
                            <div class="color49 mt-2" style="font-size: 14px;font-weight: 300;letter-spacing: -0.6px;">
                                <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mapmarkerShape.svg" class="mb-1 mr-1" alt="Responsive image">
                              	${hp.hpAddress }
                               
                            </div>
                            
    						<!-- 전화번호 -->
                            <div class="color49 mt-2" style="font-size: 14px;font-weight: 300;letter-spacing: -0.2px;">
                                <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/phoneicon.svg" class="mb-1 mr-1" alt="Responsive image">
                                ${hp.hpPhone }
                                
                            </div>
                            
                            <div class="color49 mt-2" style="font-size: 14px;font-weight: 300;letter-spacing: -0.2px;">
                               <i class="far fa-sticky-note" style="color:grey;"></i>&nbsp;
                               <c:if test="${empty hp.hpComment }">
                               		병원에서 작성한 소개가 없습니다.
                               </c:if>
                               
                               <c:if test="${!empty hp.hpComment }">
                               		${hp.hpComment }
                               </c:if>
                                
                            </div>
                            
                            
                        </div>
    
    					<!-- 찜하기 -->
                        <div class="col-1 p-0">
                            <div class="mt-1 mb-2 p-2" style="border:1px solid #dee2e6; width:60px;">
                                <i class="far fa-bookmark"></i>
                                <br><span style="font-size:10px;">찜하기</span>
                            </div>
                        </div>
                    </div>
                </div>
    
    			<!-- 리뷰(상단 작은상자) -->
    			<!-- 여기 리뷰 수정해야함 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
                <div class="col-4">
                <div class="review-preview-box border">
                
                <c:if test="${reviewNum == 0 }">
                	<div class="d-flex justify-content-between align-items-center m-3">
                        <div style="font-weight: bold;letter-spacing: -0.4px;">
                         	  인증된 리뷰 <b style="color: #007ee5;">${reviewNum }</b>
                        </div>
                        <div>
                            <a href="hpReviewInsert.do" style="color: #494949;font-size: 12px;">
                              	  리뷰 작성하기
                                <i class="fas fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                    
                     
                        <div class="text-center my-4" style="letter-spacing: -0.7px;font-size: 1rem;color:#9b9b9b;font-weight:bold;">
	                        <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_08_04/img/nonpage.svg" class="img-fluid mb-2" alt="Responsive image" style="width:15%; height:15%;">
	                        <p class="m-0" style="font-size:12px;">아직 등록된 리뷰가 없습니다.</p>
	                        <p class="m-0" style="font-size:12px;">첫 리뷰를 등록해보세요!</p>
	                   </div>
                        
                   
                 </c:if>
                
                
                <!-- ------------------------------------------------------------------------------------------------여기부분 수정해야함 -->
                <c:if test="${reviewNum >0 }">
                    <div class="d-flex justify-content-between align-items-center m-3">
                        <div style="font-weight: bold;letter-spacing: -0.4px;">
                         	  인증된 리뷰 <b style="color: #007ee5;">${reviewNum }</b>
                        </div>
                        <div>
                            <a href="#reviewdetailinfo" style="color: #494949;font-size: 12px;">
                              	  전체보기
                                <i class="fas fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
    
                    <div class="text-left mx-3 py-3 border-top">
                        <div class="row my-1">
                            
                            <div class="d-flex align-items-start col-6">
                                
                                    
                                            <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="img-fluid" style="width:14.5px; height:auto;">
                                    
                                            <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="img-fluid" style="width:14.5px; height:auto;">
                                    
                                            <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="img-fluid" style="width:14.5px; height:auto;">
                                    
                                            <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="img-fluid" style="width:14.5px; height:auto;">
                                    
                                            <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="img-fluid" style="width:14.5px; height:auto;">
                                    
                                <div style="letter-spacing: -0.7px; color: #494949;font-size: 14px;" class="ml-1">9.8</div>
                            </div>
                            <div class="d-flex align-items-center col-6">
                                <div style="color: #9b9b9b;font-size: 10px;">5월 19일, 2020년 등록</div>
                            </div>
                            
    
                        </div>
                
                        <div style="font-size: 12px; font-weight: 300;  letter-spacing: -0.6px;color: #494949;cursor: pointer;" onclick="location.href='#reviewdetailinfo'">
                            		데스크 직원분들은 그냥 사무적이였고 간호사분들은 좀 나았고 의사선생님은 진짜 너무 재…
                        </div>
                        
                    </div>
                 </c:if>
                </div>
    
    
    
    			<!-- 큐앤에이(상단 작은 상자) -->
                <div class="review-preview-box border mt-2">
    
                   <c:if test="${!empty qnaList }">
                    <div class="d-flex justify-content-between align-items-center m-3">
                        <div style="font-weight: bold;letter-spacing: -0.4px;">
                          &nbsp;  Q&amp;A <b style="color: #007ee5;">${qnaNum }</b>
                        </div>
                        <div>
                            <a href="#qnadetailinfo" style="color: #494949;font-size: 12px;">
                          		     더 보기
                                <i class="fas fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                    
                    <div class="text-left mx-3 py-3 border-top" style="cursor: pointer;" onclick="location.href='#qnadetailinfo';">
                        <div class="row">
                            <div class="col-2" style="font-weight: bold;letter-spacing: -0.5px;">
                                <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/Q.svg" class="img-fluid mr-1 align-top" alt="Responsive image">
                            </div>
                            <div class="col-10 pl-0 text-left" style="letter-spacing: -0.5px;font-size:14px;">
                               	${qnaList[0].qnaTitle }
                            </div>
                        </div>
    
                        
                        
                        <div class="row mt-2">
                            <div class="col-1 offset-2 pl-0 pr-2">
                                <img style="width:100%; height:auto;" src="https://d23zwvh2kbhdec.cloudfront.net/media/public/customers/photos/animals/hamster.png">
                            </div>
                            <div class="col-9 text-left pl-0" style="font-size: 12px;font-weight: 300;letter-spacing: -0.7px;color:#494949;">
		                      	<c:if test="${qnaList[0].yn eq 'N' }">
		                              			답변 대기 중입니다.
	                              </c:if>
	                              
	                               <c:if test="${qnaList[0].yn eq 'Y' }">
	                             	 	${qnaList[0].reply }
	                              </c:if>
                                
                                <br>
                                
                                <c:if test="${qnaList[0].yn eq 'N' }">
                                </c:if>
                                
                                 <c:if test="${qnaList[0].yn eq 'Y' }">
                               	  <b style="font-size: 12px;color: #9b9b9b;">${qnaList[0].qnaReDate }</b>
                                </c:if>
                                
                               
                            </div>
                        </div>
                        
                    </div>
                  </c:if>
                  
                  
                  <c:if test="${empty qnaList }">
	                  <div class="d-flex justify-content-between align-items-center m-3">
	                        <div style="font-weight: bold;letter-spacing: -0.4px;">
	                            Q&amp;A <b style="color: #4c1192;">${qnaNum }</b>
	                        </div>
	                        <div>
	                            <a href="#qnadetailinfo" style="color: #494949;font-size: 12px;">
	                          		     질문하기
	                                <i class="fas fa-chevron-right"></i>
	                            </a>
	                        </div>
	                  </div>
	                   <div class="text-center my-4" style="letter-spacing: -0.7px;font-size: 1rem;color:#9b9b9b;font-weight:bold;">
	                        <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_08_04/img/nonpage.svg" class="img-fluid mb-2" alt="Responsive image" style="width:15%; height:15%;">
	                        <p class="m-0" style="font-size:12px;">아직 등록된 질문이 없습니다.</p>
	                        <p class="m-0" style="font-size:12px;">첫 질문을 등록해보세요!</p>
	                   </div>
                      
                  </c:if>
                  
                </div>
    
                </div>
            </div>
    
            <!--semi navi bar-->
            <div class="row border-top border-bottom px-3 middle-tab">
                <div class="col-8 doctorpage-tabbar">
                    <ul id="nav-tabs" class="nav nav-pills nav-fill d-flex" role="tablist">
                        <li role="presentation" class="nav-item">
                            <a class="nav-link active m-0 border-top-0 border-left-0 border-right-0 rounded-0 h-100" 
                            href="#hpTime" role="tab" style="color: #007ee5; background-color: white; font-weight: 600; border-bottom: 2px solid #007ee5; font-size: 18px;">영업시간</a>
                        </li>
                        <li role="presentation" class="nav-item">
                            <a class="nav-link active m-0 border-top-0 border-left-0 border-right-0 rounded-0 h-100" 
                            href="#hpMap" role="tab" style="color: #007ee5; background-color: white; font-weight: 600; border-bottom: 2px solid #007ee5; font-size: 18px;">지도</a>
                        </li>
                        <li role="presentation" class="nav-item">
                            <a class="nav-link active m-0 border-top-0 border-left-0 border-right-0 rounded-0 h-100" 
                            href="#reviewdetailinfo" role="tab" style="color: #007ee5; background-color: white; font-weight: 600; border-bottom: 2px solid #007ee5; font-size: 18px;">리뷰 (${reviewNum })</a>
                        </li>
                        <li role="presentation" class="nav-item">
                            <a class="nav-link active m-0 border-top-0 border-left-0 border-right-0 rounded-0 h-100" 
                            href="#qnadetailinfo" role="tab" style="color: #007ee5; background-color: white; font-weight: 600; border-bottom: 2px solid #007ee5; font-size: 18px;">Q&amp;A (${qnaNum })</a>
                        </li>
                    </ul>
                </div>
            </div>
    
    
    		<!-- 영업시간 -->
            <a class="anchor" id="hpTime"></a>
            <div class="row p-3">
                <div class="col-20" id="left-fixed">
                    <div class="my-5 border-top pt-4">
                        <div class="d-flex justify-content-between align-items-center">
                            <div style="font-size: 20px;font-weight: bold; margin-bottom:12px;">영업시간</div>
                            <button type="button" class="btn-transparent open_request_wrong_info border p-1" style="color: #494949;font-size: 12px;">
                               		 병원 정보 수정 요청하기
                            </button>
                        </div>
                        
                        <div style="  letter-spacing: -0.7px;color: #b00020;font-size: 14px;" class="text-left">
                           			 ※주의사항 : 방문 전 전화를 통해 진료시간을 꼭 확인하세요!
                        </div>
    
                        <div class="text-left color49 my-4" style="font-size:14px;">
                            
                               
                          <c:forEach var="tl" items="${timeList }">
                          	<c:choose>
                          		<c:when test="${!empty tl.openTime}">
	                                <div class="my-2 row">
	                            		 <div style="color:#007ee5" class="col-2">
		                                         <i class="far fa-clock"></i>
		                                         ${tl.day }
		                                  </div>
		                                     
	                                     <div class="col-7 p-0">
	                                       	${tl.openTime } &nbsp; ~ &nbsp; ${tl.closeTime }
	                                	</div>
	                                </div>
                              </c:when>
                              
                              <c:otherwise>
                              <div class="my-2 row">
                            		 <div style="color:#b00020" class="col-2">
	                                         <i class="far fa-clock"></i>
	                                         ${tl.day }
	                                  </div>
	                                     
                                     <div class="col-7 p-0">
                                       	휴무
                                	</div>
                                </div>
                              </c:otherwise>
                            </c:choose> 
                              
                          </c:forEach>
                        </div>
    
                        
                    </div>
    
    				<!-- ****************************************************************************************************************** -->
                    <!--지도 api활용 부분-->
                    <!--location-box -->
                   
              		 <a class="anchor" id="hpMap"></a>
                     <div class="my-5 border-top pt-4">
	                     <div class="d-flex justify-content-between align-items-center">
	                            <div style="font-size: 20px;font-weight: bold; margin-bottom:15px;">지도</div>     
	                      </div>
                   
                   <input type="hidden" id="hpx" value="${hp.hpx}">
                   <input type="hidden" id="hpy" value="${hp.hpy}">
                   
					<div id="map" style="width:100%;height:300px;"></div>
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e0d7fba272c0e3f0fc208aad65ce2f31"></script>
					<script>
						var hpx = $("#hpx").val();
						var hpy = $("#hpy").val();
						var container = document.getElementById('map');
						var options = {
							center: new kakao.maps.LatLng(33.450701, 126.570667),
							level: 3
						};
				
						var map = new kakao.maps.Map(container, options);
					</script>
				                        
                  
                    <div class="p-3" style="background-color: #4a4a4a;">
                        <div class="row">
                            <div class="col-1 d-flex align-items-center">
                                <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mapmarker_white.svg" class="img-fluid" alt="Responsive image">
                            </div>
                            <div class="col-8 text-left p-0">
                                <div style="  letter-spacing: -0.4px;color: #ffffff;font-size: 14px;">
                                   ${hp.hpAddress }
                                </div>
                       
                            </div>
                        </div>
                    </div>
    
                    </div>
                    
                    
                    <!-- 리뷰 -->
                    <a class="anchor" id="reviewdetailinfo"></a>
                    <div class="my-5 border-top pt-5">
                        <div class="text-left mb-2" style="font-size: 20px;">
                            	리뷰 <b style="color: #007ee5;">${reviewNum }</b>
                        </div>
    
                        
                        
                        <div class="border">
                        <div class="row px-3">
    
                            <div class="col-4 px-3 pt-3 pb-0" style="border-right:solid 1px #e9e9e9; background-color: #f8f8f8;">
                                <div style="color: #494949;letter-spacing: -0.6px;font-size: 14px;" class="mb-2">
                                   		 별점 평균
                                </div>
                                <div style="letter-spacing: -1.05px;text-align: center;color: #9b9b9b;font-size: 18px;" class="mb-2">
                                    <c:if test="${hr.avgRate ne 'NaN' }">
	                                    <b style="letter-spacing:-2.33px; font-size: 40px; font-weight: bold;color: #000000;">
	                                        ${hr.avgRate }
	                                    </b> / 5
                                    </c:if>
                                    
                                    <c:if test="${hr.avgRate eq 'NaN' }">
	                                    <b style="letter-spacing:-2.33px; font-size: 40px; font-weight: bold;color: #000000;">
	                                        0
	                                    </b> / 5
                                    </c:if>
                                    
                                    
                                </div>
                                <div class="row border-top pt-2">
                                    <div class="col d-flex align-items-end justify-content-center" style="color: #007ee5;font-size:14px;font-weight: bold">
                                   		<i class="far fa-smile fa-2x"></i>
                                       
                                       <!-- 좋아요 수 -->
                                       &nbsp; ${smileNum }
                                    </div>
                                    <div class="col d-flex align-items-center justify-content-center" style="color: #494949; font-size:14px;font-weight: bold">
                                        <i class="far fa-frown fa-2x"></i>
                                        <!-- 싫어요 수 -->
                                       &nbsp; ${badNum }
                                    </div>
                                </div>
                            </div>
    						
    						
    						<!-- ****************************************************************************************************** -->
    						<!-- 병원 평균 별점 -->
                            <div class="col-4 p-3">
                                <div style="color: #494949;letter-spacing: -0.6px;font-size: 14px;" class="mb-3">
                                   	  이 병원은...
                                </div>
                                <div class="review-in-detail-score-box">
                                    
                                    
                                    <div class="row my-1">
                                        <div class="col-5 p-0 pl-4 d-flex align-items-center justify-content-start" style="letter-spacing: -0.6px;font-size: 12px">자세한 설명</div>
                                        <div class="col-7 p-0">
                                    		
                                    		<c:if test="${hr.explanation eq 'NaN'}">
                                    				<img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                    		</c:if>
                                    		
                                    		
                                            <c:if test="${hr.explanation ge 0 && hr.explanation lt 1}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            
                                            <c:if test="${hr.explanation eq 1}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.explanation gt 1 && hr.explanation lt 2}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.explanation eq 2}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            
                                            <c:if test="${hr.explanation gt 2 && hr.explanation lt 3}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.explanation eq 3}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.explanation gt 3 && hr.explanation lt 4}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.explanation eq 4}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                          
                                            <c:if test="${hr.explanation gt 4 && hr.explanation lt 5}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                           <c:if test="${hr.explanation eq 5}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            
                                        </div>
                                    </div>
                                    
                                    
                                    
                                    
                                    
                                    <div class="row my-1">
                                        <div class="col-5 p-0 pl-4 d-flex align-items-center justify-content-start" style="letter-spacing: -0.6px;font-size: 12px">적절한 금액</div>
                                        <div class="col-7 p-0">
                                        	<c:if test="${hr.price eq 'NaN'}">
                                    				<img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                    		</c:if>
                                        	
                                        	<c:if test="${hr.price ge 0 && hr.price lt 1}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            
                                            <c:if test="${hr.price eq 1}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.price gt 1 && hr.price lt 2}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.price eq 2}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            
                                            <c:if test="${hr.price gt 2 && hr.price lt 3}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.price eq 3}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.price gt 3 && hr.price lt 4}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.price eq 4}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                          
                                            <c:if test="${hr.price gt 4 && hr.price lt 5}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                           <c:if test="${hr.price eq 5}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                        </div>
                                    </div>
                                    
                                    
                                    
                                    
                                    
                                    <div class="row my-1">
                                        <div class="col-5 p-0 pl-4 d-flex align-items-center justify-content-start" style="letter-spacing: -0.6px;font-size: 12px">치료후 결과</div>
                                        <div class="col-7 p-0">
                                        
                                        	<c:if test="${hr.trResult eq 'NaN'}">
                                    				<img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                    		</c:if>
                                        
                                        
                                        	<c:if test="${hr.trResult ge 0 && hr.trResult lt 1}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            
                                            <c:if test="${hr.trResult eq 1}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.trResult gt 1 && hr.trResult lt 2}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.trResult eq 2}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            
                                            <c:if test="${hr.trResult gt 2 && hr.trResult lt 3}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.trResult eq 3}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.trResult gt 3 && hr.trResult lt 4}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.trResult eq 4}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                          
                                            <c:if test="${hr.trResult gt 4 && hr.trResult lt 5}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                           <c:if test="${hr.trResult eq 5}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                       
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
    
                            <div class="col-4 p-3">
                                <div style="color: #494949;letter-spacing: -0.6px;font-size: 14px;" class="mb-3 pt-3">
                                
                                </div>
                                <div class="review-in-detail-score-box">
                                    <div class="row my-1">
                                        <div class="col-5 p-0 pl-4 d-flex align-items-center justify-content-start" style="letter-spacing: -0.6px;font-size: 12px">직원의 친절</div>
                                        <div class="col-7 p-0">
                                        	
                                        	<c:if test="${hr.kindness eq 'NaN'}">
                                    				<img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                    		</c:if>
                                        
                                        	<c:if test="${hr.kindness ge 0 && hr.kindness lt 1}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            
                                            <c:if test="${hr.kindness eq 1}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.kindness gt 1 && hr.kindness lt 2}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.kindness eq 2}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            
                                            <c:if test="${hr.kindness gt 2 && hr.kindness lt 3}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.kindness eq 3}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.kindness gt 3 && hr.kindness lt 4}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.kindness eq 4}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                          
                                            <c:if test="${hr.kindness gt 4 && hr.kindness lt 5}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                           <c:if test="${hr.kindness eq 5}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                      
                                        
                                        </div>
                                    </div>
                                    
                                    
                                    <div class="row my-1">
                                        <div class="col-5 p-0 pl-4 d-flex align-items-center justify-content-start" style="letter-spacing: -0.6px;font-size: 12px">대기시간</div>
                                        <div class="col-7 p-0">
                                        
                                        	<c:if test="${hr.waitingTime eq 'NaN'}">
                                    				<img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                    		</c:if>
                                        
                                        	<c:if test="${hr.waitingTime ge 0 && hr.waitingTime lt 1}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            
                                            <c:if test="${hr.waitingTime eq 1}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.waitingTime gt 1 && hr.waitingTime lt 2}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.waitingTime eq 2}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            
                                            <c:if test="${hr.waitingTime gt 2 && hr.waitingTime lt 3}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.waitingTime eq 3}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.waitingTime gt 3 && hr.waitingTime lt 4}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.waitingTime eq 4}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                          
                                            <c:if test="${hr.waitingTime gt 4 && hr.waitingTime lt 5}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                           <c:if test="${hr.waitingTime eq 5}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                      
                                        
                                        </div>
                                    </div>
                                    
                                    <div class="row my-1">
                                        <div class="col-5 p-0 pl-4 d-flex align-items-center justify-content-start" style="letter-spacing: -0.6px;font-size: 12px">청결함</div>
                                        <div class="col-7 p-0">
                                        	
                                        	<c:if test="${hr.sanitary eq 'NaN'}">
                                    				<img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                    		</c:if>
                                        
                                        	<c:if test="${hr.sanitary ge 0 && hr.sanitary lt 1}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            
                                            <c:if test="${hr.sanitary eq 1}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.sanitary gt 1 && hr.sanitary lt 2}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.sanitary eq 2}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            
                                            <c:if test="${hr.sanitary gt 2 && hr.sanitary lt 3}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.sanitary eq 3}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.sanitary gt 3 && hr.sanitary lt 4}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${hr.sanitary eq 4}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                          
                                            <c:if test="${hr.sanitary gt 4 && hr.sanitary lt 5}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                           <c:if test="${hr.sanitary eq 5}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                      
                                        </div>
                                    </div>
                                    
                                    
                                </div>
                            </div>
    
                        </div>
                        </div>
                        
                        
                    </div>
    
    
    				<!-- 리뷰 검색 -->                
                    <div class="form-group m-0 w-100 mt-4" style="background-color: #FFFFFF;border: solid 2px #494949;">
                        <div class="input-group d-flex align-items-center">
                            <input type="text" id="review_query" class="form-control border-0  p-4 " value="" placeholder="내가 원하는 키워드만 검색해보세요." aria-describedby="landing-search-button" style="font-size: 16px;">
                            <div class="input-group-append">
                                <button type="submit" class="btn-submit-review-query border-0" id="landing-search-button" style="background-color: #494949; padding:12px;">
                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/searchicon_white.svg" alt="Responsive image">
                                </button>
                            </div>
                        </div>
                    </div>
    
                    <!--리뷰 정렬 부분!-->
                    <div class="review-sort-count-box d-flex justify-content-between align-items-center pl-2 py-1" style="height:4%;">
                        <div style="color: #007ee5;font-size: 15px; width:10%; padding-bottom:0;">
                        	    전체 <strong>${reviewNum }</strong>
                        	    <input type="hidden" value="${reviewNum }" id="reviewNum">
                        </div>
    
                        <!---------------------------************************************************************************************************************************------------>
                        
                        <div class="container mt-3">
                                                     
                            <div class="dropdown" style="text-align:right; padding-bottom:2%;">
                              <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" 
                              	style="background-color:white; color:black; font-size:13px; border:1px solid #dee2e6; width:22%; text-align:left;">
                                		기본 정렬
                              </button>
                              <div class="dropdown-menu" style="font-size:13px;">
                                <a class="dropdown-item" href="mainHpReviewDetail.do?orderBy=1&currentPage=1&hpNo=${hp.hpNo }">기본 정렬</a>
                                <a class="dropdown-item" href="mainHpReviewDetail.do?orderBy=2&currentPage=1&hpNo=${hp.hpNo }">최신 순서</a>
                                <a class="dropdown-item" href="mainHpReviewDetail.do?orderBy=3&currentPage=1&hpNo=${hp.hpNo }">평점 높은 순서</a>
                                <a class="dropdown-item" href="mainHpReviewDetail.do?orderBy=4&currentPage=1&hpNo=${hp.hpNo }">평점 낮은 순서</a>  
                              </div>
                            </div>
                        </div>
                        
                        <!--------------------------------------->
                        
                    </div>
                    

                    <script>
                        $(document).ready(function(){
                        $(".dropdown-toggle").dropdown();
                        });
                    </script>

                    
                    <!-- 리뷰텍스트 **************************************************************************************************************************************-->
                    
                    <div class="review-in-detail-text-box">
                        <!--------------------------------------------------------------->
                       
                        <div class="review-in-detail-text-box-review border-top pt-4 pb-5">
                        <div class="row">
    
                            <div class="review-in-detail-text-box-profile col-4">
                            
                            <a href="/community/about_others/31926/" style="color: inherit;text-decoration: none;">
                    
                            
                            <div class="row ml-1 border-bottom pb-2">
                                <div class="col-5">
                                    <div class="reviewer_profile_avatar" style="width:48px;height:100%; margin-bottom:10%;">
                                        <img src="https://d23zwvh2kbhdec.cloudfront.net/media/public/customers/photos/animals/lion.png" style="width:100%;height:auto;">
                                    </div>
                                </div>
    
                                <div class="reviewer_profile_story col-7 text-left pl-0">
                                    
    
                                    <div class="reviewer-name" style="letter-spacing: -0.9px;color: #000000;  font-size: 14px;font-weight: bold; margin-top:5%;">
                                      		  신사동멍청이
                                    </div>
                                    
                                </div>
                            </div>
                            
                            </a>
                            
                            <div class="d-flex justify-content-between align-items-center row ml-1 border-bottom pb-2 pt-2 pl-2">
                                <div>
                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon-purple.svg" class="img-fluid" alt="Responsive image">
                                    <span class="h-100 align-bottom" style="font-size: 18px;font-weight: bold;letter-spacing: -0.9px;color: #007ee5;">
                                        9.3
                                    </span>
                                    <span style="letter-spacing: -0.7px;color: #9b9b9b;font-size: 14px;"> / 10 </span>
                                </div>
                                
                                <div>
                                
                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/goodface_color_small.svg" style="width:21px;height:21px;" alt="Responsive image">
                                
                                </div>
                                
                            </div>
    
                            <div class="py-2">
                                
                                <div class="row ml-4 d-flex justify-content-between border-bottom mt-2">
                                    <div style="font-size:12px;font-weight:500;">자세한 설명</div>
                                    <div>
                                        
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                    </div>
                                </div>
                                
                                <div class="row ml-4 d-flex justify-content-between border-bottom mt-2">
                                    <div style="font-size:12px;font-weight:500;">직원의 친절</div>
                                    <div>
                                        
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                         
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                           
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
    
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
    
                                        
                                    </div>
                                </div>
                                
                                <div class="row ml-4 d-flex justify-content-between border-bottom mt-2">
                                    <div style="font-size:12px;font-weight:500;">적절한 금액</div>
                                    <div>
                                        
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
    
                                        
                                    </div>
                                </div>
                                
                                <div class="row ml-4 d-flex justify-content-between border-bottom mt-2">
                                    <div style="font-size:12px;font-weight:500;">대기시간</div>
                                    <div>
                                    
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            
    
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            
    
                                        
                                    </div>
                                </div>
                                
                                <div class="row ml-4 d-flex justify-content-between border-bottom mt-2">
                                    <div style="font-size:12px;font-weight:500;">치료후 결과</div>
                                    <div>
                                        
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
    
                                        
                                    </div>
                                </div>
                                
                                <div class="row ml-4 d-flex justify-content-between border-bottom mt-2">
                                    <div style="font-size:12px;font-weight:500;">청결함</div>
                                    <div>
                                        
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
    
                                        
                                    </div>
                                </div>
                                
                            </div>
                            
                            </div>
    
                            <div class="review-in-detail-text-box-content col-8 pl-5">
    
                                
                                <div class="d-flex justify-content-between">
                                     <div class="rounded-pill px-2" style="background-color: #007ee5; color:#FFFFFF;font-size: 10px;">
                                        		영수증 인증된 리뷰
                                     </div>
                                    <div style="font-size: 11px;color: #9b9b9b;">
                                        4월 21일, 2020년 등록
                                    </div>
                                </div>
                                
    
                          
                                        <div class="toast-message content-box text-left class49 mb-4" style="font-size: 14px;font-weight: 300;letter-spacing: -0.6px;">
										                                            동네에 치과가 많지만 어머니가 친절하면서 과잉진료가 없는곳을 원하셔서 검색하다가 방문했습니다.
										    환자분들이 많아서 예약시간보다 30~40분 기달렸지만 그래도 의사분이 꼼꼼히 봐주시고 원인과 다음 치료에 대해 자세히 설명히 해주셔서 어머니가 아주 만족하셨습니다.  그래서 기다림은 상관없을것 같습니다.
										    다음 치료를 받으실지 어머니가 결정하셨고 계속 방문 예정입니다
										    병원 안에는 소독제와 세면대가 있던데 손도 씼을수 있습니다.
                                        </div>
    
    
                                        <div class="d-flex my-2" style="overflow-x:auto;">
                                            
                                        </div>
    
                            </div>
                        </div>
                        </div>
    
                         

                        </div>
						<div class="pagination">
							
						
						</div>                        
                </div>
                
                <script>
                	
                
                </script>
                
                
                <!-- QnA -->
                <div class="row p-3 w-100">
                <div class="col-20 w-100">
                <a class="anchor" id="qnadetailinfo"></a>
   				
   				
   				<c:if test="${!empty qnaList }">

                <div class="my-5 border-top pt-5 qna-box">
                    <div class="d-flex justify-content-between">
                        <div class="text-left mb-2" style="font-size: 20px;">
                            Q&amp;A <b style="color: #007ee5;">${qnaNum }</b>
                        </div>
                        <div class="color9b mt-1" style="font-weight: 300;letter-spacing: -0.5px;">
                          		 병원 관계자에게 질문 할 수 있습니다.
                        </div>
                    </div>
    				
                    <div style="border-top: solid 1px #9b9b9b;">
         
                            <div class="border-bottom">
                                <div class="row px-3 pt-4 pb-3">
                                    <div class="col-1" style="font-weight: bold;letter-spacing: -0.5px;">
                                        <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/Q.svg" class="img-fluid mr-1 align-top" alt="Responsive image">
                                    </div>
                                    
                                    <div class="col-11 pl-0 text-left" style="font-weight: bold;letter-spacing: -0.5px;">
                                        		${qnaList[0].qnaTitle }
                                    </div>
                                    <b style="font-size: 12px;color: #9b9b9b;padding-left:8.5%;">${qnaList[0].qnaDate }</b>
                                </div>
    
                                <div class="row px-3 py-2">
                                    <div class="col-1 offset-1 pl-0 pr-2">
                                        
                                       <c:if test="${empty qnaList[0].drProfile || qnaList[0].drProfile eq ''}">
	                                    	<img style="width:100%; height:auto;" src="https://d23zwvh2kbhdec.cloudfront.net/media/public/customers/photos/animals/hamster.png">
	                                    </c:if>
	                                    	
	                                  	<c:if test="${qnaList[0].drProfile ne '' && !empty qnaList[0].drProfile}">
	                                  		<c:set var="fullPath" value="/projectFiles/${qnaList[0].drProfile }"/>
											<img src="${fullPath}" style="width: 33%; height: 33%;"/>
	                              
	                                  	</c:if> 
                                    
                                        
                                    </div>
                                    <div class="col-10 text-left pl-3" style="font-size: 14px;font-weight: 300;letter-spacing: -0.7px;">
                                       	<c:if test="${qnaList[0].yn eq 'N' }">
                                       			답변 대기 중입니다.
                                       </c:if>
                                       
                                        <c:if test="${qnaList[0].yn eq 'Y' }">
                                      	 	${qnaList[0].reply }
                                       </c:if>
                                        	
                                        <br>
                                        
                                        <c:if test="${qnaList[0].yn eq 'N' }">
                                        </c:if>
                                        
                                         <c:if test="${qnaList[0].yn eq 'Y' }">
                                        	  <b style="font-size: 12px;color: #9b9b9b;">${qnaList[0].qnaReDate }</b>
                                        </c:if>
                                        
                                    </div>
                                </div>
                                <div class="row px-3 pt-2 pb-4">
                                    <div class="col-11 offset-1 text-left pl-0">
                                        <button style="letter-spacing: -0.6px; color: #007ee5;font-size: 12px;" class="view-qna btn btn-transparent" onclick="goHpQnaDetail();">
                                         		   자세히 보기 <i class="fas fa-chevron-right"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="border-bottom">
                                <div class="row px-3 pt-4 pb-3">
                                    <div class="col-1" style="font-weight: bold;letter-spacing: -0.5px;">
                                        <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/Q.svg" class="img-fluid mr-1 align-top" alt="Responsive image">
                                    </div>
                                    
                                    <div class="col-11 pl-0 text-left" style="font-weight: bold;letter-spacing: -0.5px;">
                                        		${qnaList[1].qnaTitle }
                                    </div>
                                    <b style="font-size: 12px;color: #9b9b9b;padding-left:8.5%;">${qnaList[1].qnaDate }</b>
                                </div>
    
                                <div class="row px-3 py-2">
                                    <div class="col-1 offset-1 pl-0 pr-2">
                                    
	                                     <c:if test="${empty qnaList[1].drProfile || qnaList[1].drProfile eq ''}">
	                                    	<img style="width:100%; height:auto;" src="https://d23zwvh2kbhdec.cloudfront.net/media/public/customers/photos/animals/hamster.png">
	                                    </c:if>
	                                    	
	                                  	<c:if test="${qnaList[1].drProfile ne '' && !empty qnaList[1].drProfile}">
	                                  		<c:set var="fullPath" value="/projectFiles/${qnaList[1].drProfile }"/>
											<img src="${fullPath}" style="width: 33%; height: 33%;"/>
	                              
	                                  	</c:if> 
                                    
                                    </div>
                                    <div class="col-10 text-left pl-3" style="font-size: 14px;font-weight: 300;letter-spacing: -0.7px;">
                                   		<c:if test="${qnaList[1].yn eq 'N' }">
                                       			답변 대기 중입니다.
                                       </c:if>
                                       
                                        <c:if test="${qnaList[1].yn eq 'Y' }">
                                      	 	${qnaList[1].reply }
                                       </c:if>
                                        	
                                        <br>
                                        
                                        <c:if test="${qnaList[1].yn eq 'N' }">
                                        </c:if>
                                        
                                         <c:if test="${qnaList[1].yn eq 'Y' }">
                                        	  <b style="font-size: 12px;color: #9b9b9b;">${qnaList[1].qnaReDate }</b>
                                        </c:if>
                                        

                                    </div>
                                </div>
                                <div class="row px-3 pt-2 pb-4">
                                    <div class="col-11 offset-1 text-left pl-0">
                                        <button style="letter-spacing: -0.6px;color: #007ee5;font-size: 12px;" class="view-qna btn btn-transparent" onclick="goHpQnaDetail();">
                                         		   자세히 보기 <i class="fas fa-chevron-right"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            
                      	</div>
                            
                            
                            <div>
                                <button class="btn btn-blackcontent w-100 mt-3 p-2 view-qna" style="font-size: 18px; background-color: #007ee5; color: white;" 
                                onclick="goHpQnaDetail();">
                                    <strong>${qnaNum }</strong>개의 질문 모두 보기
                                </button>
                            </div>
                    </div>
                </c:if>
                
                <c:if test="${empty qnaList }">
                	<div class="my-5 border-top pt-5 qna-box">
                    <div class="d-flex justify-content-between">
                        <div class="text-left mb-2" style="font-size: 20px;">
                            Q&amp;A <b style="color: #007ee5;">${qnaNum }</b>
                        </div>
                        <div class="color9b mt-1" style="font-weight: 300;letter-spacing: -0.5px;">
                          		 병원 관계자에게 질문 할 수 있습니다.
                        </div>
                    </div>
    				
                    <div style="border-top: solid 1px #9b9b9b;">
         					<div class="text-center my-4" style="letter-spacing: -0.7px;font-size: 1rem;color:#9b9b9b;font-weight:bold;">
                            <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_08_04/img/nonpage.svg" class="img-fluid mb-2" alt="Responsive image">
                            <p class="m-0">아직 등록된 질문이 없습니다.</p>
                            <p class="m-0">첫 질문을 등록해보세요!</p>
                        </div>
         					
                      	</div>
                            
                            <div>
                                <button class="btn btn-blackcontent w-100 mt-3 p-2 view-qna" style="font-size: 18px; background-color: #007ee5; color: white;" 
                                onclick="goHpQnaDetail();">
                                    <strong>병원에게 질문하기</strong>
                                </button>
                            </div>
                    </div>
                
                </c:if>
                
                </div>
                </div>
                </div>
    
    
            </div>
    
    
        </div>
    </div>
    
    
    <script>
    <!-- 리뷰 에이작스 처리 ********************************************************************************************************-->

    
    
    
    
    
    
   
  
  	 // 병원 qna 처리 ********************************************************************************************************-
    	function goHpQnaDetail(){
    		var hpNo = $("#hpNoAjax").val();
    		var hpName = $("#hpNameAjax").val();
    		
    		location.href="hpQnaDetail.do?hpNo=" + hpNo + "&hpName=" + hpName;
    		
    	}
  	 
    </script>
    
    
    
    <script>

        // tooltip 활성화.
        
            $(function () {
                $('[data-toggle="tooltip"]').tooltip()
            });
        
    
        // 리뷰검색 & 리뷰정렬
        $(function() {
            $(document).on('click', '.btn-submit-review-query', function() {
    
                
                    var query = encodeURI($('#review_query').val());
                    var order_review = $('#sort-select-box').find('option:selected').val();
    
                    // query가 비어있으면 alert.
                    if (!query){
                        alert('검색어를 입력하세요!');
                        return;
                    }
    
                    var url = "/ajax_get_review_list/6603/" + '?q=' + query;
    
                    if (order_review) {
                        url += '&order_review=' + order_review
                    }
    
                    getWithAjax(url, function(data) {
                        $('.review-in-detail-text-box').html(data.html);
    
                        // 검색어 highlight.
                        var review_query = $('#review_query').val();
                        if (review_query) {
                            $('.treatment-tag-box, .price-content-box, .content-box').mark(review_query);
                        }
                    }, function(status) {});
                
    
            });
    
            // form 으로 wrap 되어 있지 않는 input은 엔터키를 쳐도 작동하지 않는 이슈 해결.
            $(document).on('keypress', '#review_query', function(event){
                if(event.keyCode == 13){
                    $('.btn-submit-review-query').click();
                }
            });
    
            // 정렬의 select option 중 하나를 변경할 때.
            $(document).on('change', '#sort-select-box',function() {
    
                
                    var order_review = $(this).find('option:selected').val();
                    var review_query = $('#review_query').val();
    
                    var qs = '';
                    if (review_query) {
                        qs += '&q=' + review_query;
                    }
                    if (order_review){
                        qs += '&order_review=' + order_review;
                    }
                    if (qs){
                        qs = '?' + qs.slice(1);
                    }
    
                    var url = "/ajax_get_review_list/6603/" + qs;
    
                    getWithAjax(url, function(data) {
                        $('.review-in-detail-text-box').html(data.html);
    
                        // 검색어 highlight.
                        var review_query = $('#review_query').val();
                        if (review_query){
                            $('.treatment-tag-box, .price-content-box, .content-box').mark(review_query);
                        }
    
                    }, function(status) {});
                
            });
    
            // 페이지 링크 클릭시.
            $(document).on('click', '.page-link', function(e) {
                e.preventDefault();
    
                var extra_url = $(this).attr('href');
                getWithAjax("/ajax_get_review_list/6603/" + extra_url,
                    function(data) {
                        $('.review-in-detail-text-box').html(data.html);
    
                        // 검색어 highlight.
                        var review_query = $('#review_query').val();
                        if (review_query){
                            $('.treatment-tag-box, .price-content-box, .content-box').mark(review_query);
                        }
                    },function(status) {}
                )
            });
    
            // 리뷰 검색 초기화.
            $(document).on('click', '.reset-search', function(e) {
                // 리뷰 검색어 초기화 및 정렬 초기화
                $('#review_query').val('');
                $('#sort-select-box').val('');
                $('#sort-select-box').selectpicker('refresh');
    
                var url = "/ajax_get_review_list/6603/";
    
                getWithAjax(url, function(data) {
                    $('.review-in-detail-text-box').html(data.html);
    
                }, function(status) {});
            })
    
        });
    
    
        // 자동 완성 모듈 실행
        auto_complete_on_v2_1();
    
        // 자동완성 텍스트 클릭시 검색
        $(document).on('click', '.auto-list-link', function() {
            var search_query = $(this).text();
            $('#query-search-box').val(search_query);
            $('#search-form').submit();
        })
      
    
    
        // 검색창 clear button
        $('#query-search-box').on('input propertychange', function() {
          var $this = $(this);
          var visible = Boolean($this.val());
          $('.form-control-clear').toggleClass('d-none', !visible);
        }).trigger('propertychange');
    
        $('.form-control-clear').click(function() {
          $('#query-search-box').val('')
            .trigger('propertychange').focus();
        });
    
      
    
    
        // 의사/병원 정보 수정요청 버튼 클릭시.
        $('.open_request_wrong_info').on('click', function() {
    
            if(logged_in == 'false' || is_customer == 'false'){
                alert('로그인을 한 후에 가능합니다!');
                $('#registerModal').modal();
            } else {
                // 리뷰 신고 form 비우기.
                $('.request-wrong-info-form textarea[name="comment"]').val('');
    
                $('#requestWrongInfoModal').modal();
            }
        });
        // 의사/병원 정보 form submit.
        $('.request-wrong-info-form').on('submit', function(e) {
            e.preventDefault();
    
            var doctor_id = $('.request-wrong-info-form input[name="doctor_id"]').val();
            var comment = $('.request-wrong-info-form textarea[name="comment"]').val();
    
            var form_data = {doctor_id: doctor_id, comment: comment};
    
            postWithAjax('/ajax_request_wrong_info/', form_data,
                    function(data){
                        var errors_info_request_wrong_info = $('.errors-info-request-wrong-info');
                        if (data.status == 'success'){
                            alert('의사/병원 정보 수정요청 접수되었습니다!');
                            $('#requestWrongInfoModal').modal('toggle');
                        } else if (data.status == 'not_logged_in'){
                            alert('로그인하신 후에 진행해주세요!');
                            $('#requestWrongInfoModal').modal('toggle');
                        } else if (data.status == 'already done'){
                            alert('이미 요청하셨습니다!');
                            $('#requestWrongInfoModal').modal('toggle');
                        } else if (data.status == 'fail'){
                            if (data.errors.comment){
                                errors_info_request_wrong_info.empty()
                                errors_info_request_wrong_info.append(html_error_info.f(data.errors.comment[0]));
                            } else {
                                alert('오류가 났습니다. 다시 시도해 주세요.');
                                $('#requestWrongInfoModal').modal('toggle');
                            }
                        }
                    },
                    function(status){
                        if (status = 403)
                            $('#islimited-popup-modal').modal('show');
                    }
            )
        });
    
        // 리뷰하기 페이지로 이동.
        $(document).on('click', '.open_review_submit', function() {
            ga('send', 'pageview', '/open_review/start/');
            location.href = "/mdd_event/?past_url=https%3A//www.modoodoc.com/doctors/6603/%25EC%259D%25B4%25EB%25AF%25B8%25EC%25A7%2580%25EC%25B9%2598%25EA%25B3%25BC%25EC%259D%2598%25EC%259B%2590-%25EC%2584%259C%25EC%259A%25B8%25EC%258B%259C-%25EC%2584%259C%25EC%25B4%2588%25EA%25B5%25AC/";
        });
        $(document).on('click', '.button_index_open', function() {
            ga('send', 'pageview', '/open_review/start/');
            location.href = "/mdd_event/?past_url=https%3A//www.modoodoc.com/doctors/6603/%25EC%259D%25B4%25EB%25AF%25B8%25EC%25A7%2580%25EC%25B9%2598%25EA%25B3%25BC%25EC%259D%2598%25EC%259B%2590-%25EC%2584%259C%25EC%259A%25B8%25EC%258B%259C-%25EC%2584%259C%25EC%25B4%2588%25EA%25B5%25AC/";
        });
    
        
       
        // 북마크 & QnA
        $(function() {
            $(document).on('click', '.cancel-bookmark', function() {
                postWithAjax('/community/delete/bookmark_doctor/6603/', {},
                    function(data){
                        $('.cancel-bookmark').replaceWith(data.html);
                    }, function(status){}
                )
            });
    
            $(document).on('click', '.create-bookmark', function() {
                
                postWithAjax('/community/create/bookmark_doctor/6603/', {},
                    function(data){
                        $('.create-bookmark').replaceWith(data.html);
                    }, function(status){}
                )
                
            });
    
            $(document).on('click', '.view-qna', function(e) {
                
            })
        });
    
        // 리뷰와 함께 제출된 이미지 클릭시 전체 화면 modal
        $('.cse-image').on('click', function() {
            $('#imageModal img').attr('src', $(this).attr('src'));
            $('#imageModal').modal();
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
    