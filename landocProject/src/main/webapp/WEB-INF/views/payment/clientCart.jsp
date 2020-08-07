<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ page session="false" %> --%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>장바구니</title>
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
<!-- font awesome cdn -->
<link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/slicknav.min.css" />

<!-- Main Stylesheets -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/style.css" />


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

	<%@ include file="../static/header.jsp"%>
    <!-- cart -->
    <div class="container">
        <h3 class="text-center">장바구니</h3>

        <div class="row">
            <div class="allCheck">
                <input type="checkbox" id="allProduct" class="allProduct">
                <label for="allProduct" class="allProduct mx-3">전체선택</label>
            </div>
        </div>

        <div class="row">
            <!-- 장바구니 내의 상품들 -->
            <div class="col-lg-8">
                <table class="table mb-0">
                    <tr style="display: none;">
                        <th style="width: 10%"></th>
                        <th style="width: 15%"></th>
                        <th style="width: 40%"></th>
                        <th style="width: 25%"></th>
                        <th style="width: 10%"></th>
                    </tr>
                    <tr>
                        <td><input type="checkbox" class="product-checkbox" /></td>
                        <td><img src="#" /></td>
                        <td>
                            <h5>상품 제목</h5>
                            <h5>250,000</h5>
                        </td>
                        <td><input type="number" style="width: 50px;" value="1" /></td>
                        <td><button class="btn btn-sm">삭제하기</button></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" class="product-checkbox" /></td>
                        <td><img src="#" /></td>
                        <td>
                            <h5>상품 제목</h5>
                            <h5>250,000</h5>
                        </td>
                        <td><input type="number" style="width: 50px;" value="1" /></td>
                        <td><button class="btn btn-sm">삭제하기</button></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" class="product-checkbox" /></td>
                        <td><img src="#" /></td>
                        <td>
                            <h5>상품 제목</h5>
                            <h5>250,000</h5>
                        </td>
                        <td><input type="number" style="width: 50px;" value="1" /></td>
                        <td><button class="btn btn-sm">삭제하기</button></td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" class="product-checkbox" /></td>
                        <td><img src="#" /></td>
                        <td>
                            <h5>상품 제목</h5>
                            <h5>250,000</h5>
                        </td>
                        <td><input type="number" style="width: 50px;" value="1" /></td>
                        <td><button class="btn btn-sm">삭제하기</button></td>
                    </tr>
                </table>
            </div>
            <!-- 결제 -->
            <div class="col-lg-4">
                <div class="amountArea">
                    <ul class="list-group">
                        <li class="list-group-item border-0">
                            <span>상품 주문 금액</span>
                            <span style="float: right;">50,000원</span>
                        </li>
                        <li class="list-group-item border-0">
                            <span>포인트 사용 금액</span>
                            <span style="float: right;">-5,000원</span>
                        </li>
                        <li class="list-group-item border-0">
                            <span>총 결제 금액</span>
                            <span style="float: right;">45,000원</span>
                        </li>
                    </ul>
                </div>
                <br>
                <div class="text-center">
                    <button class="btn btn-lg">결제하기</button>
                </div>
            </div>  


        </div>

        <div class="row">

        </div>
    </div>
    <!-- cart end -->

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