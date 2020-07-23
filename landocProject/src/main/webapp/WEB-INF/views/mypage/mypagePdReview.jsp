<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@ page session="false" %> --%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <title>상품리뷰</title>
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
</head>

<body>
   <!-- Page Preloder -->
   <div id="preloder">
      <div class="loader"></div>
   </div>

   <%@ include file="../static/header.jsp" %>
	<div class="container" style="margin-top: 80px;text-align: center">
        <div class="p-4" style="width: 1000px; display: inline-block;">
 
            
    
            <div class="review-list-title text-left" style="font-size: 30px;">
                <a href="clientMypage.do" style="color: #0071ce;letter-spacing: -0.5px;">
                    나의 리뷰
                </a>
                >
                <strong class="ml-2">상품리뷰</strong>
            
            </div>
    
                
                <!-- <div class="pb-2 mt-5 review-list-subtitle text-left" style="font-size: 25px; border-bottom: solid; border-color:rgba(0, 0, 0, 0.514);">답변 대기중인 QnA</div> -->
                <!-- <table class="table w-100 border-bottom">
                    <tbody>
                    <tr style="background-color: #f8f8f8;color: #9b9b9b;">
                        <th class="p-3" style="text-align: center;">분류</th>
                        <th class="p-3" style="text-align: center;">제목</th>
                        <th class="p-3" style="text-align: center;">작성일자</th>
                        <th class="p-3" style="text-align: center;">진행상황</th>
                    </tr>
    
                    
                    <tr class="color49" style="font-size:14px;">
                        <td style="vertical-align:middle; text-align: center;">주문문의</td>
                        <td style="vertical-align:middle; text-align: center;">언제쯤 도착할까요?</td>
                        <td style="vertical-align:middle; text-align: center;">2020년 7월 6일 1:14 오후</td>
                        <td style="vertical-align:middle; text-align: center;">
                            답변대기중
                        </td>
                    </tr>
                   </tbody>
                </table> -->
                
    
                <!-- <div class="pb-2 mt-5 review-list-subtitle d-flex justify-content-between"  style="font-size: 25px; border-bottom: solid; border-color: rgba(0, 0, 0, 0.514);">
                    답변완료된 QnA
                </div> -->
                <c:forEach var="r" items="${pdReviewList}">
                <div class="card mt-3 mb-3 text-left">
					<!-- for문 돌려서 리스트 뽑아낼 때 data-targer, href 숫자 증가 시키기-->
                    <div class="card-header newreview p-4" data-toggle="collapse" data-target="#collapse-${r.pdReviewNo}" href="#collapse-${r.pdReviewNo}" aria-expanded="false" aria-controls="collapse-${r.pdReviewNo}" style="cursor: pointer;">
                        <div class="card-title m-0">
                            <div class="d-flex align-items-center justify-content-between">
                                <div class="color49 font-weight-bold" style="font-size: 21px;">
                                 ${r.pdName}
                                    
                                    <div class="color9b" style="font-size: 12px;">
                                    	 주문 날짜 : ${r.orderDate}
                                    </div>
                                </div>
                                <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_05/img/arrow_bottom.svg" class="img-fluid" alt="Responsive image" style="width:24px;height:24px;">
                            </div>
                        </div>
                    </div>
                    <!-- for문 돌려서 리스트 뽑아낼 때 div id 숫자 증가 시키기-->
                    <div id="collapse-${r.pdReviewNo}" class="card-body collapse p-4">
                        
                        <div class="row">
                          
                            <div class="col-9">
                                <div class="color49 toast-message mb-4" style="font-size: 14px;">
                                   	${r.pdReviewContent}
                                </div>
                                
                            </div>
                        </div>
                       
						<div style="float:right;">
							<a href="#" class="review-list-detail">
								수정
							 </a>
							 |
                            <a href="#" class="review-list-detail">
								재구매
                            </a>
                        </div>
                    </div>
               </div>
               </c:forEach>
				
			   <div style="position:fixed;bottom:70px;right:100px;z-index: 999;">
				<a href="https://pf.kakao.com/_VAryxb" target="_blank">
					<img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/katalk_Q.png" style="width:auto;height:80px;">
				</a>
			</div>
        </div>
    </div>
   

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