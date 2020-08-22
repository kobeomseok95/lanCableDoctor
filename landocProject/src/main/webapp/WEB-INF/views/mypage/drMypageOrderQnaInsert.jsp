<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>주문QnA작성</title>
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

	<link rel="stylesheet" type="text/css"
		href="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/mdd_event/style.css">


	<div class="container" style="text-align: center;">
		<div style="width: 1000px; display: inline-block">
			<div class="row px-3 py-5" id="posit">

				<!--공간 띄우기 용-->
			</div>



			<div class="col-12 text-left">

				<div class="point-breadcrumb text-left">
					<a href="doctorMypage.do"
						style="color: #0071ce; letter-spacing: -0.5px; font-size: 30px;">
						나의 주문조회 </a> > <a href="drMyOrderList.do"
						style="color: #0071ce; letter-spacing: -0.5px; font-size: 30px;">
						주문목록 </a> > <strong class="ml-2" style="font-size: 30px;">문의하기</strong>
				</div>


				<form id="register-submit-form" action="drOrderQnaInsert.do"
					method="post">
					<input type="hidden" name="orderNo" id="orderNo"
						value="${orderQna.orderNo }">

					<div class="container-fluid  pt-5 pb-5"
						style="text-align: center; padding-left: 0px; padding-right: 0px;">
						<div style="width: 1000px; display: inline-block">



							<div class="summit-content-box mx-auto p-5 mt-4">
								<table class="table w-100 border-bottom"
									style="width: 1120px; background-color: white; margin-bottom: 100px;">

									<thead>
										<tr
											style="background-color: #f8f8f8; color: #9b9b9b; text-align: center;">
											<th class="first" style="width: 200px;">상품번호 (주문번호)</th>
											<th>상품명</th>
											<th style="width: 250px;">상품금액 (개수)</th>
											<th style="width: 150px;">할인금액</th>
											<th style="width: 150px;">주문상태</th>
										</tr>
									</thead>
									<tbody>



										<tr>
											<td class="first" rowspan="2"
												style="border-right: solid lightgray 1px;">
												${orderQna.pdNo} <span class="order-number">(${orderQna.orderNo})</span>

											</td>
											<td style="border-right: solid lightgray 1px;"><a
												href="productDetail.do?pdNo=${orderQna.pdNo}">${orderQna.pdName}</a></td>
											<td class="price" rowspan="2"
												style="border-right: solid lightgray 1px;"><strong
												class="num">${orderQna.countMultiple}</strong>원 (<strong
												class="num">${orderQna.opCount}</strong>개)</td>
											<td class="price" rowspan="2"
												style="border-right: solid lightgray 1px;"><strong>-${orderQna.discountPrice}</strong>원
											</td>


											<td class="status" rowspan="2"><strong
												class="status-msg">${orderQna.oName}<br></strong></td>
										</tr>
										<tr class="product-order-option">
											<td><div>${orderQna.originPrice}원</div></td>
										</tr>


									</tbody>
								</table>

								<div class="row">
									<div class="col-sm-12  p-3 rounded-lg text-left"
										style="background-color: #f8f8f8;">
										<b style="color: #494949; font-size: 20px;" class="col-sm-3 ">주문
											QnA</b> <input type="text" class="form-control col-sm-10"
											style="display: inline-block;" id="orderQnaTitle"
											name="orderQnaTitle" placeholder="제목을 작성해주세요." required="required" >
									</div>
								</div>


								<div class="row">
									<div class="col-sm-12  p-0 mt-1">

										<textarea class="form-control" rows="5" id="orderQnaContent"
											name="orderQnaContent" placeholder="문의사항을 작성해주세요." required="required"></textarea>

									</div>
								</div>
							</div>





							<div class="d-flex justify-content-center">
								<div class="form_error_messages">
									<div class="errors-info errors-info-review-submit mt-5">

									</div>
								</div>
							</div>

							<div class="row mt-5 mb-5 pt-3">
								<div class="col-sm-6 offset-sm-3 p-0 align-top">
									<button class="btn btn-mdd w-100 p-4" type="submit"
										style="font-size: 21px; background-color: #0071ce; color: whitesmoke;">
										문의하기</button>
								</div>
							</div>
						</div>
					</div>
				</form>

			</div>

		</div>
	</div>

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
