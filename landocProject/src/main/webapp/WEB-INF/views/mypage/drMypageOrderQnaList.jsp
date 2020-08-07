<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>주문QnA</title>
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
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<%@ include file="../static/header.jsp"%>

	<div class="container" style="margin-top: 80px; text-align: center">
		<div class="p-4" style="width: 1000px; display: inline-block;">



			<div class="review-list-title text-left" style="font-size: 40px;">
				<a href="mypageWork.html"
					style="color: #0071ce; letter-spacing: -0.5px;"> 나의 QnA 문의글 </a> >
				<strong class="ml-2">주문QnA</strong>
			</div>


			<div class="pb-2 mt-5 review-list-subtitle text-left"
				style="font-size: 25px; border-bottom: solid; border-color: rgba(0, 0, 0, 0.514);">답변
				대기중인 QnA</div>
			<table class="table w-100 border-bottom">
				<tbody>
					<tr style="background-color: #f8f8f8; color: #9b9b9b;">
						<th class="p-3" style="text-align: center;">분류</th>
						<th class="p-3" style="text-align: center;">제목</th>
						<th class="p-3" style="text-align: center;">작성일자</th>
						<th class="p-3" style="text-align: center;">진행상황</th>
					</tr>
					<c:if test="${empty qnaNList}">
						<tr class="color49" style="font-size: 14px;">
							<td style="vertical-align: middle; text-align: center;" colspan="4"> <p class="m-0">작성된 QnA글이 없습니다.</p></td>
						</tr>
					</c:if>
					<c:if test="${not empty qnaNList}">
					<c:forEach var="n" items="${qnaNList}">
						<tr class="color49" style="font-size: 14px;">
							<td style="vertical-align: middle; text-align: center;">주문문의</td>
							<td style="vertical-align: middle; text-align: center;">${n.oqnaTitle}</td>
							<td style="vertical-align: middle; text-align: center;">${n.oqnaDate}</td>
							<td style="vertical-align: middle; text-align: center;">
								답변대기중</td>
						</tr>
					</c:forEach>
					</c:if>
				</tbody>
			</table>


			<div
				class="pb-2 mt-5 review-list-subtitle d-flex justify-content-between"
				style="font-size: 25px; border-bottom: solid; border-color: rgba(0, 0, 0, 0.514);">
				답변완료된 QnA</div>
			<c:if test="${empty qnaYList}">
			<div class="color9b text-center" style="font-size: 1.313rem; margin-top: 73.7px;letter-spacing: -0.8px;">
                <div class="my-3 text-center">
                    <p class="m-0">답변완료된 QnA가 없습니다.</p>
                </div>
           </div>
			</c:if>
			<c:if test="${not empty qnaYList}">
			<c:forEach var="y" items="${qnaYList}">
				<div class="card mt-3 mb-3 text-left">
					<!-- for문 돌려서 리스트 뽑아낼 때 data-targer, href 숫자 증가 시키기-->
					<div class="card-header newreview p-4" data-toggle="collapse"
						data-target="#collapse-${y.oqnaNo}" href="#collapse-${y.oqnaNo}"
						aria-expanded="false" aria-controls="collapse-${y.oqnaNo}"
						style="cursor: pointer;">
						<div class="card-title m-0">
							<div class="d-flex align-items-center justify-content-between">
								<div class="color49 font-weight-bold" style="font-size: 21px;">
									${y.oqnaTitle}

									<div class="color9b" style="font-size: 12px;">작성 날짜 :
										${y.oqnaDate}</div>
								</div>
								<img
									src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_05/img/arrow_bottom.svg"
									class="img-fluid" alt="Responsive image"
									style="width: 24px; height: 24px;">
							</div>
						</div>
					</div>
					<!-- for문 돌려서 리스트 뽑아낼 때 div id 숫자 증가 시키기-->
					<div id="collapse-${y.oqnaNo}" class="card-body collapse p-4">
						<div class="color49 mb-4" style="font-weight: bold">
							<div style="font-weight: 500;"
								class="d-flex justify-content-start align-items-center">
								<div class="mr-2">상품명 :</div>
								<div class="rounded-pill p-2 ml-1 mr-1"
									style="background-color: #e9e9e9;">
									<a href="#" style="color: #45668e;">${y.pdName}</a>
								</div>
							</div>
						</div>
						<div class="row">

							<div class="col-9">
								<div class="color49 toast-message mb-4" style="font-size: 14px;">
									${y.oqnaContent}</div>

							</div>
						</div>
						<hr>
						<div class="row">

							<div class="col-9">
								<div class="color49 toast-message mb-4" style="font-size: 14px;">
									${y.oqnaAnswer}</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			</c:if>

			<div
				style="position: fixed; bottom: 70px; right: 100px; z-index: 999;">
				<a href="https://pf.kakao.com/_VAryxb" target="_blank"> <img
					src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/katalk_Q.png"
					style="width: auto; height: 80px;">
				</a>
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
				<c:url var="blistBack" value="orderQnaList.do">
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
					<c:url var="blistCheck" value="orderQnaList.do">
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
				<c:url var="blistNext" value="orderQnaList.do">
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
