<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String insertMsg = (String)request.getAttribute("insertMsg");
%>
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


	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    
    <script src="https://kit.fontawesome.com/02aa01148e.js" crossorigin="anonymous"></script>
    
    
    <style>
    .qna-title {
    font-size: 28px;
    font-weight: bold;
    letter-spacing: -0.9px;
	}


    </style>


</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<%@ include file="../static/header.jsp" %>
    
    <link rel="stylesheet" type="text/css" href="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/mdd_event/style.css">


    <div style="text-align: center;">
        
        <div style="width: 960px; display: inline-block">
            <div class="row px-3 py-5">
                <div class="col-8 text-left">
        
                    
                    <div class="point-breadcrumb text-left">
                    	<c:url var="mainHpReview" value="mainHpReviewDetail.do">
	                     <c:param name="hpNo" value="${hpNo}"/>
	                     <c:param name="hpName" value="${hpName }"/>
	                  </c:url>
	                     <a href="${mainHpReview}" style="color:  #0071ce;letter-spacing: -0.5px; font-size: 20px;"> ${hpName } </a>
                        >
                        <strong class="ml-2" style="font-size: 20px;">QnA</strong>
                    </div>
                    
                    <div class="qna-title my-4">
                       	총  ${qnaCount }건의 질문 내역
                    </div>
    
                    <!-- QnA -->
                    <div style="border-top: solid 1px #9b9b9b;">
                        
                        <c:if test="${!empty list }">
                        
                        	<c:forEach var="qna" items="${list }">
                        	
	                            <div class="border-bottom">
	                                <div class="row px-3 pt-4 pb-3">
	                                    <div class="col-1  " style="font-weight: bold;letter-spacing: -0.5px;">
	                                        <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/Q.svg" class="img-fluid mr-1 align-top" alt="Responsive image">
	                                    </div>
	                                    <div class="col-11 pl-0 text-left" style="font-weight: bold;letter-spacing: -0.5px;">
	                                        	${qna.qnaTitle }
	                                    </div>
	                                     <b style="font-size: 12px;color: #9b9b9b;padding-left:8.5%;">${qna.qnaDate }</b>
	                                </div>
	    
                                <div class="row px-3 py-2">
                                    <div class="col-1 offset-1 pl-0 pr-2">
                                    	<c:if test="${empty qna.drProfile || qna.drProfile eq ''}">
                                    		<img style="width:100%; height:auto;" src="https://d23zwvh2kbhdec.cloudfront.net/media/public/customers/photos/animals/hamster.png">
                                    	</c:if>
                                    	
                                    	<c:if test="${qnaList[0].drProfile ne '' && !empty qnaList[0].drProfile}">
                                    		<c:set var="fullPath" value="/projectFiles/${qna.drProfile }"/>
											<img src="${fullPath}" style="width: 33%; height: 33%;"/>
                                
                                    	</c:if>
                                      
                                    </div>
                                    <div class="col-10 text-left pl-3" style="font-size: 14px;font-weight: 300;letter-spacing: -0.7px;">
                                        <c:if test="${qna.yn eq 'N' }">
                                        	답변 대기 중입니다.
                                        </c:if>
                                        
                                         <c:if test="${qna.yn eq 'Y' }">
                                        	${qna.reply }
                                        </c:if>
                                        
                                        
                                        <div class="d-flex justify-content-between" style="font-size: 12px;color: #9b9b9b;">
                                            <div>
                                            
	                                            <c:if test="${qna.yn eq 'N' }">
		                                        </c:if>
		                                        
		                                         <c:if test="${qna.yn eq 'Y' }">
		                                        	 ${qna.qnaReDate }
		                                        </c:if>
                                            
                                            </div>
                                          
                                        </div>
                                    </div>
    
                                </div>
                                
                                <!--공간 띄우기 용-->
                                <div class="row px-2 py-4" id="posit">
                
                                </div>

                            </div>
                           </c:forEach>
                        </c:if>
                        
                        <c:if test="${empty list }">
                        	<div class="text-left my-4" style="letter-spacing: -0.7px;font-size: 18px;">
				               ${hpName }에 아직 <b style="color: #b00020">질문이 없습니다.</b> <br>
				                                직접 궁금하신 점을 남겨주시겠어요?
				             </div>
                        </c:if>
                        
                    </div>
    
                    <div class="my-5">
                        <div style="font-size: 18px;font-weight: bold;letter-spacing: -0.6px;" class="mb-2">
                            <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/question_mark.svg" class="img-fluid align-top" alt="Responsive image">
                           		 원하는 질문이 없으신가요?
                        </div>
    
                        <form id="comment-form" action="insertHpQna.do" method="get" onsubmit="return validate();">
                            <input type="hidden" name="hpNo" value="${hpNo }" id="hpNo">
                            <input type="hidden" name="hpName" value="${hpName }" id="hpName">

                            <textarea class="form-control" rows="5" id="comment" name="comment" style="border: solid 1px #494949;" placeholder="${hpName }에 대해 궁금한 점을 물어보세요!"></textarea>
                            <div class="form_error_messages">
                                <div class="errors-info">
    
                                </div>
                            </div>
                            
                            <c:if test="${empty loginClient && empty loginDrClient }">
	                            <button type="button" onclick="needLogin();" class="btn btn-mdd w-100 p-3 my-2" style="color:white;font-size: 18px;font-weight: bold;letter-spacing: -0.5px;background-color: #007ee5;">
	                                	${hpName } 질문하기
	                            </button>
                            
                            </c:if>
                            
                            
                            <c:if test="${!empty loginClient && empty loginDrClient }">
	                            <button type="submit" class="btn btn-mdd w-100 p-3 my-2" style="color:white;font-size: 18px;font-weight: bold;letter-spacing: -0.5px;background-color: #007ee5;">
	                                	${hpName } 질문하기
	                            </button>
                            </c:if>
                            
                        </form>
                    </div>
                </div>
    
    
            </div>
        </div>
    </div>
    
    
    
    <script>
    	function needLogin(){
    		alert("로그인이 필요한 서비스 입니다.");
    		location.href="loginView.do";
    	}
    	
    	
    	function validate(){
    		if($("#comment").val() == ''){
    			alert("내용을 입력해주세요.");
    			return false;
    		}
    		return true;
    	}
    	
    	
    	<%if(insertMsg !=null){%>
    		alert("병원 QnA등록에 성공했습니다.");
    	<%}%>
    	
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
