<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
	String msg = (String)request.getAttribute("msg");
%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <title>상품 디테일</title>
    <meta charset="UTF-8">
    <meta name="description" content="SolMusic HTML Template">
    <meta name="keywords" content="music, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Favicon -->
	<link href="<%=request.getContextPath()%>/resources/img/favicon.ico" rel="shortcut icon" />
	
	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap" rel="stylesheet">
	<!-- Stylesheets -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" />
	<!-- font awesome -->
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/slicknav.min.css" />
	
	
	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css" />


    <!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
<style>
	.qTitle{
		cursor : pointer;
	}
	.popover{
		width: 150px;
	}
	.popover #popoverHide{
		float: right ! important;
		cursor : pointer;
	}
	.nameTd{
		cursor : pointer;
	}
</style>
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header section -->
    <%@ include file="../static/header.jsp"%>
    <!-- Header section end -->
    <div class="container">


        <!-- menu -->
        <div class="product-menu mb-5">
            <div class="row mt-4 mb-5">
                <div class="col-lg-2"></div>
                <div class="col-lg-8">
                    <div class="product-search">
                        <!-- 검색하기 -->
                        <form id="searchForm" action="productSearch.do" method="get">
                            <input type="text" id="searchProduct" name="keyword" /><!-- class="mb-4" -->
                            <button id="searchBtn" type="button" class="btn btn-default"><i class="fas fa-search"></i></button>
                        </form>
                        <div id="suggestProduct">
                        	
                        </div>
                    </div>
                </div>
                <div class="col-lg-2"></div>
            </div>
            <div class="row my-4">
				<ul>
				    <li><a href="productIndex.do?sortNo=1&pageNo=1&categoryNo=7">전체보기</a></li>
				    <li><a href="productIndex.do?sortNo=1&pageNo=1&categoryNo=1">종합건강</a></li>
				    <li><a href="productIndex.do?sortNo=1&pageNo=1&categoryNo=2">눈건강</a></li>
				    <li><a href="productIndex.do?sortNo=1&pageNo=1&categoryNo=4">장건강</a></li>
				    <li><a href="productIndex.do?sortNo=1&pageNo=1&categoryNo=5">피로개선</a></li>
				    <li><a href="productIndex.do?sortNo=1&pageNo=1&categoryNo=6">피부건강</a></li>
				    <li><a href="productIndex.do?sortNo=1&pageNo=1&categoryNo=3">뼈&관절건강</a></li>
				</ul>
            </div>
        </div>
        <!-- menu end -->



        <!-- product-detail -->
        <div class="product-detail">
            <div class="row mt-5">
                <div class="col-lg-7">
                	<c:set var="fullPath" value="/projectFiles/${photos[0].fileName }" />
                    <img src="${fullPath }" style="width: 600px; height: 100%;" />
                </div>
                <div class="col-lg-5">
                    <h3 class="mb-4">${product.pdName }</h3>
                    <p>${product.subExplicate }</p>
                    <div>
                        <ul class="list-group">
                            <li class="list-group-item border-0 mb-2">
                                <span class="product-infor">판매금액</span>
                                <span class="price" style="float: right;">
                                	<c:if test="${product.originPrice eq product.sellPrice }">
                                	<span class="price" style="text-decoration:line-through"></span>
                                	</c:if>
                                	<c:if test="${product.originPrice ne product.sellPrice }">
                                    <span id="originPrice" class="price">${product.originPrice }원</span>
                                	</c:if>
                                    <strong class="price">${product.sellPrice }원</strong>
                                </span>
                            </li>
                            <li class="list-group-item border-0 mb-2">
                                <span class="product-infor">내용량</span>
                                <span style="float: right;">${product.volume }</span>
                            </li>
                            <li class="list-group-item border-0 mb-2">
                                <span class="product-infor">섭취방법</span>
                                <span style="float: right;">${product.drugWay }</span>
                            </li>
                            <li class="list-group-item border-0 mb-2">
                                <span class="product-infor">유통기한</span>
                                <span style="float: right;">${product.shelflife }</span>
                            </li>
                            <li class="list-group-item border-0 mb-2">
                                <span class="product-infor">추천수</span>
                                <span style="float: right;">${recommendCount } </span>
                            </li>
                        </ul>

                        <div class="amountArea">
                            <ul class="list-group">
                                <li class="list-group-item border-0">
                                    <span>총 주문 금액</span>
                                    <span id="allPrice" class="price" style="float: right;">${product.sellPrice }원</span>
                                </li>
                                <li class="list-group-item border-0">
                                    <span class="discount">할인 금액</span>
                                    <span id="discountPrice" class="discount price" style="float: right;">0</span>
                                </li>
                                <li class="list-group-item border-0">
                                    <span class="product-infor">총 금액</span>
                                    <span id="payPrice" class="product-infor price" style="float: right;">${product.sellPrice }원</span>
                                </li>
                                <li class="list-group-item border-0">
                                    <span>수량</span>
                                    <input type="number" id="productCount" name="productCount" value="1" min="1" max="5"
                                        style="width: 15%; float: right;" />
                                </li>
                                <li class="list-group-item border-0">
                                    <button class="btn btn-default goCart">
                                        <h5>장바구니</h5>
                                    </button>
                                    <button class="btn btn-default goPurchase" onclick="pay();">
                                        <h5>구매하기</h5>
                                    </button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- product-detail end -->

        <!-- product-tabs -->
        <div class="product-tabs"  style="margin-top:40px;">
            <!-- Here's all it takes to make this navigation bar. -->
            <div id="product-tabs" style="padding-top:40px;">
                <ul>
                    <li><a href="#product-images">제품상세</a></li>
                    <li><a href="#doctors-comments">추천평(${recommendCount })</a></li>
                    <li><a href="#product-qna">QnA(${qnaCount })</a></li>
                    <li><a href="#product-review">리뷰(${reviewCount })</a></li>
                </ul>
            </div>
        </div>
        <br>
        <!-- product-tabs end -->



        <!-- product-image -->
        <div id="product-images" class="product-images" style="margin-bottom:10px;">
        	<c:set var="detailImg" value="/projectFiles/${photos[1].fileName }" />
            <img src="${detailImg }" style="width: 100%;" />	<!--  height: 1200px; -->
        </div>
        <br>
        <!-- product-image end -->



        <!-- doctors-recommend -->
        <div id="doctors-comments" class="doctors-comments">
            <div class="row">
                <h3 id="recCount" class="mb-5">선생님들의 추천평(${recommendCount })</h3>

                <div class="col-lg-12 col-sm-12">
                    <table class="table">
                        <thead>
                            <tr>
                                <th colspan="2" style="width: 23%">선생님</th>
                                <th style="width: 62%">내용</th>
                                <th style="width: 15%">작성날짜</th>
                            </tr>
                        </thead>
                        <tbody id="recBody">
                        	<c:if test="${!empty recommends }">
                        	<c:forEach items="${recommends }" var="rec">
                        	<tr>
                        		<td>
                                    <c:if test="${empty rec.profileFileName }">
                                    <i class="fas fa-user-md fa-5x" style="color: #45668e;"></i>
                                    </c:if>
                                    <c:if test="${!empty rec.profileFileName }">
                                    <img src="/projectFiles/${rec.profileFileName }" />
                                    </c:if>
                                </td>
                                <td class="nameTd">
                                    <div data-toggle="popover"
										data-html="true"
										title="
										<span>상세정보</span> 
										<a id='popoverHide'>
											<i class='fas fa-times fa-1x'></i>
										</a>"
										data-content="
										<a href='#'>선생님 프로필</a>
										<br>
										<a href='mainHpReviewDetail.do?hpNo=${rec.hpNo }'>${rec.hpName }</a>"
										>
										${rec.drName}
									</div>
                                </td>
                                <td>${rec.comment }</td>
                                <td>${rec.submitDate }</td>
                        	</tr> 
                        	</c:forEach>
                        	</c:if>
                        	<c:if test="${empty recommends }">
                        	<tr>
                        		<td colspan='4' style="text-align: center;">
                        			'해당 상품의 추천평이 없습니다.'
                        		</td>
                        	</tr>
                        	</c:if>
                        </tbody>
                    </table>
                </div>
            </div>
            
            <!-- recommends pagination -->
            <div class="pagination">
                <div style="float:none; margin:0 auto">
                    <nav aria-label="Page navigation example">
                        <ul id="recPagination" class="pagination">
                            <!-- numbers -->
                            <c:forEach var="p" begin="${recommendPage.startPage }" end="${recommendPage.endPage }">
                        		<c:if test="${p eq recommendPage.currentPage }">
	                        <li class="page-item"><a id="recCurPage" class="page-link recPageNo" style="color: #a82400;">${p }</a></li>
                        		</c:if>
                        		<c:if test="${p ne recommendPage.currentPage }">
                        	<li class="page-item"><a class="page-link recPageNo">${p }</a></li>	
                        		</c:if>
                        	</c:forEach>
                            <!-- >> -->
                            <c:if test="${recommendPage.endPage ne 1 && recommendPage.endPage ne 0 }">
                            <li class="page-item">
		                        <a class="page-link" aria-label="Next">
	                                <span class="recPageNo" aria-hidden="true">Next</span>
	                            </a>
                            </li>
                            </c:if>
                        </ul>
                    </nav>
                </div>
            </div>

        </div>
        <br>
        <!-- recommend end -->







        <!-- product-qna -->
        <div id="product-qna" class="product-qna">
            <div class="row">
                <h3 id="qCount" class="mb-5">상품 Q&A(${qnaCount })</h3>
                <c:if test="${!empty loginDrClient || !empty loginClient }">
					<button id="modalQna" class="btn btn-sm goProductQnA ml-3" data-toggle="modal" data-target="#goQnA"
					style="background-color: #0071ce; height: 37px; width: 100px;">질문하기</button>
				</c:if>
				<c:if test="${empty loginDrClient && empty loginClient }">
					<button id="modalQna" class="btn btn-sm goProductQnA ml-3" data-toggle="modal"
					style="background-color: #0071ce; height: 37px; width: 100px;">질문하기</button>
				</c:if>
                <div class="col-lg-12 col-sm-12">
                    <table class="table">
                        <thead>
                            <tr>
                                <th style="width: 10%;">번호</th>
                                <th style="width: 40%;">제목</th>
                                <th style="width: 20%;">작성자</th>
                                <th style="width: 15%;">작성날짜</th>
                                <th style="width: 15%;">답변대기</th>
                            </tr>
                        </thead>
                        <tbody id="qBody">
                        	<c:if test="${empty qnas }">
                        	<tr>
                                <td colspan='5' style="text-align: center;">
                                	'해당 상품에 질문이 없습니다'
                                </td>
                            </tr>
                        	</c:if>
                        	<c:if test="${!empty qnas }">
                        	<c:forEach var="qna" items="${qnas }">
                        	<tr class="qnaTr">
                        		<td>
                        			<input name="pdqNo" type="hidden" value="${qna.pdqNo }" />
                        			${qna.rno }
                        		</td>
                        		<td>
                       			<c:if test="${qna.secretStatus eq 'N' }">
                       				<div class="qTitle">                       				
                       					${qna.title }
                       				</div>
                       			</c:if>
                       			<c:if test="${qna.secretStatus eq 'Y' }">
                       				<div class="qTitle">
	                       				<i class="fas fa-lock"></i>비밀글입니다.
                       				</div>
                       				<div class="pwdHide qnaPwd mt-4">
	                  					<span>비밀번호 : </span>
	                  					<input type="password" name="qnaPwd" style="height: 80%;"/>  
	                  					<button class="qnaFormBtn btn btn-sm ml-1" type="button">확인</button>               					
                       				</div>
                       			</c:if>
                        		</td>
                        		<td>
                        			<c:if test="${empty qna.cNo && !empty qna.drNo }">
                        			${qna.drName }
                        			</c:if>
                        			<c:if test="${!empty qna.cNo && empty qna.drNo }">
                        			${qna.cNickname }
                        			</c:if>
                        		</td>
                        		<td>${qna.submitDate }</td>
                        		<td>
									<c:if test="${qna.status eq 'N' }">
										답변대기
									</c:if>
									<c:if test="${qna.status eq 'Y' }">
										답변완료
									</c:if>
								</td>
                        	</tr>
                            </c:forEach>
                        	</c:if>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- qna pagination -->
            <div class="pagination">
                <div style="float:none; margin:0 auto">
                    <nav aria-label="Page navigation example">
                        <ul id="qPagination" class="pagination">            
                            <!-- numbers -->
                            <c:forEach var="p" begin="${qnaPage.startPage }" end="${qnaPage.endPage }">
                        		<c:if test="${p eq qnaPage.currentPage }">
	                        <li class="page-item"><a id="qCurPage" class="page-link qPageNo" style="color: #a82400;">${p }</a></li>
                        		</c:if>
                        		<c:if test="${p ne qnaPage.currentPage }">
                        	<li class="page-item"><a class="page-link qPageNo">${p }</a></li>	
                        		</c:if>
                        	</c:forEach>
                        	
                            <c:if test="${qnaPage.endPage ne 1 && qnaPage.endPage ne 0}">
                            <li class="page-item">
								<a class="page-link" aria-label="Next">
	                                <span class="qPageNo" aria-hidden="true">Next</span>
	                            </a>
                            </li>
                            </c:if>
                        </ul>
                    </nav>
                </div>
            </div>

            <!-- QnA 작성 modal -->
            <div class="modal fade" id="goQnA" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form id="insertQnaForm" action="insertProductQna.do" method="post">
                            <div class="modal-header">
                                <h4>상품 QnA 작성하기</h4>
                                <button id="closeQnaModal" type="button" class="close" data-dismiss="modal">×</button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label for="qnaTitle">제목</label>
                                    <input id="qnaTitle" name="title"  type="text" style="width: 90%; float:right;" />
                                </div>
                                <div class="form-group">
                                    <label for="qnaContent">내용</label>
                                    <textarea id="qnaContent" rows="8" name="content" ></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="qnaSecret">비밀글 설정하기</label>
                                    <input type="checkbox" id="qnaSecret" name="qnaSecret" class="ml-1" />
                                </div>
                                <div id="togglePwd" class="form-group" style="display: none;">
                                    <label for="qnaPwd">비밀번호 : </label>
                                    <input type="password" id="secretPwd" name="secretPwd" class="ml-1" style="height: 80%;" />
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button id="submitModal" type="button" class="btn btn-default">제출하기</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- 답변 확인 modal -->
            <div id="caDiv"></div>
            <div class="modal fade" id="confirmAnswer" role="dialog">
    			<div id="confirmAnswer-dialog" class="modal-dialog">
    				
    			</div>
    		</div>
        </div>
        <br>
        <!-- product-qna end -->





        <!-- product-review -->
        <div id="product-review" class="product-review mb-5">
            <div class="row">
                <h3 id="revCount" class="mb-5">구매자들의 리뷰(${reviewCount })</h3>

                <div class="col-lg-12 col-sm-12">
                    <table class="table">
                        <thead>
                            <tr>
                                <th colspan="2" style="width: 23%">작성자</th>
                                <th style="width: 62%">내용</th>
                                <th style="width: 15%">작성날짜</th>
                            </tr>
                        </thead>
                        <tbody id="revBody">
                        	<c:if test="${empty reviews }">
                       		<tr>
                       			<td colspan='4' style="text-align: center;">
                       				'해당 상품의 리뷰가 없습니다'
                       			</td>
                       		</tr>
                        	</c:if>
                        	<c:if test="${!empty reviews }">
                        	<c:forEach var="review" items="${reviews }">
                        	<tr>
                        		<td>
                        		<c:if test="${empty review.cNo && !empty review.drNo && empty review.drProfile }">
                        			<i class="fas fa-user-md fa-5x" style="color: #45668e;"></i>
                        		</c:if>
                        		<c:if test="${!empty review.cNo && empty review.drNo && empty review.clientProfile }">
                        			<i class="fas fa-user fa-5x" style="color: #b3b7ba;"></i>
                        		</c:if>
                        		<c:if test="${empty review.cNo && !empty review.drNo && !empty review.drProfile }">
                        			<img src="/projectFiles/${review.drProfile }" />
                        		</c:if>
                        		<c:if test="${!empty review.cNo && empty review.drNo && !empty review.clientProfile }">
                        			<img src="/projectFiles/${review.clientProfile }" />
                        		</c:if>
                        		</td>
                        		<td class="nameTd">
                        			<c:if test="${empty review.cNo && !empty review.drNo }">
                                    <div data-toggle="popover"
										data-html="true"
										title="
										<span>상세정보</span> 
										<a id='popoverHide'>
											<i class='fas fa-times fa-1x'></i>
										</a>"
										data-content="
										<a href='#'>선생님 프로필</a>
										<br>
										<a href='mainHpReviewDetail.do?hpNo=${review.hpNo }'>${review.hpName }</a>"
										>
										${review.drName}
									</div>
                        			</c:if>
                        			<c:if test="${!review.cNo && empty review.drNo }">
                        			${review.cNickname }
                        			</c:if>
								</td>
                        		<td>${review.content }</td>
                        		<td>${review.submitDate }</td>
                        	</tr>
                        	</c:forEach>
                        	</c:if>
                        </tbody>
                    </table>

                    <!-- review pagination -->
                    <div class="pagination">
		                <div style="float:none; margin:0 auto">
		                    <nav aria-label="Page navigation example">
		                        <ul id="revPagination" class="pagination">
		                            <c:forEach var="p" begin="${reviewPage.startPage }" end="${reviewPage.endPage }">
		                        		<c:if test="${p eq reviewPage.currentPage }">
			                        <li class="page-item"><a id="revCurPage" class="page-link revPageNo" style="color: #a82400;">${p }</a></li>
		                        		</c:if>
		                        		<c:if test="${p ne reviewPage.currentPage }">
		                        	<li class="page-item"><a class="page-link revPageNo">${p }</a></li>	
		                        		</c:if>
		                        	</c:forEach>
		                            <c:if test="${reviewPage.endPage ne 1 && reviewPage.endPage ne 0}">
		                            <li class="page-item">
				                        <a class="page-link" aria-label="Next">
			                                <span class="revPageNo" aria-hidden="true">Next</span>
			                            </a>
		                            </li>
		                            </c:if>
		                        </ul>
		                    </nav>
		                </div>
		            </div>
                </div>
            </div>
        </div>
        <!-- product-review end -->
    </div>



    <!-- Footer section -->
	<%@ include file="../static/footer.jsp"%>
    <!-- Footer section end -->

    <!--====== Javascripts & Jquery ======-->
    <script src="http://code.jquery.com/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/jquery.slicknav.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/mixitup.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>
    <script>
        $(function () {
        	$(document).on('click', 'td div', function(){
				$("[data-toggle='popover']").popover();				
			});
			
			$(document).on("click", "#popoverHide", function(){
				$("[data-toggle='popover']").popover('hide');
			});
			
        	$('#goQnA').on('shown.bs.modal', function () {
				$("#qnaSecret").on('change', function(){
					if($(this).is(":checked") === true){
						$("#togglePwd").show();
					}
					else{
						$("#secretPwd").val('');
						$("#togglePwd").hide();
					}
				});
        	});
        	
        	/* 모달에서 Q&A 제출 */
        	$('#submitModal').on('click', function(){
				var title = $("#qnaTitle").val();
				var content = $("#qnaContent").val();
				var secretPwd = $("#secretPwd").val();
				var pdNo = "${product.pdNo}";
				
				$.ajax({
					type : 'POST',
					data : {
						cNo : "${loginClient.cNo}",
						drNo : "${loginDrClient.drNo}",
						pdNo : pdNo,
						title : title,
						content : content,
						secretPwd : secretPwd
					},
					url : 'insertProductQna.do',
					success : function(data){
						if(data === "ok"){
							alert("질문이 작성되었습니다.");
							
							if($("#qCurPage").length){
								$("#qCurPage").click();
							}
							else{
				        		var pageForm = {
				            			pdNo : "${product.pdNo}",
				            			pageNo : 1
				            	}
				            	$.ajax({
				            		type:'get',
				            		data:pageForm,
				            		dataType:'JSON',
				            		url:"getAsyncQnas.do",
				            		success: function(data){
				            			qnaHTML(data);
				            		},
				            		error:function(request, status, errorData){
					                    alert("error code: " + request.status + "\n"
					                            +"message: " + request.responseText
					                            +"error: " + errorData);
					               	}
				            	});
							}
							
							$("#closeQnaModal").click();
						}
						else{
							alert("작성에 실패하였습니다.");
						}
					},
					error:function(request, status, errorData){
	                    alert("error code: " + request.status + "\n"
	                            +"message: " + request.responseText
	                            +"error: " + errorData);
	               	}
				});
			});
        	
        	$(document).on('click', '#modalQna', function(){
        		var client = "${loginClient.cNo}";
        		var drClient = "${loginDrClient.drNo}";
        		
        		if(client === "" && drClient === ""){
        			if(confirm("회원만 질문하실 수 있습니다. 로그인하시겠습니까?")){
        				location.href="loginView.do";
        			}
        			else{
        				return false;
        			}
        		}
        	});
        	
        	function createModal(qna){
        		$("#confirmAnswer-dialog").html('');
        		var $modalContent = $('<div class="modal-content"></div>'); 
        		var $modalHeader = $('<div class="modal-header"></div>');
        		var $h4 = $('<h4></h4>');
        		$h4.text('해당 답변 확인하기');
        		$modalHeader.append($h4);
        		$modalContent.append($modalHeader);
        		
        		var $modalBody = $('<div class="modal-body"></div>');
        		var $fgOne = $('<div class="form-group"></div>');
        		var $labelOne = $('<label for="qnaTitle"></label>');
        		$labelOne.text("제목");
        		var $inputOne = $('<input id="qnaTitle" type="text" style="width: 90%; float:right;" disabled />');
        		$inputOne.val(qna.title);	
        		$fgOne.append($labelOne);
        		$fgOne.append($inputOne);
        		$modalBody.append($fgOne);
        		
        		var $fgTwo = $('<div class="form-group"></div>');
        		var $labelTwo = $('<label for="qnaContent"></label>');
        		$labelTwo.text("내용");
        		var $taOne = $('<textarea id="qnaContent" rows="8" disabled></textarea>');
        		$taOne.text(qna.content);
        		$fgTwo.append($labelTwo);
        		$fgTwo.append($taOne);
        		$modalBody.append($fgTwo);
        		
        		var $fgThree = $('<div class="form-group"></div>');
        		var $labelThree = $('<label for="answer"></label>');
        		$labelThree.text("답변");
        		var $taTwo = $('<textarea id="answer" rows="8" disabled></textarea>');
        		$taTwo.text(qna.answerContent);
        		$fgThree.append($labelThree);
        		$fgThree.append($taTwo);
        		$modalBody.append($fgThree);
	    	    $modalContent.append($modalBody);
        		
        		var $modalFooter = $('<div class="modal-footer"></div>');
        		var $closeBtn = $('<button type="button" class="btn btn-default" data-dismiss="modal">확인</button>');
        		$modalFooter.append($closeBtn);
        		$modalContent.append($modalFooter);
        		
        		$("#confirmAnswer-dialog").append($modalContent);
        		$("#caDiv").html('<button id="caBtn" style="display: none;" data-toggle="modal" data-target="#confirmAnswer"></button>');
        	}
        	
        	$(document).on('click', '.qnaFormBtn', function(){
       			var pdqNo = $(this).parent().parent().prev().find('input[name=pdqNo]').val();
           		var pdqPwd = $(this).prev().val();
           		var qForm = {
           				pdqNo : pdqNo,
           				pdqPwd : pdqPwd
           		}
           		$.ajax({
           			type : 'POST',
           			data : qForm,
           			url : 'getpdqAnswer.do',
           			success : function(data){
           				if(data.result === "ok"){
           					createModal(data.qna);
           					$('#caBtn').trigger("click");
           				}
           				else if(data.result === "wait"){
           					alert("해당 문의글은 아직 답변이 없습니다.");
           				}
           				else{
           					alert("해당 게시글의 비밀번호가 맞지 않습니다.");
           				}
           			},
           			error:function(request, status, errorData){
   	                    alert("error code: " + request.status + "\n"
   	                            +"message: " + request.responseText
   	                            +"error: " + errorData);
   	               	}
      			});
           		$(this).prev().val('');
				$(this).parent().prev().trigger("click");
        	});
        	
        	$(document).on('click', '.qTitle', function(){
        		if($(this).siblings('.qnaPwd').length){
        			$(this).siblings('.qnaPwd').toggle();
        		}
        		else{
        			if($(this).parent().next().next().next().text().trim() === "답변대기"){
        				alert("해당 문의글은 아직 답변이 없습니다");
        			}
        			else{
	        			var pdqNo = $(this).parent().prev().find('input[name=pdqNo]').val();
						
	        			$.ajax({
	        				type : 'POST',
	        				url : 'getpdqAnswer.do',
	        				data : {
	        					pdqNo : pdqNo,
	        					pdqPwd : ""
	        				},
	        				success : function(data){
	        					if(data.result === "ok"){
	            					createModal(data.qna);
	            					$('#caBtn').trigger("click");
	            				}
	        				},
	        				error:function(request, status, errorData){
	    	                    alert("error code: " + request.status + "\n"
	    	                            +"message: " + request.responseText
	    	                            +"error: " + errorData);
	    	               	}
	        			});
        			}
        		}
        	});
        	
        	function qnaHTML(data){
        		var page = data.page;
        		var list = data.list;
        		
        		$("#qPagination").html('');
        		if(page.currentPage !== 1 && page.endPage !== 1){
	       			var $liOne = $('<li class="page-item"></li>');
	       			var $a = $('<a class="page-link" aria-label="Previous"></a>');
	       			var $span = $('<span class="qPageNo" aria-hidden="true"></span>');
	       			$span.text("Prev");
	       			$a.append($span);
	       			$liOne.append($a);
	       			$("#qPagination").append($liOne);
        		}
        		
        		for(var i = page.startPage; i <= page.endPage; i++){
        			var $li = $('<li class="page-item"></li>');
	    			var $a;
        			if(i === page.currentPage){
        				$a = $('<a id="qCurPage" class="page-link qPageNo" style="color: #a82400;"></a>');
        			}
        			else{
        				$a = $('<a class="page-link qPageNo"></a>');
        			}
        			$a.text(i);
       				$li.append($a);
       				$("#qPagination").append($li);
        		}
        		
        		if(page.currentPage !== page.maxPage && page.endPage !== 1){
	   				var $liTwo = $('<li class="page-item"></li>');
	       			var $a = $('<a class="page-link" aria-label="Next"></a>');
	       			var $span = $('<span class="qPageNo" aria-hidden="true"></span>');
	       			$span.text("Next");
	       			$a.append($span);
	       			$liTwo.append($a);
	       			$("#qPagination").append($liTwo);        			
        		}
        		
        		$("#qCount").text("상품 Q&A(" + data.qnaCount + ")");
            	$("#qBody").html('');
            	
            	for(var i = 0; i < list.length; i++){
            		var $tr = $('<tr></tr>');
            		$tr.attr("class", "qnaTr");
            		var $tdNo = $('<td></td>');
            		var $inputHd = $('<input name="pdqNo" type="hidden" />');
            		$inputHd.attr("value", list[i].pdqNo);
            		$tdNo.append($inputHd);
            		$tdNo.append(list[i].rno);
            		$tr.append($tdNo);
            		
            		if(list[i].secretStatus === "Y"){
            			var $tdTitle = $('<td></td>');
            			var $divqTitle = $('<div class="qTitle"></div>');
            			var $ic = $('<i class="fas fa-lock"></i>');
            			$divqTitle.append($ic);
            			$divqTitle.append('비밀글입니다.');
            			var $qnaPwd = $('<div class="pwdHide qnaPwd mt-4"></div>');
            			var $span = $('<span></span>');
            			$span.text("비밀번호 : ");
            			var $input = $('<input type="password" name="qnaPwd" style="height: 80%;"/>');
            			var $btn = $('<button class="qnaFormBtn btn btn-sm ml-1" type="button">확인</button>');
            			$qnaPwd.append($span);
            			$qnaPwd.append($input);
            			$qnaPwd.append($btn);
            			
            			$tdTitle.append($divqTitle);
            			$tdTitle.append($qnaPwd);
            			$tr.append($tdTitle);
            		}
            		else{
            			var $tdTitle = $('<td></td>');
            			var $divqTitle = $('<div class="qTitle"></div>');
            			$divqTitle.text(list[i].title);
            			$tdTitle.append($divqTitle);
            			$tr.append($tdTitle);
            		}
            		
            		var $tdWriter = $('<td></td>');
            		if( !list[i].cNo && list[i].drNo ){
            			$tdWriter.text(list[i].drName);
            		}
            		else if( !list[i].drNo && list[i].cNo ){
            			$tdWriter.text(list[i].cNickname);
            		}
            		$tr.append($tdWriter);
            		
            		var $tdSubmitDate = $('<td></td>');
            		$tdSubmitDate.text(getFormatDate(new Date(list[i].submitDate)));
            		$tr.append($tdSubmitDate);
            		
            		var $tdStatus = $('<td></td>');
            		if(list[i].status === "Y"){
            			$tdStatus.text("답변완료");
            		}
            		else{
            			$tdStatus.text("답변대기");
            		}
            		$tr.append($tdStatus);
            		
            		$("#qBody").append($tr);
            	}
        	}
        	
        	$(document).on('click', '.qPageNo', function(){
        		var pageNo;
        		if($(this).text() === "Prev"){
            		pageNo = Number($("#qCurPage").text()) - 1;
            	}
            	else if ($(this).text() === "Next"){
            		pageNo = Number($("#qCurPage").text()) + 1;
            	}
            	else{
            		pageNo = $(this).text();
            	}
            	
        		var pageForm = {
            			pdNo : "${product.pdNo}",
            			pageNo : pageNo
            	}
            	$.ajax({
            		type:'get',
            		data:pageForm,
            		dataType:'JSON',
            		url:"getAsyncQnas.do",
            		success: function(data){
            			qnaHTML(data);
            		},
            		error:function(request, status, errorData){
	                    alert("error code: " + request.status + "\n"
	                            +"message: " + request.responseText
	                            +"error: " + errorData);
	               	}
            	});
        	});
        	
			function reviewHTML(data){
				var page = data.page;
				
				$("#revPagination").html('');
        		if(page.currentPage !== 1){
	       			var $liOne = $('<li class="page-item"></li>');
	       			var $a = $('<a class="page-link" aria-label="Previous"></a>');
	       			var $span = $('<span class="revPageNo" aria-hidden="true"></span>');
	       			$span.text("Prev");
	       			$a.append($span);
	       			$liOne.append($a);
	       			$("#revPagination").append($liOne);
        		}
        		
        		for(var i = page.startPage; i <= page.endPage; i++){
        			var $li = $('<li class="page-item"></li>');
	    			var $a;
        			if(i === page.currentPage){
        				$a = $('<a id="revCurPage" class="page-link revPageNo" style="color: #a82400;"></a>');
        			}
        			else{
        				$a = $('<a class="page-link revPageNo"></a>');
        			}
        			$a.text(i);
       				$li.append($a);
       				$("#revPagination").append($li);
        		}
        		
        		if(page.currentPage !== page.maxPage){
	   				var $liTwo = $('<li class="page-item"></li>');
	       			var $a = $('<a class="page-link" aria-label="Next"></a>');
	       			var $span = $('<span class="revPageNo" aria-hidden="true"></span>');
	       			$span.text("Next");
	       			$a.append($span);
	       			$liTwo.append($a);
	       			$("#revPagination").append($liTwo);        			
        		}
				
        		$("#revCount").text("구매자들의 리뷰(" + data.reviewCount + ")");
            	$("#revBody").html('');
            	var list = data.list;
            	
            	for(var i = 0; i < list.length; i++){
            		var $tr = $('<tr></tr>');
            		var $tdProfile = $('<td></td>');
            		if( list[i].drNo && !list[i].cNo && !list[i].drProfile ){
            			var $icon = $('<i class="fas fa-user-md fa-5x" style="color: #45668e;"></i>');
            			$tdProfile.append($icon);
            		}
            		else if( !list[i].drNo && list[i].cNo && !list[i].clientProfile ){
            			var $icon = $('<i class="fas fa-user fa-5x" style="color: #b3b7ba;"></i>');
            			$tdProfile.append($icon);
            		}
            		else if( list[i].drNo && !list[i].cNo && list[i].drProfile ){
            			var $img = $('<img />');
            			$img.attr('src', '/projectFiles/' + list[i].drProfile);
            			$tdProfile.append($img);
            		}
            		else if( !list[i].drNo && list[i].cNo && list[i].clientProfile ){
            			var $img = $('<img />');
            			$img.attr('src', '/projectFiles/' + list[i].clientProfile);
            			$tdProfile.append($img);
            		}
            		$tr.append($tdProfile);
            		
            		if( list[i].drNo && !list[i].cNo ){
	            		var $tdDr = $('<td class="nameTd"></td>');
	            		var $tdTwoInDiv = $('<div data-toggle="popover" data-html="true"></div>');
						$tdTwoInDiv.attr("title", "<span>상세정보</span><a id='popoverHide'><i class='fas fa-times fa-1x'></i></a>");
						$tdTwoInDiv.attr("data-content", "<a href='#'>선생님 프로필</a><br><a href='mainHpReviewDetail.do?hpNo=" + list[i].hpNo + "'>" + list[i].hpName + "</a>");
						$tdTwoInDiv.text(list[i].drName);
	            		$tdDr.append($tdTwoInDiv);
	            		$tr.append($tdDr);
            		}
            		else if( !list[i].drNo && list[i].cNo ){
            			var $tdNickname = $('<td></td>');
            			$tdNickname.text(list[i].cNickname);
            			$tr.append($tdNickname);
            		}
            		
            		var $tdContent = $('<td></td>');
            		$tdContent.text(list[i].content);
            		$tr.append($tdContent);
            		
            		var $tdSubmitDate = $('<td></td>');
            		$tdSubmitDate.text(getFormatDate(new Date(list[i].submitDate)));
            		$tr.append($tdSubmitDate);
            		
            		$("#revBody").append($tr);
            	}
			}
        	
			$(document).on('click', '.revPageNo', function(){
				var pageNo;
        		if($(this).text() === "Prev"){
            		pageNo = Number($("#revCurPage").text()) - 1;
            	}
            	else if ($(this).text() === "Next"){
            		pageNo = Number($("#revCurPage").text()) + 1;
            	}
            	else{
            		pageNo = $(this).text();
            	}
            	
        		var pageForm = {
            			pdNo : "${product.pdNo}",
            			pageNo : pageNo
            	}
            	$.ajax({
            		type:'get',
            		data:pageForm,
            		dataType:'JSON',
            		url:"getAsyncReviews.do",
            		success: function(data){
            			reviewHTML(data);
            		},
            		error:function(request, status, errorData){
	                    alert("error code: " + request.status + "\n"
	                            +"message: " + request.responseText
	                            +"error: " + errorData);
	               	}
            	});
        	});
			
        	function recommendHTML(data){
        		var page = data.page;
        		
        		$("#recPagination").html('');
        		
        		if(page.currentPage !== 1){
	       			var $liOne = $('<li class="page-item"></li>');
	       			var $a = $('<a class="page-link" aria-label="Previous"></a>');
	       			var $span = $('<span class="recPageNo" aria-hidden="true"></span>');
	       			$span.text("Prev");
	       			$a.append($span);
	       			$liOne.append($a);
	       			$("#recPagination").append($liOne);
        		}
        		
        		for(var i = page.startPage; i <= page.endPage; i++){
        			var $li = $('<li class="page-item"></li>');
	    			var $a;
        			if(i === page.currentPage){
        				$a = $('<a id="recCurPage" class="page-link recPageNo" style="color: #a82400;"></a>');
        			}
        			else{
        				$a = $('<a class="page-link recPageNo"></a>');
        			}
        			$a.text(i);
       				$li.append($a);
       				$("#recPagination").append($li);
        		}
        		
        		if(page.currentPage !== page.maxPage){
	   				var $liTwo = $('<li class="page-item"></li>');
	       			var $a = $('<a class="page-link" aria-label="Next"></a>');
	       			var $span = $('<span class="recPageNo" aria-hidden="true"></span>');
	       			$span.text("Next");
	       			$a.append($span);
	       			$liTwo.append($a);
	       			$("#recPagination").append($liTwo);        			
        		}
    			
            	var list = data.list;
            	$("#recCount").text("선생님들의 추천평(" + data.recommendCount + ")");
            	$("#recBody").html('');
            	
            	for(var i = 0; i < list.length; i++){
            		var $tr = $('<tr></tr>');
            		var $tdProfile = $('<td></td>');
            		if( !list[i].profileFileName ){
            			var $fa = $('<i class="fas fa-user-md fa-5x" style="color: #45668e;"></i>');
            			$tdProfile.append($fa);
            		}
            		else{
            			var $img = $('<img />');
            			$img.attr("src", list[i].profileFileName);
            			$tdProfile.append($img);
            		}
            		$tr.append($tdProfile);
            		
            		var $tdDr = $('<td class="nameTd"></td>');
            		var $tdTwoInDiv = $('<div data-toggle="popover" data-html="true"></div>');
					$tdTwoInDiv.attr("title", "<span>상세정보</span><a id='popoverHide'><i class='fas fa-times fa-1x'></i></a>");
					$tdTwoInDiv.attr("data-content", "<a href='#'>선생님 프로필</a><br><a href='mainHpReviewDetail.do?hpNo=" + list[i].hpNo + "'>" + list[i].hpName + "</a>");
					$tdTwoInDiv.text(list[i].drName);
					$tdDr.append($tdTwoInDiv);
            		$tr.append($tdDr);
            		
            		var $tdContent = $('<td></td>');
            		$tdContent.text(list[i].comment);
            		$tr.append($tdContent);
            		
            		var $tdSubmitDate = $('<td></td>');
            		$tdSubmitDate.text(getFormatDate(new Date(list[i].submitDate)));
            		$tr.append($tdSubmitDate);
            		
            		$("#recBody").append($tr);
            	}
            }
        	
        	$(document).on('click', '.recPageNo', function(){
            	var pageNo;
        		if($(this).text() === "Prev"){
            		pageNo = Number($("#recCurPage").text()) - 1;
            	}
            	else if ($(this).text() === "Next"){
            		pageNo = Number($("#recCurPage").text()) + 1;
            	}
            	else{
            		pageNo = $(this).text();
            	}
            	
        		var pageForm = {
            			pdNo : "${product.pdNo}",
            			pageNo : pageNo
            	}
            	$.ajax({
            		type:'get',
            		data:pageForm,
            		dataType:'JSON',
            		url:"getAsyncRecommends.do",
            		success: function(data){
            			recommendHTML(data);
            		},
            		error:function(request, status, errorData){
	                    alert("error code: " + request.status + "\n"
	                            +"message: " + request.responseText
	                            +"error: " + errorData);
	               	}
            	});
            });
        
        	
            $("[data-toggle='popover']").popover();
            
			$('.price').each(function(index, item){
				$(this).text(numberWithCommas($(this).text()));
			});
			
            $("#productCount").on('change', function(){
            	var amount = $(this).val();
            	var price = "${product.sellPrice }";
            	var discountPrice = $("#discountPrice").text();
            	$("#allPrice").text(numberWithCommas(amount * price) + "원");
            	$("#payPrice").text(numberWithCommas(amount * price - discountPrice) + "원");
            });
            
            $('#searchBtn').on('click', function(){
				if($("#searchProduct").val().length === 0){
					alert('한 글자 이상 검색해주세요!');
				}
				else{
					$("#searchForm").submit();
				}
			});
			
			$("#searchProduct").keyup(function(){
				if($(this).val() !== ""){
					$("#suggestProduct").css("display", "block");
					$.ajax({
						type : 'GET',
						url : 'suggestProduct.do',
						data:{
							'keyword' : $(this).val()
						},
						dataType:'JSON',
						success:function(data){
							if(data.result === "ok"){
								suggestProducts(data.suggestProducts);
							}
							else{
								suggestEmpty();
							}
						},
						error:function(request, status, errorData){
		                    alert("error code: " + request.status + "\n"
		                            +"message: " + request.responseText
		                            +"error: " + errorData);
		               	}
					});
				}
				else{
					$("#suggestProduct").css("display", "none");
				}
			});
			
			function suggestProducts(suggestList){
				$("#suggestProduct").html('');
				for(var i in suggestList){
					var $divProd = $('<div class="productList"></div>');
					var $a = $('<a></a>');
					$a.attr('href', 'productDetail.do?pdNo='+suggestList[i].pdNo);		//상품 상세보기 구현시 꼭 매핑
					
					var $spanOne = $('<span class="prodImg"></span>');
					var $img = $('<img />');
					$img.attr('src', '/projectFiles/' + suggestList[i].photos[0].fileName);
					$spanOne.append($img);
					
					var $spanTwo = $('<span class="prodName"></span>');
					$spanTwo.text(suggestList[i].pdName);
					
					var $spanThree = $('<span class="prodPrice"></span>');
					$spanThree.text(numberWithCommas(suggestList[i].sellPrice) + '원');
					
					$a.append($spanOne);
					$a.append($spanTwo);
					$a.append($spanThree);
					
					$divProd.append($a);
				$("#suggestProduct").append($divProd);
				}
			}
			
			function suggestEmpty(){
				$("#suggestProduct").html('');
				var $divEmpty = $('<div></div>');
				$divEmpty.attr('id', 'listEmpty');
				$divEmpty.text('추천 상품이 없습니다.');
				$("#suggestProduct").append($divEmpty);
			}
			
			$('.price').each(function(index, item){
				$(this).text(numberWithCommas($(this).text()));
			});
        });//end of jquery
        
        function numberWithCommas(x) {
		    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
        
        function getFormatDate(date){
            var year = date.getFullYear();              
            var month = (1 + date.getMonth());          
            month = month >= 10 ? month : '0' + month; 
            var day = date.getDate();                   
            day = day >= 10 ? day : '0' + day;         
            return  year + '-' + month + '-' + day;
        }
    </script>
    <script>
    	function pay(){
    		
    		location.href='payView.do?pdName=' + '${product.pdName}' + '&pdNo=' + '${product.pdNo} ' + '&productCount=' + $("#productCount").val() ;
    	}
    </script>
    
    <script>
    	<%if(msg != null){%>
        	 alert("<%=msg%>");
      	<%}%>
    </script>
</body>

</html>