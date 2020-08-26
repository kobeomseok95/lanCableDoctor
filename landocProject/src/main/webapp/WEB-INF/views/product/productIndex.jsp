<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <title>상품</title>
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
    <!-- font awesome -->
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/slicknav.min.css" />

    <!-- Main Stylesheets -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css" />


    <!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	<style>
	.price, .won{
		font-size: 22px;
		font-weight: 600;
		color: #0077ee5;
	}
	a{font-size:16px;font-weight:300;}
	h4{font-size:20px;font-weight:600;}
	#searchProduct{border:1.5px solid #ccc; border-radius:5px;}
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
        <div class="product-menu">
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-8">
                    <div class="product-search" style="margin-bottom:20px; margin-top:20px;">
                    	<!-- 검색하기 -->
                        <form id="searchForm" action="productSearch.do" method="get">
                            <input type="text" id="searchProduct" name="keyword" /><!-- class="mb-4" -->
                            <button id="searchBtn" type="button" class="btn btn-default"><i class="fas fa-search" style="color:#007ee5;"></i></button>
                        </form>
                        <div id="suggestProduct">
                        	
                        </div>
                    </div>
                </div>
                <div class="col-lg-2"></div>
            </div>

            <div class="row mt-4 mb-4">
				<ul>
				    <li><a href="productIndex.do?sortNo=${sortNo }&pageNo=1&categoryNo=7">전체보기</a></li>
				    <li><a href="productIndex.do?sortNo=${sortNo }&pageNo=1&categoryNo=1">종합건강</a></li>
				    <li><a href="productIndex.do?sortNo=${sortNo }&pageNo=1&categoryNo=2">눈건강</a></li>
				    <li><a href="productIndex.do?sortNo=${sortNo }&pageNo=1&categoryNo=4">장건강</a></li>
				    <li><a href="productIndex.do?sortNo=${sortNo }&pageNo=1&categoryNo=5">피로개선</a></li>
				    <li><a href="productIndex.do?sortNo=${sortNo }&pageNo=1&categoryNo=6">피부건강</a></li>
				    <li><a href="productIndex.do?sortNo=${sortNo }&pageNo=1&categoryNo=3">뼈&관절건강</a></li>
				</ul>
            </div>
        </div>

        <div class="cateSeletion">
            <div class="row" style="height: 40px;">
                <div class="col-lg-3 mt-3">
                    <h4>
                    	<c:choose>
                    	<c:when test="${categoryNo eq 7 }">
						전체보기
                    	</c:when>
						<c:otherwise>
						<c:out value="${products[0].categoryName }"/> 
						</c:otherwise>                    	
                    	</c:choose>
                    	(<c:out value="${listCount }" />)
                    </h4>
                </div>
                <div class="col-lg-9 pl-5">
                    <div align="right">
                        <ul class="list-group list-group-horizontal-sm" style="margin-left: 450px;">
                            <li class="list-group-item border-0 px-2">
                                <p><a class="orderCondition" href="productIndex.do?sortNo=1&pageNo=1&categoryNo=${categoryNo }">최신순</a></p>
                            </li>
                            <li class="list-group-item border-0 px-2">
                                <p><a class="orderCondition" href="productIndex.do?sortNo=2&pageNo=1&categoryNo=${categoryNo }">낮은 가격순</a></p>
                            </li>
                            <li class="list-group-item border-0 px-2">
                                <p><a class="orderCondition" href="productIndex.do?sortNo=3&pageNo=1&categoryNo=${categoryNo }">높은 가격순</a></p>
                            </li>
                            <li class="list-group-item border-0 px-2">
                                <p><a class="orderCondition" href="productIndex.do?sortNo=4&pageNo=1&categoryNo=${categoryNo }">조회순</a></p>
                            </li>
                            <li class="list-group-item border-0 px-2">
                                <p><a class="orderCondition" href="productIndex.do?sortNo=5&pageNo=1&categoryNo=${categoryNo }">추천순</a></p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- 상품나열 상품은 열두개 나열-->
        <div class="products-main mb-5">
        	<c:if test="${!empty products }">
        		<c:forEach var="product" items="${products }" varStatus="status">
        			<c:choose>
	        			<c:when test="${status.index mod 4 eq 0}">
	        			<hr>
	        			<div class="row">
	                		<div class="col-lg-3" align="center">
	        					<c:url var="goDetail" value="productDetail.do">
	        						<c:param name="pdNo" value="${product.pdNo }" />
	        					</c:url>
	        					<a href="${goDetail }">
	        						<c:set var="fullPath" value="/projectFiles/${product.photos[0].fileName }" />
		        					<img class="product-image my-3" src="${fullPath }" />
	        					</a>
			                    <h4 class="my-3"><a href="${goDetail }">${product.pdName }</a></h4>
			                    <span class="price">${product.sellPrice }</span>
			                    <span class="won">원</span>
			                </div>
			            <c:choose>
			            	<c:when test="${status.last }">
			            </div>
			            	</c:when>
			            </c:choose>
	        			</c:when>
	        			<c:when test="${status.index mod 4 eq 3}">
	        				<div class="col-lg-3" align="center">
	        					<c:url var="goDetail" value="productDetail.do">
	        						<c:param name="pdNo" value="${product.pdNo }" />
	        					</c:url>
	        					<a href="${goDetail }">
	        					<c:set var="fullPath" value="/projectFiles/${product.photos[0].fileName }" />
	        						<img class="product-image my-3" src="${fullPath }" />
	        					</a>
			                    <h4 class="my-3"><a href="${goDetail }">${product.pdName }</a></h4>
			                    <span class="price">${product.sellPrice }</span>
			                    <span class="won">원</span>
			                </div>
			            </div>
	        			</c:when>
	        			<c:otherwise>
		        			<div class="col-lg-3" align="center">
		       					<c:url var="goDetail" value="productDetail.do">
	        						<c:param name="pdNo" value="${product.pdNo }" />
	        					</c:url>
	        					<a href="${goDetail }">
	        					<c:set var="fullPath" value="/projectFiles/${product.photos[0].fileName }" />
		       						<img class="product-image my-3" src="${fullPath }" />
		       					</a>
			                    <h4 class="my-3"><a href="${goDetail }">${product.pdName }</a></h4>
			                    <span class="price">${product.sellPrice }</span>
			                    <span class="won">원</span>
				            </div>
				         <c:choose>
			            	<c:when test="${status.last }">
			            </div>
			            	</c:when>
			            </c:choose>
	        			</c:otherwise>
        			</c:choose>
        		</c:forEach>
        	</c:if>
        </div>

		
        <div class="pagination">
            <div style="float:none; margin:0 auto">
                <nav aria-label="Page navigation example">
                    <ul class="pagination">
                        <li class="page-item">
                        	<!-- 이전버튼 -->
                        	<c:if test="${page.currentPage eq 1 }">
                        	<a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        	</c:if>
                        	<c:if test="${page.currentPage gt 1 }">
								<c:url var="pagePrev" value="productIndex.do">
									<c:param name="sortNo" value="${sortNo }" />
									<c:param name="pageNo" value="${page.currentPage - 1 }" />
									<c:param name="categoryNo" value="${categoryNo }" />
								</c:url>                        	
                            <a class="page-link" href="${pagePrev }" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        	</c:if>
                        </li>
                        <c:forEach var="p" begin="${page.startPage }" end="${page.endPage }">
                        	<c:if test="${p eq page.currentPage }">
                        <li class="page-item"><a class="page-link" style="color: #a82400;">${p }</a></li>
                        	</c:if>
                        	<c:if test="${p ne page.currentPage }">
                        	<c:url var="pageNumbering" value="productIndex.do">
                        		<c:param name="sortNo" value="${sortNo }" />
                        		<c:param name="pageNo" value="${p }" />
                        		<c:param name="categoryNo" value="${categoryNo }" />
                        	</c:url>
                        <li class="page-item"><a class="page-link" href="${pageNumbering }">${p }</a></li>	
                        	</c:if>
                        </c:forEach>
                        
                        <li class="page-item">
	                        <!-- 마지막 -->
	                        <c:if test="${page.currentPage eq page.maxPage }">
		                        <a class="page-link" href="#" aria-label="Next">
	                                <span aria-hidden="true">&raquo;</span>
	                            </a>
	                        </c:if>
	                        <c:if test="${page.currentPage lt page.maxPage }">
	                        	<c:url var="pageNext" value="productIndex.do">
									<c:param name="sortNo" value="${sortNo }" />
									<c:param name="pageNo" value="${page.currentPage + 1 }" />
									<c:param name="categoryNo" value="${categoryNo }" />
								</c:url>
							<a class="page-link" href="${pageNext }" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
	                        </c:if>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        
    </div>	<!-- end of container -->
    <!-- Footer section -->
    <%@ include file="../static/footer.jsp"%>
    <!-- Footer section end -->

    <!--====== Javascripts & Jquery ======-->
    <script src="<%=request.getContextPath()%>/resources/js/jquery-3.2.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/jquery.slicknav.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/mixitup.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/main.js"></script>
	<script>
		$(function(){
			$('.price').each(function(index, item){
				$(this).text(numberWithCommas($(this).text()));
			});

			$('.orderCondition').each(function(index, item){
				var sortNo = "${sortNo}";
				if(index === sortNo - 1){
					$(item).css("color", "#a82400");
				}
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
					//$("#suggestProduct").css("display", "block");
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
		});	//end of jquery
		
		
		function numberWithCommas(x) {
		    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
	</script>
</body>

</html>







