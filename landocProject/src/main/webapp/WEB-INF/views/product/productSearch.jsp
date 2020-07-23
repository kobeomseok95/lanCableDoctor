<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <title>상품 검색</title>
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
                        <form action="#" method="get">
                            <input type="text" id="searchProduct" name="searchProduct" class="mb-4" value="검색한" />
                            <button type="button" class="btn btn-default"><i class="fas fa-search"></i></button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-2"></div>
            </div>

            <div class="row">
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
            </div>
        </div>
         
        <div class="cateSeletion">
            <div class="row" style="height: 40px;">
                <div class="col-lg-3 mt-3">
                    <h4>'검색한' 검색 결과</h4>
                </div>
                <div class="col-lg-9 pl-5">
                    <div align="right">
                        <ul class="list-group list-group-horizontal-sm" style="margin-left: 60px;">
                            <li class="list-group-item border-0 px-2">
                                <p><a href="#" style="border-bottom: 1px solid #3c455f;">최신순</a></p>
                            </li>
                            <li class="list-group-item border-0 px-2">
                                <p><a href="#">낮은 가격순</a></p>
                            </li>
                            <li class="list-group-item border-0 px-2">
                                <p><a href="#">높은 가격순</a></p>
                            </li>
                            <li class="list-group-item border-0 px-2">
                                <p><a href="#">조회순</a></p>
                            </li>
                            <li class="list-group-item border-0 px-2">
                                <p><a href="#">판매순</a></p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <!-- 상품나열 상품은 열두개 나열-->
        <div class="products-main mb-5">
            <hr>
            <div class="row">
                <div class="col-lg-3" align="center">
                    <a href="#"><img class="product-image my-3" src="#" /></a>
                    <h4 class="my-3"><a href="#">상품명</a></h4>
                    <h5>25,000 원</h5>
                </div>
                <div class="col-lg-3" align="center">
                    <a href="#"><img class="product-image my-3" src="#" /></a>
                    <h4 class="my-3"><a href="#">상품명</a></h4>
                    <h5>25,000 원</h5>
                </div>
                <div class="col-lg-3" align="center">
                    <a href="#"><img class="product-image my-3" src="#" /></a>
                    <h4 class="my-3"><a href="#">상품명</a></h4>
                    <h5>25,000 원</h5>
                </div>
                <div class="col-lg-3" align="center">
                    <a href="#"><img class="product-image my-3" src="#" /></a>
                    <h4 class="my-3"><a href="#">상품명</a></h4>
                    <h5>25,000 원</h5>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-lg-3" align="center">
                    <a href="#"><img class="product-image my-3" src="#" /></a>
                    <h4 class="my-3"><a href="#">상품명</a></h4>
                    <h5>25,000 원</h5>
                </div>
                <div class="col-lg-3" align="center">
                    <a href="#"><img class="product-image my-3" src="#" /></a>
                    <h4 class="my-3"><a href="#">상품명</a></h4>
                    <h5>25,000 원</h5>
                </div>
            </div>
        </div>



        <div class="pagination">
            <div style="float:none; margin:0 auto">
                <nav aria-label="Page navigation example">
                    <ul class="pagination">
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>

    </div>



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

</body>

</html>