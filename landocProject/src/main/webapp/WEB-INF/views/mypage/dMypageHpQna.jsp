<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String updateMsg = (String)request.getAttribute("updateMsg");
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
   <link href="<%=request.getContextPath()%>/resources/img/favicon.ico" rel="shortcut icon"/>

   <!-- Google font -->
   <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap" rel="stylesheet">
 
   <!-- Stylesheets -->
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css"/>
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css"/>
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css"/>
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/slicknav.min.css"/>

   <!-- Main Stylesheets -->
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css"/>

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

   <div class="container" style="margin-top: 80px;text-align: center">
        <div class="p-4" style="width: 1000px; display: inline-block;">
 
 			<div class="review-list-title text-left" style="font-size: 30px;">
				<a href="doctorMypage.do"
					style="color: #0071ce; letter-spacing: -0.5px;"> 마이페이지 </a> >
				<strong class="ml-2">병원 QnA</strong>
			</div>
 
         <!--    <div class="review-list-title text-left" style="font-size: 40px;"><strong>병원 QnA</strong></div> -->
    
                <div class="pb-2 mt-5 review-list-subtitle text-left" style="font-size: 25px; border-bottom: solid; border-color:rgba(0, 0, 0, 0.514);">
                		답변 대기중인 문의글</div>
                <table class="table w-100 border-bottom">
                    <tbody><tr style="background-color: #f8f8f8;color: #9b9b9b;">
                        <th class="p-3" style="text-align: center;">작성자</th>
                        <th class="p-3" style="text-align: center;">내용</th>
                        <th class="p-3" style="text-align: center;">작성 날짜</th>
                  		<th class="p-3" style="text-align: center;">답변 유무</th>
                  <th class="p-3" style="text-align: center;">답변하기</th>
                    </tr>
    
          			<!-- 답변 전 리스트 -->
          			<c:if test="${empty notAnsweredList }">
          				<tr class="color49" style="font-size: 14px;">
							<td style="vertical-align: middle; text-align: center;" colspan="5"> <p class="m-0">작성된 QnA글이 없습니다.</p></td>
						</tr>
          			</c:if>
          			
          			<c:if test="${!empty notAnsweredList }">
          			<c:forEach var="n" items="${notAnsweredList}">
	                   <tr class="color49" style="font-size:14px;">
	                       <td style="vertical-align:middle;">${n.cNickName }</td>
	                       <td style="vertical-align:middle;">${n.qnaTitle }</td>
	                       <td style="vertical-align:middle;">${n.qnaDate }</td>
	                       <td style="vertical-align:middle;">${n.yn }</td>
	                  <td style="vertical-align:middle;">
		                  <button type="button" id="open-hospital-search-modal" 
		                    class="col-sm-10 offset-sm-1 btn btn-blackcontent w-100 h-50 p-1 mt-1" 
		                    style="font-size:15px; color: #007ee5;" data-toggle="modal" data-target="#hospitalSearchModal${n.hpQnANo }">답변하기</button>
	                  </td>
	              	</tr>
	              
               <!--답변하기 모달창-->
               <div id="hospitalSearchModal${n.hpQnANo }" class="modal fade show" tabindex="-1" role="dialog" style="display: none; padding-right: 16px;" aria-modal="true">
                <div class="modal-dialog w-50" role="document">
                  <div class="modal-content">
                    <div class="modal-header p-4">
                      <h5 class="modal-title">답변글 등록</h5>
                      <button type="button" class="close pt-3 pr-3 pb-0 pl-0" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">×</span>
                      </button>
                    </div>
                    <div class="modal-body p-4">
                        <div>
                          <p style="font-size: 12px;color: #b00020;">
                              <b style="color: #494949">답변 글을 입력하세요</b>
                          </p>
                        </div>
                        <!--답변글 등록 form-->
                        <form id="hospital-search-form" action="updateHpQnaReply.do" method="POST">
                            <div class="input-group mb-3" style="border: solid 2px #007ee5;">
                            	<input type="hidden" value="${n.hpQnANo }" name="hpQnANo">
                                <textarea id="answerHosQnA" name="hpQnaReply" class="form-control border-0" aria-describedby="button-addon-hsearch" style="height: 250px;"></textarea> 
                            </div>
                            <div class="input-group-append pl-2 pr-2" style="background-color: #007ee5">
                              <button class="btn btn-mdd border-0 w-100" type="submit" id="button-addon-hsearch" style="background-color: transparent">등록</button>
                            </div>
                        </form>
                        <div class="form_error_messages" style="margin-top:15px;">
                          <div class="errors-info errors-info-hospital-search"> 
                          </div>
                        </div>
                    </div>
                  </div>
                </div>
              </div>
              </c:forEach>
             	  </c:if>
              <!--모달창 end*****************************************************************************-->

                </tbody></table>
                
    

                <!--답변된 문의글 start-->
                <div class="pb-2 mt-5 review-list-subtitle d-flex justify-content-between"  style="font-size: 25px;border-bottom: solid; border-color:rgba(0, 0, 0, 0.514);">
                   		 답변된 문의글
                </div>
                
			    <c:if test="${empty answeredList}">
					<div class="color9b text-center" style="font-size: 1.313rem; margin-top: 73.7px;letter-spacing: -0.8px;">
		                <div class="my-3 text-center">
		                    <p class="m-0">답변완료된 QnA가 없습니다.</p>
		                </div>
		            </div>
				</c:if>
                
                
                <c:if test="${!empty answeredList }">
                <c:forEach var="y" items="${answeredList }">
               	 <div class="card mt-3 mb-3 text-left">
               		<!-- for문 돌려서 리스트 뽑아낼 때 data-targer, href 숫자 증가 시키기-->
                    <div class="card-header newreview p-4" data-toggle="collapse" data-target="#collapse-${y.hpQnANo }" href="#collapse-${y.hpQnANo }" aria-expanded="false" aria-controls="collapse-${y.hpQnANo }" style="cursor: pointer;">
                        <div class="card-title m-0">
                            <div class="d-flex align-items-center justify-content-between">
                                <div class="color49 font-weight-bold" style="font-size: 21px;">
                                   			${y.qnaTitle}
                                    
                                    <div class="color9b" style="font-size: 12px;">
                                       		작성 날짜 : ${y.qnaDate }
                                    </div>
                                    <div class="color9b" style="font-size: 12px;">
                                        	답변 날짜 : ${y.qnaReDate }
                                    </div>
                                </div>
                                <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_05/img/arrow_bottom.svg" class="img-fluid" alt="Responsive image" style="width:24px;height:24px;">
                            </div>
                        </div>
                    </div>
                    
                    <!--답변된 한줄 한줄 detail-->
                    <!-- for문 돌려서 리스트 뽑아낼 때 div id 숫자 증가 시키기-->
                    <div id="collapse-${y.hpQnANo }" class="card-body collapse p-4">
                        <div class="row">
                            <div class="col-9">
                            	<div class="color49 toast-message mb-4" style="font-size: 14px;">
                                    		질문자 닉네임 : ${y.cNickName }
                                </div>
                                <div class="color49 toast-message mb-4" style="font-size: 14px;">
                                    		질문 내용 : ${y.qnaTitle}
                                </div>
                            </div>
                  		</div>

                  <hr>
                  <div class="color49 mb-4" style="font-weight: bold">
                     <div style="font-weight:500;" class="d-flex justify-content-start align-items-center">
                    	 <div class="mr-2">의사 :</div>
	                       <div class="rounded-pill p-2 ml-1 mr-1" style="background-color: #e9e9e9;">
	                       		<a href="checkDrProfile.do" style="color: #45668e;" >${y.drName }</a></div>
                     </div>
                  </div>
                        <div class="row">
                            <div class="col-9">
                                <div class="color49 toast-message mb-4" style="font-size: 14px;">
                                   		${y.reply }
                                </div>
                                
                            </div>
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

	<!-- pagination -->
	<nav aria-label="Page navigation">
		<ul class="pagination" style="justify-content: center; padding-bottom: 30px;">
			<!-- disabled가 있으면 마우스 커서가 금지표시로 바뀐다. -->
			<c:if test="${pi.currentPage eq 1 }">
				<li class=disabled style="width: 30px;"><a href="#" aria-label="Previous"> <span aria-hidden="true">«</span></a></li>
			</c:if>

			<c:if test="${pi.currentPage gt 1 }">
				<c:url var="blistBack" value="drHpQna.do">
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
					<c:url var="blistCheck" value="drHpQna.do">
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
				<c:url var="blistNext" value="drHpQna.do">
					<c:param name="page" value="${pi.currentPage +1 }" />
				</c:url>
				<li style="width: 30px;"><a href="${blistNext}"
					aria-label="Previous"> <span aria-hidden="true">»</span>
				</a></li>
			</c:if>
		</ul>
	</nav>
	<!--pagination end-->

	<script>
		<%if(updateMsg != null){%>
			alert("병원 QnA답변이 성공적으로 등록되었습니다.");
		<%}%>
	</script>




   <%@ include file="../static/footer.jsp"%>
   
   <!--====== Javascripts & Jquery ======-->
   <script src="<%=request.getContextPath()%>/resources/js/jquery-3.2.1.min.js"></script>
   <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
   <script src="<%=request.getContextPath()%>/resources/js/jquery.slicknav.min.js"></script>
   <script src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
   <script src="<%=request.getContextPath()%>/resources/js/mixitup.min.js"></script>
   <script src="<%=request.getContextPath()%>/resources/js/main.js"></script>

   </body>
</html>