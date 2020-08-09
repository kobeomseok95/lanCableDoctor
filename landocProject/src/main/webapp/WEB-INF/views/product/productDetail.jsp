<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
        <div class="product-menu">
            <div class="row">
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

            <!-- <div class="row">					바꾸기전
                <div class="product-menu">
                    <ul>
                        <li><a href="#">전체보기</a></li>
                        <li><a href="#">종합건강</a></li>
                        <li><a href="#">눈건강</a></li>
                        <li><a href="#">장건강</a></li>
                        <li><a href="#">피로개선</a></li>
                        <li><a href="#">피부건강</a></li>
                        <li><a href="#">뼈&관절건강</a></li>
                    </ul>
                </div>
            </div> -->
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
                    <img src="${fullPath }" style="width: 600px; height: 600px;" />
                </div>
                <div class="col-lg-5">
                    <h3 class="mb-4">${product.pdName }</h3>
                    <p>${product.subExplicate }</p>
                    <div>
                        <ul class="list-group">
                            <li class="list-group-item border-0">
                                <span class="product-infor">판매금액</span>
                                <span class="price" style="float: right;">
                                    <span class="price" style="text-decoration:line-through">${product.originPrice }원</span>
                                    <strong class="price">${product.sellPrice }원</strong>
                                </span>
                            </li>
                            <li class="list-group-item border-0">
                                <span class="product-infor">내용량</span>
                                <span style="float: right;">${product.volume }</span>
                            </li>
                            <li class="list-group-item border-0">
                                <span class="product-infor">섭취방법</span>
                                <span style="float: right;">${product.drugWay }</span>
                            </li>
                            <li class="list-group-item border-0">
                                <span class="product-infor">유통기한</span>
                                <span style="float: right;">${product.shelflife }</span>
                            </li>
                            <li class="list-group-item border-0">
                                <span class="product-infor">추천수</span>
                                <span style="float: right;">${fn:length(recommends)} </span>
                            </li>
                        </ul>

                        <div class="amountArea">
                            <ul class="list-group">
                                <li class="list-group-item border-0">
                                    <span>총 주문 금액</span>
                                    <span id="allPrice" style="float: right;">50,000원</span>
                                </li>
                                <li class="list-group-item border-0">
                                    <span class="discount">할인 금액</span>
                                    <span id="discountPrice" class="discount" style="float: right;">0원</span>
                                </li>
                                <li class="list-group-item border-0">
                                    <span class="product-infor">총 금액</span>
                                    <span id="payPrice" class="product-infor" style="float: right;">45,000원</span>
                                </li>
                                <li class="list-group-item border-0">
                                    <span>수량</span>
                                    <input type="number" id="productCount" name="productCount" value="1"
                                        style="width: 15%; float: right;" />
                                </li>
                                <li class="list-group-item border-0">
                                    <button class="btn btn-default goCart">
                                        <h5>장바구니</h5>	<!-- 일단 내비둠 -->
                                    </button>
                                    <button class="btn btn-default goPurchase">
                                        <h5>구매하기</h5>	<!-- 일단 내비둠 -->
                                    </button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- product-detail end -->

        <br><br>

        <!-- product-tabs -->
        <div class="product-tabs">
            <!-- Here's all it takes to make this navigation bar. -->
            <div id="product-tabs">
                <ul>
                    <li><a href="#product-images">제품상세</a></li>
                    <li><a href="#doctors-comments">추천평(${fn:length(recommends)})</a></li>
                    <li><a href="#product-qna">QnA(${fn:length(qnas) })</a></li>
                    <li><a href="#product-review">리뷰(${fn:length(reviews) })</a></li>
                </ul>
            </div>
        </div>
        <br>
        <!-- product-tabs end -->



        <!-- product-image -->
        <div id="product-images" class="product-images">
        	<c:set var="detailImg" value="/projectFiles/${photos[1].fileName }" />
            <img src="${detailImg }" style="width: 100%;" />	<!--  height: 1200px; -->
        </div>
        <br>
        <!-- product-image end -->



        <!-- doctors-comments -->
        <div id="doctors-comments" class="doctors-comments">
            <div class="row">
                <h3 class="mb-5">선생님들의 추천평(${fn:length(recommends)})</h3>

                <div class="col-lg-12 col-sm-12">
                    <table class="table">
                        <thead>
                            <tr>
                                <th colspan="2" style="width: 23%">선생님</th>
                                <th style="width: 62%">내용</th>
                                <th style="width: 15%">작성날짜</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<c:if test="${!empty recommends }">
                        	<c:forEach items="${recommends }" var="rec">
                        	<tr>
                        		<td>
                                    <img class="rounded-circle" src="../images/car.jpg">
                                </td>
                                <td>
                                    <div data-toggle="popover" data-html="true" title="선생님 정보"
                                        data-content="<a href='#'>프로필</a> <br> <a href='#'>여기는 병원이름</a>">
                                        고읍석
                                    </div>
                                </td>
                                <td>코로나보다 강한 고로나 조심하세요코로나보다 강한 고로나 조심하세요코로나보다 강한 고로나 조심하세요코로나보다 강한 고로나 조심하세요</td>
                                <td>2020-07-03</td>
                        	</tr> 
                        	</c:forEach>
                        	</c:if>
                        	<c:if test="${empty recommends }">
                        	<tr>
                        		<td colspan='4'>
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
                        <ul class="pagination">
                        	<!-- << -->
                            <li class="page-item">
                        	<c:if test="${recommendPage.currentPage eq 1 }">
                                <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                        	</c:if>
                            </li>                        	
                        	<li class="page-item">
                        	<c:if test="${recommendPage.currentPage gt 1 }">
                        		<!-- Ajax 구현할거니깐 일단 형태만 만들어두기 -->
                                <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                        	</c:if>
                            </li>              
                            <!-- numbers -->
                            <c:forEach var="p" begin="${recommendPage.startPage }" end="${recommendPage.endPage }">
                        		<c:if test="${p eq recommendPage.currentPage }">
	                        <li class="page-item"><a class="page-link" style="color: #a82400;">${p }</a></li>
                        		</c:if>
                        		<c:if test="${p ne recommendPage.currentPage }">
                        	<!-- Ajax 구현할거니깐 일단 형태만 만들어두기 -->
                        	<li class="page-item"><a class="page-link">${p }</a></li>	
                        		</c:if>
                        	</c:forEach>
                            <!-- >> -->
                            <li class="page-item">
                            <c:if test="${recommendPage.currentPage eq recommendPage.maxPage }">
		                        <a class="page-link" href="#" aria-label="Next">
	                                <span aria-hidden="true">&raquo;</span>
	                            </a>
	                        </c:if>
	                        <c:if test="${recommendPage.currentPage lt recommendPage.maxPage }">
	                        	<!-- Ajax 구현할거니깐 일단 형태만 만들어두기 -->
								<a class="page-link" href="#" aria-label="Next">
	                                <span aria-hidden="true">&raquo;</span>
	                            </a>
	                        </c:if>
                            </li>
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
                <h3 class="mb-5">상품 Q&A(${fn:length(qnas) })</h3>

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
                        <tbody>
                        	<c:if test="${empty qnas }">
                        	<tr>
                                <td colspan='5'>'해당 상품에 질문이 없습니다'</td>
                            </tr>
                        	</c:if>
                        	<c:if test="${!empty qnas }">
                        	<c:forEach var="qna" items="${qnas }">
                        	<tr>
                        		<td>${qna.rno }</td>
                        		<td>${qna.title }</td>
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
                            <!-- 
                            <tr>
                                <td>1</td>
                                <td>상품 문의 관련1</td>
                                <td>중곡동오이돼지</td>
                                <td>2020-07-12</td>
                                <td>답변완료</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>상품 문의 관련2</td>
                                <td>고범석 의원님</td>
                                <td>2020-07-12</td>
                                <td>답변대기</td>
                            </tr> -->
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- qna pagination -->
            <div class="pagination">
                <div style="float:none; margin:0 auto">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                        	<!-- << -->
                            <li class="page-item">
                        	<c:if test="${qnaPage.currentPage eq 1 }">
                                <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                        	</c:if>
                            </li>                        	
                        	<li class="page-item">
                        	<c:if test="${qnaPage.currentPage gt 1 }">
                        		<!-- Ajax 구현할거니깐 일단 형태만 만들어두기 -->
                                <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                        	</c:if>
                            </li>              
                            <!-- numbers -->
                            <c:forEach var="p" begin="${qnaPage.startPage }" end="${qnaPage.endPage }">
                        		<c:if test="${p eq qnaPage.currentPage }">
	                        <li class="page-item"><a class="page-link" style="color: #a82400;">${p }</a></li>
                        		</c:if>
                        		<c:if test="${p ne qnaPage.currentPage }">
                        	<!-- Ajax 구현할거니깐 일단 형태만 만들어두기 -->
                        	<li class="page-item"><a class="page-link">${p }</a></li>	
                        		</c:if>
                        	</c:forEach>
                            <!-- >> -->
                            <li class="page-item">
                            <c:if test="${qnaPage.currentPage eq qnaPage.maxPage }">
		                        <a class="page-link" href="#" aria-label="Next">
	                                <span aria-hidden="true">&raquo;</span>
	                            </a>
	                        </c:if>
	                        <c:if test="${qnaPage.currentPage lt qnaPage.maxPage }">
	                        	<!-- Ajax 구현할거니깐 일단 형태만 만들어두기 -->
								<a class="page-link" href="#" aria-label="Next">
	                                <span aria-hidden="true">&raquo;</span>
	                            </a>
	                        </c:if>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>

            <button class="btn btn-default goProductQnA" data-toggle="modal" data-target="#goQnA">Q&A 작성하기</button>

            <!-- modal -->
            <div class="modal fade" id="goQnA" role="dialog">
                <div class="modal-dialog">
    
                    <!-- Modal content-->
                    <div class="modal-content">
                        <form action="#" method="post">
                            <div class="modal-header">
                                <h4>상품 QnA 작성하기</h4>
                                <button type="button" class="close" data-dismiss="modal">×</button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label for="qnaTitle">제목</label>
                                    <input id="qnaTitle" type="text" style="width: 90%; float:right;" />
                                </div>
                                <div class="form-group">
                                    <label for="qnaContent">내용</label>
                                    <textarea id="qnaContent" rows="8"></textarea>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-default">제출하기</button>
                            </div>
                        </form>
                    </div>
    
                </div>
            </div>
        </div>
        <br>
        <!-- product-qna end -->





        <!-- product-review -->
        <div id="product-review" class="product-review mb-5">
            <div class="row">
                <h3 class="mb-5">리뷰(${fn:length(reviews) })</h3>

                <div class="col-lg-12 col-sm-12">
                    <table class="table">
                        <thead>
                            <tr>
                                <th colspan="2" style="width: 23%">작성자</th>
                                <th style="width: 62%">내용</th>
                                <th style="width: 15%">작성날짜</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<c:if test="${empty reviews }">
                       		<tr>
                       			<td colspan='4'>'해당 상품의 리뷰가 없습니다'</td>
                       		</tr>
                        	</c:if>
                        	<c:if test="${!empty reviews }">
                        	<c:forEach var="review" items="${reviews }">
                        	<tr>
                        		<td><!-- 이미지 --></td>
                        		<td>
                        			<c:if test="${empty review.cNo && !empty review.drNo }">
                        			${review.drName }
                        			</c:if>
                        			<c:if test="${!review.cNo && empty review.drNo }">
                        			${review.cNickname }
                        			</c:if>
								</td>
                        		<td>${review.content }</td>
                        		<td><!-- 리뷰작성날짜 --></td>
                        	</tr>
                        	</c:forEach>
                        	</c:if>
                        </tbody>
                    </table>

                    <!-- review pagination -->
                    <div class="pagination">
		                <div style="float:none; margin:0 auto">
		                    <nav aria-label="Page navigation example">
		                        <ul class="pagination">
		                        	<!-- << -->
		                            <li class="page-item">
		                        	<c:if test="${reviewPage.currentPage eq 1 }">
		                                <a class="page-link" href="#" aria-label="Previous">
		                                    <span aria-hidden="true">&laquo;</span>
		                                </a>
		                        	</c:if>
		                            </li>                        	
		                        	<li class="page-item">
		                        	<c:if test="${reviewPage.currentPage gt 1 }">
		                        		<!-- Ajax 구현할거니깐 일단 형태만 만들어두기 -->
		                                <a class="page-link" href="#" aria-label="Previous">
		                                    <span aria-hidden="true">&laquo;</span>
		                                </a>
		                        	</c:if>
		                            </li>              
		                            <!-- numbers -->
		                            <c:forEach var="p" begin="${reviewPage.startPage }" end="${reviewPage.endPage }">
		                        		<c:if test="${p eq reviewPage.currentPage }">
			                        <li class="page-item"><a class="page-link" style="color: #a82400;">${p }</a></li>
		                        		</c:if>
		                        		<c:if test="${p ne reviewPage.currentPage }">
		                        	<!-- Ajax 구현할거니깐 일단 형태만 만들어두기 -->
		                        	<li class="page-item"><a class="page-link">${p }</a></li>	
		                        		</c:if>
		                        	</c:forEach>
		                            <!-- >> -->
		                            <li class="page-item">
		                            <c:if test="${reviewPage.currentPage eq reviewPage.maxPage }">
				                        <a class="page-link" href="#" aria-label="Next">
			                                <span aria-hidden="true">&raquo;</span>
			                            </a>
			                        </c:if>
			                        <c:if test="${reviewPage.currentPage lt reviewPage.maxPage }">
			                        	<!-- Ajax 구현할거니깐 일단 형태만 만들어두기 -->
										<a class="page-link" href="#" aria-label="Next">
			                                <span aria-hidden="true">&raquo;</span>
			                            </a>
			                        </c:if>
		                            </li>
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
            $("[data-toggle='popover']").popover();
            
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
					$("#suggestProduct").css("display", "block");	//먼저할까 나중에할까
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
        });	//end of jquery
        
        function numberWithCommas(x) {
		    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
    </script>
</body>

</html>