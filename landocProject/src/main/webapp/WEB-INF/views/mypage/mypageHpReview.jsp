<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ page session="false" %> --%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>나의 병원리뷰</title>
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

 <script src="https://kit.fontawesome.com/02aa01148e.js" crossorigin="anonymous"></script>
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   <![endif]-->

<style>
	img{width:18px; height:18px;}
</style>



</head>
<body>
   <!-- Page Preloder -->
   <div id="preloder">
      <div class="loader"></div>
   </div>

   <%@ include file="../static/header.jsp"%>
   <div class="container" style="margin-top: 80px; text-align: center">
      <div class="p-4" style="width: 1000px; display: inline-block;">



         <div class="review-list-title text-left" style="font-size: 30px;">
            <a href="clientMypage.do"
               style="color: #0071ce; letter-spacing: -0.5px;"> 나의 리뷰 </a> > <strong
               class="ml-2">병원리뷰</strong>

         </div>

         <c:if test="${empty hpReList}">
          <div class="color9b text-center" style="font-size: 1.313rem; margin-top: 73.7px;letter-spacing: -0.8px;">
                <div class="my-3 text-center">
                    <p class="m-0">회원님의 리뷰가 아직 없습니다.</p>
                </div>
           </div>
         </c:if>
         <c:if test="${not empty hpReList}">
         <c:forEach var="hr" items="${hpReList}">
            <div class="card mt-3 mb-3 text-left">
               <!-- for문 돌려서 리스트 뽑아낼 때 data-targer, href 숫자 증가 시키기-->
               <div class="card-header newreview p-4" data-toggle="collapse"
                  data-target="#collapse-${hr.hpReNo}"
                  href="#collapse-${hr.hpReNo}" aria-expanded="false"
                  aria-controls="collapse-${hr.hpReNo}" style="cursor: pointer;">
                  <div class="card-title m-0">
                     <div class="d-flex align-items-center justify-content-between">
                        <div class="color49 font-weight-bold" style="font-size: 21px;">
                           ${hr.hpName}

                           <div class="color9b" style="font-size: 12px;">작성날짜 :
                              ${hr.hpReDate}</div>
                            <div class="color9b" style="font-size: 12px;">승인여부 :
                            ${hr.status}</div>
                        </div>
                        <img
                           src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_05/img/arrow_bottom.svg"
                           class="img-fluid" alt="Responsive image"
                           style="width: 24px; height: 24px;">
                     </div>
                  </div>
               </div>
               <!-- for문 돌려서 리스트 뽑아낼 때 div id 숫자 증가 시키기-->
               <div id="collapse-${hr.hpReNo}" class="card-body collapse p-4">

                  <div class="row">
                  
                  <div class="review-in-detail-text-box-profile col-4">

                            </a>
                            
                            <div class="d-flex justify-content-between align-items-center row ml-1 border-bottom pb-2 pt-2 pl-2">
                                <div>
                               		<i class="fas fa-star fa-lg" style="color:#007ee5;"></i>
                                    <span class="h-100 align-bottom" style="font-size: 20px;font-weight: bold;letter-spacing: -0.9px;color: #007ee5;">
                                       &nbsp; ${hr.avgRate }
                                    </span>
                                    <span style="letter-spacing: -0.7px;color: #9b9b9b;font-size: 14px;"> / 5 </span>
                                </div>
                                
                               <c:if test="${hr.like eq 'Y' }">
	                                <div style="color:#007ee5;">
	                                	<i class="far fa-smile fa-2x"></i>
	                                </div>
                               </c:if>
                                
                                <c:if test="${hr.like eq 'N' }">
	                                <div>
										<i class="far fa-frown fa-2x"></i>
	                                </div>
                               </c:if>
                                
                                
                            </div>
    
                            <div class="py-2">
                                
                                <div class="row ml-4 d-flex justify-content-between border-bottom mt-2">
                                    <div style="font-size:12px;font-weight:500;">자세한 설명</div>
                                    <div>
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
                                
                                <div class="row ml-4 d-flex justify-content-between border-bottom mt-2">
                                    <div style="font-size:12px;font-weight:500;">직원의 친절</div>
                                    <div>
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
                                
                                <div class="row ml-4 d-flex justify-content-between border-bottom mt-2">
                                    <div style="font-size:12px;font-weight:500;">적절한 금액</div>
                                    <div>
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
                                
                                <div class="row ml-4 d-flex justify-content-between border-bottom mt-2">
                                    <div style="font-size:12px;font-weight:500;">대기시간</div>
                                    <div>
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
                                
                                <div class="row ml-4 d-flex justify-content-between border-bottom mt-2">
                                    <div style="font-size:12px;font-weight:500;">치료후 결과</div>
                                    <div>
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
                                
                                <div class="row ml-4 d-flex justify-content-between border-bottom mt-2">
                                    <div style="font-size:12px;font-weight:500;">청결함</div>
                                    <div>
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
 
                     <div class="col-7" style="float:right;margin-top:30px;margin-left:20px;">
                        <div class="toast-message content-box text-left class49 mb-4" style="font-size: 14px;font-weight: 300;letter-spacing: -0.6px;">
						                   ${hr.hpReContent }
                                    </div>
                         
                     
                    </div>
                    	
                  </div>

                  <div style="float: right;">
                  <c:url var="mainHpReview" value="mainHpReviewDetail.do">
                     <c:param name="hpNo" value="${hr.hpNo}"/>
                  </c:url>
                     <a href="${mainHpReview}" class=""> 병원이동 </a>
                  </div>
               </div>
            </div>
         </c:forEach>
         </c:if>

         <div style="position: fixed; bottom: 70px; right: 100px; z-index: 999;">
            <a href="https://pf.kakao.com/_VAryxb" target="_blank"> <img
               src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/katalk_Q.png"
               style="width: auto; height: 80px;">
            </a>
         </div>
      </div>
   </div>
  <!--paginnation start-->
	<nav aria-label="Page navigation">
		<ul class="pagination"
			style="justify-content: center; padding-bottom: 30px;">
			<!-- disabled가 있으면 마우스 커서가 금지표시로 바뀐다. -->
			<c:if test="${pi.currentPage eq 1 }">
				<li class=disabled style="width: 30px;"><a href="#"
					aria-label="Previous"> <span aria-hidden="true">«</span>
				</a></li>
			</c:if>

			<c:if test="${pi.currentPage gt 1 }">
				<c:url var="blistBack" value="myHpReview.do">
					<c:param name="page" value="${pi.currentPage -1 }" />
				</c:url>
				<li style="width: 30px;"><a href="${blistBack}"
					aria-label="Previous"> <span aria-hidden="true">«</span>
				</a></li>
			</c:if>

			<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
				<c:if test="${p eq pi.currentPage }">
					<li class="active" style="width: 30px;"><a
						href="#" style="color:#a82400;">${p}</a></li>
				</c:if>
				<c:if test="${p ne pi.currentPage }">
					<c:url var="blistCheck" value="myHpReview.do">
						<c:param name="page" value="${p }" />
					</c:url>
					<li class="active" style="width: 30px;"><a
						href="${blistCheck }">${p}</a></li>
				</c:if>

			</c:forEach>
			<c:if test="${pi.currentPage eq pi.maxPage }">
				<li class=disabled style="width: 30px;"><a href="#"
					aria-label="Previous"> <span aria-hidden="true">»</span>
				</a></li>
			</c:if>


			<c:if test="${pi.currentPage lt pi.maxPage }">
				<c:url var="blistNext" value="myHpReview.do">
					<c:param name="page" value="${pi.currentPage +1 }" />
				</c:url>
				<li style="width: 30px;"><a href="${blistNext}"
					aria-label="Previous"> <span aria-hidden="true">»</span>
				</a></li>
			</c:if>
		</ul>
	</nav>
	<!--pagination end-->
 

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