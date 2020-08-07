<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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


<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   <![endif]-->
<style>
#posit {
	position: relative;
}

.period_btn {
	font-size: 14px;
	width: 58px;
	background-color: darkgray;
	color: whitesmoke;
}
</style>
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<%@ include file="../static/header.jsp"%>


	<div class="container" style="text-align: center;">
		<div style="width: 1000px; display: inline-block">
			<div class="row px-3 py-5" id="posit">

				<!--공간 띄우기 용-->
			</div>



			<div class="col-12 text-left">

				<div class="point-breadcrumb text-left">
					<a href="mypageWork.do"
						style="color: #0071ce; letter-spacing: -0.5px; font-size: 25px;">
						나의 주문조회 </a> > <strong class="ml-2" style="font-size: 25px;">주문취소/교환/반품
						목록</strong>
				</div>

				<!-- <div class="point-count-title mt-4 text-left" style="font-size: 30px;">
                         총 2건의 주문내역
                    </div> -->





				<table class="table w-100 border-bottom"
					style="margin-bottom: 30px; margin-top: 40px;">
					<thead>
						<tr
							style="background-color: #f8f8f8; color: #9b9b9b; text-align: center;">
							<th scope="col" class="p-3" style="width: 210px;">주문일(결제금액)</th>
							<th scope="col" class="p-3">상품명/주문옵션/주문번호</th>
							<th scope="col" class="p-3">주문상태</th>
						</tr>

					</thead>
					<c:if test="${empty cancelList}">
						<tbody>
							<tr class="color49"
								style="font-size: 14px; color: rgba(0, 0, 0, 0.651);">
								<td class="p-3"
									style="text-align: center; border-right: solid 1px; border-color: lightgray; vertical-align: middle;"
									rowspan="2" colspan="3">
									주문정보가 없습니다.
								</td>
							</tr>
						 </tbody>
					</c:if>
					<c:if test="${not empty cancelList}">
					<!--1번째 글-->
					<c:forEach var="o" items="${cancelList}">
						<tbody>
							<tr class="color49"
								style="font-size: 14px; color: rgba(0, 0, 0, 0.651);">
								<td class="p-3"
									style="text-align: center; border-right: solid 1px; border-color: lightgray; vertical-align: middle;"
									rowspan="2">
									<div class="date-num">
										<strong>${o.orderDate}</strong>


									</div>

									<div class="total-charge">
										결제금액: <strong class="charge"><span class="num">${o.amountPrice}</span>원</strong>
									</div>

								</td>
								<td class="product"
									style="border-right: solid 1px; border-color: lightgray; border-bottom: solid 1px; border-color: lightgray; vertical-align: middle;"
									rowspan="2">
									<div class="product-block">
										<a href="#" target="_blank" class="product-thumbnail"
											style="float: left;"> <img
											src="../solmusic/img/blog/1.jpg"
											style="width: 60px; height: 60px" alt=""></a>
										<div class="product-content" style="padding-left: 77px;">
											<div class="product-name">
												<a href="#" target="_blank">${o.pdName}</a>
											</div>


											<div class="product-order-num">
												<span class="label">주문번호</span> ${o.orderNo}
											</div>

										</div>
									</div>
								</td>

								<td class="status"
									style="vertical-align: middle; text-align: center; border-bottom: solid 1px; border-color: lightgray; vertical-align: middle;"
									rowspan="2"><strong class="status-msg">${o.oName}</strong>
									<!-- <a href="#"><img src="#" alt="배송조회"></a> --></td>
							</tr>



						</tbody>
					</c:forEach>
					</c:if>




				</table>
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
				<c:url var="blistBack" value="myOrderCancelList.do">
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
					<c:url var="blistCheck" value="myOrderCancelList.do">
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
				<c:url var="blistNext" value="myOrderCancelList.do">
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