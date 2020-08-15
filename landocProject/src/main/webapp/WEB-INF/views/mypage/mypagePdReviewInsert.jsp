<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>상품리뷰작성</title>
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
	.checked {color: orange;}
	
	.btn-file input[type=file] {
                           top: 0;
                           left: 0;
                           min-width: 100%;
                           min-height: 100%;
                           text-align: right;
                           opacity: 0;
                           background: none repeat scroll 0 0 transparent;
                           cursor: inherit;
                           display: block;
                           position: absolute;} 
                           
     .btn-block{background-color: #007ee5; position: relative;}
}
</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
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
					<a href="mypageWork.html"
						style="color: #0071ce; letter-spacing: -0.5px; font-size: 25px;">
						나의 주문조회 </a> > <a href="myOrderList.html"
						style="color: #0071ce; letter-spacing: -0.5px; font-size: 25px;">
						주문목록 </a> > <strong class="ml-2" style="font-size: 25px;">구매후기
						작성</strong>
				</div>


				<form id="review" action="pdReviewInsert.do"
					method="post" enctype="multipart/form-data" >

					<input type="hidden" name="orderNo" value="${orderDetail.orderNo}">
					<input type="hidden" name="pdNo" value="${orderDetail.pdNo}">
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
												${orderDetail.pdNo} <span class="order-number">(${orderDetail.orderNo})</span>

											</td>
											<td style="border-right: solid lightgray 1px;"><a
												href="#">${orderDetail.pdName}</a></td>
											<td class="price" rowspan="2"
												style="border-right: solid lightgray 1px;"><strong
												class="num">${orderDetail.countMultiple}</strong>원 (<strong
												class="num">${orderDetail.opCount}</strong>개)</td>
											<td class="price" rowspan="2"
												style="border-right: solid lightgray 1px;"><strong>-${orderDetail.discountPrice}</strong>원
											</td>


											<td class="status" rowspan="2"><strong
												class="status-msg">${orderDetail.oName}<br></strong></td>
										</tr>
										<tr class="product-order-option">
											<td><div>${orderDetail.originPrice}</div></td>
										</tr>


									</tbody>
								</table>
								<!-- <div class="row mb-4">
                    <div class="col-sm-1">
                        <div class="content-box-numbering align-middle mx-auto">★</div>
                    </div>
                    <div class="col-sm-11 content-box-title">
                        텍스트 리뷰
                    </div>
                </div> -->
								<div class="row">
									<div class="col-sm-12  p-3 rounded-lg text-left"
										style="background-color: #f8f8f8;">
										<b style="color: #494949;">좋은 리뷰는?</b> <b
											style="color: #494949; font-weight: 300;">1. 효과 중심의 리뷰 /
											2. 복용기간 중심의 리뷰</b>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-12  p-0 d-flex justify-content-end">
										<button type="button" class="btn btn-link collapsed"
											data-toggle="collapse" href="#collapseExample"
											aria-expanded="false" aria-controls="collapseExample"
											style="font-size: 14px; font-weight: bold; color: #0071ce;">
											예시 보기</button>
									</div>
									<div class="row mt-2 mb-2 collapse" id="collapseExample"
										style="">
										<div class="col-sm-12  text-left">
											<div class="p-3 border rounded-lg"
												style="font-size: 14px; color: #494949;">
												OOO 상품을 복용해보았습니다. <b class="text-emphasize-puple"
													style="color: #0071ce;">요즘 피로한 느낌을 받아 </b> OO 상품을 복용하게
												되었습니다. 처음 <b class="text-emphasize-puple"
													style="color: #0071ce;">1주일간은 효과를 느끼지 못했지만</b> <b
													class="text-emphasize-puple" style="color: #0071ce;">한달이
													지난 지금까지 꾸준히 복용해 주니 확실히 이전보다는 피로를 덜 느끼고 있습니다.</b> OO상품 추천합니다.

											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12  p-0 mt-1">
										<textarea class="form-control" rows="5" id="comment"
											name="pdReview" placeholder="상품을 복용한 후기를 적어주세요 (20자 이상)"
											onkeyup="textCounter(this, 'counter', 20);"
											required="required">${review.pdReviewContent}</textarea>
					
				  <!-- 이미지 자료 첨부 미리보기 -->
				  <c:if test="${review.renameFile eq null}">
				  <span id="remove" style="display: none;">X</span>
				  </c:if>
				  <c:if test="${review.renameFile ne null}">
				  <span id="remove" >X</span>
				  </c:if>
				  <div class="file-preview" id="thumb-receipt">
				  <c:if test="${review.renameFile eq null}">
                     <img id="preView" name="preView">
               	  </c:if>
               	  <c:if test="${review.renameFile ne null}">
                     <img id="preView" name="preView" src="/projectFiles/${review.renameFile}" width="600px" height="300px">
               	  </c:if>
                  </div>		
                  <!-- 이미지 첨부 버튼 -->		 
                  <div tabindex="500" class="btn btn-blackcontent btn-block p-3 btn-file" style="background-color:#0071ce" id="test">
                  
                     <span style="font-size: 18px; color: white;">사진 첨부하기</span>
                     <input id="receipt_image" name="pdReviewImg" type="file" style="opacity: 0; " >
                  </div>
										<div class="mt-1"
											style="font-size: 14px; text-align: right; color: #494949; letter-spacing: -0.6px;">
											(<span id="counter">0</span>자, 최소 20자 이상)
										</div>
							<script>
                                function textCounter(field,field2,maxlimit)
                                {
                                    $('#' + field2).text(field.value.length);
                                }
                                
                                // x누르면 파일 사라지는 함수
                                
                                
                                $(function(){
                                   $("#remove").on("click",function(){
                                      $("#preView").removeAttr("src");
                                      $("#preView").removeAttr("width");
                                      $("#preView").removeAttr("height");
                                      $(this).hide();
                                      });
                                   })

                                
                                // 미리보기 영역에 이미지 하나만 나오게 하는 함수
                                  function readUploadImage1(inputObject){
                                       if(inputObject.files && inputObject.files[0]){
                                          if(!(/image/i).test(inputObject.files[0].type)){
                                             alert("이미지 파일을 선택해 주세요");
                                             return false;
                                          }
                                          
                                          var reader = new FileReader();
                                          
                                          reader.onload = function(e){
                                             $("#preView").attr("src", e.target.result);
                                             $("#preView").attr("width", "600px").attr("height","300px");
                                          }
                                          reader.readAsDataURL(inputObject.files[0]);
                                       }        
                                  }
                                            
                                  $("#receipt_image").change(function(){
                                     $("#remove").show();
                                     readUploadImage1(this);
                                  }) 
                                
                            </script>
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
								<c:if test="${!empty review }">
							        <button class="btn btn-mdd w-100 p-4" type="button" onclick="updateReview();" style="font-size: 21px; background-color: #0071ce; color: whitesmoke;">
										작성한 리뷰 수정하기</button>
								</c:if>
								<c:if test="${empty review }">
									<button class="btn btn-mdd w-100 p-4" type="submit"
										style="font-size: 21px; background-color: #0071ce; color: whitesmoke;">
										작성한 리뷰 제출하기</button>
								</c:if>
								</div>
							</div>
						</div>
					</div>
				</form>

			</div>

		</div>
	</div>
	<script>
	
		function updateReview(){
			if($("#comment").val()==""){
				alert("내용을 입력하세요")
		    	$("#comment").focus();
		    }else{
			$("#review").attr("action","updateReview.do").submit();
		    }
		
		}
	</script>

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
