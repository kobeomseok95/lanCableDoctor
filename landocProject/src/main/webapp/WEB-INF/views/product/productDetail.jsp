<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                        <form action="#" method="get">
                            <input type="text" id="searchProduct" name="searchProduct" class="mb-4" />
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
        <!-- menu end -->



        <!-- product-detail -->
        <div class="product-detail">
            <div class="row">
                <div class="col-lg-7">
                    <img src="#" style="width: 600px; height: 600px;" />
                </div>
                <div class="col-lg-5">
                    <h3 class="mb-4">상품 제목</h3>
                    <p>부연 설명</p>
                    <div>
                        <ul class="list-group">
                            <li class="list-group-item border-0">
                                <span class="product-infor">판매금액</span>
                                <span class="price" style="float: right;">
                                    <span style="text-decoration:line-through">52,000원</span>
                                    <strong>48,000원</strong>
                                </span>
                            </li>
                            <li class="list-group-item border-0">
                                <span class="product-infor">내용량</span>
                                <span style="float: right;">600mg * 24개 (15일치)</span>
                            </li>
                            <li class="list-group-item border-0">
                                <span class="product-infor">섭취방법</span>
                                <span style="float: right;">밥에 비벼먹기</span>
                            </li>
                            <li class="list-group-item border-0">
                                <span class="product-infor">유통기한</span>
                                <span style="float: right;">2020-09-22</span>
                            </li>
                            <li class="list-group-item border-0">
                                <span class="product-infor">추천수</span>
                                <span style="float: right;">???</span>
                            </li>
                        </ul>

                        <div class="amountArea">
                            <ul class="list-group">
                                <li class="list-group-item border-0">
                                    <span>총 주문 금액</span>
                                    <span style="float: right;">50,000원</span>
                                </li>
                                <li class="list-group-item border-0">
                                    <span class="discount">할인 금액</span>
                                    <span class="discount" style="float: right;">-5,000원</span>
                                </li>
                                <li class="list-group-item border-0">
                                    <span class="product-infor">총 금액</span>
                                    <span class="product-infor" style="float: right;">45,000원</span>
                                </li>
                                <li class="list-group-item border-0">
                                    <span>수량</span>
                                    <input type="number" name="productCount" value="1"
                                        style="width: 15%; float: right;" />
                                </li>
                                <li class="list-group-item border-0">
                                    <button class="btn btn-default goCart">
                                        <h5>장바구니</h5>
                                    </button>
                                    <button class="btn btn-default goPurchase">
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

        <br><br>

        <!-- product-tabs -->
        <div class="product-tabs">
            <!-- Here's all it takes to make this navigation bar. -->
            <div id="product-tabs">
                <ul>
                    <li><a href="#product-images">제품상세</a></li>
                    <li><a href="#doctors-comments">추천평(??)</a></li>
                    <li><a href="#product-qna">QnA(??)</a></li>
                    <li><a href="#product-review">리뷰(??)</a></li>
                </ul>
            </div>
        </div>
        <br>
        <!-- product-tabs end -->



        <!-- product-image -->
        <div id="product-images" class="product-images">
            <img src="#" style="width: 100%; height: 1200px;" />
        </div>
        <br>
        <!-- product-image end -->



        <!-- doctors-comments -->
        <div id="doctors-comments" class="doctors-comments">
            <div class="row">
                <h3 class="mb-5">선생님들의 추천평(2)</h3>

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
                            <!-- 위의 tr은 의사가 로그인 한 경우 밑에는 작성자가 로그인 한 경우 -->
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
                                <td>역시 코로나 보단 메로나!</td>
                                <td>2020-07-03</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- pagination -->
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
        <br>
        <!-- doctors-comments end -->




        <!-- product-qna -->
        <div id="product-qna" class="product-qna">
            <div class="row">
                <h3 class="mb-5">상품 Q&A(2)</h3>

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
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- pagination -->
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
                <h3 class="mb-5">리뷰(3)</h3>

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
                            <!-- 위의 tr은 의사가 로그인 한 경우 밑에는 작성자가 로그인 한 경우 -->
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
                                <td>역시 코로나 보단 메로나!</td>
                                <td>2020-07-03</td>
                            </tr>
                        </tbody>
                    </table>

                    <!-- pagination -->
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
        });
    </script>
</body>

</html>