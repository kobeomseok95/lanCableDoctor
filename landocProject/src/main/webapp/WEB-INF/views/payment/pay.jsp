<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.kh.landocProject.payment.model.vo.MemberPay" %>
<%@ page import="com.kh.landocProject.payment.model.vo.PayProduct" %>
<%@ page import="java.text.DecimalFormat" %>
<%

	PayProduct pro = (PayProduct)request.getAttribute("selectPro");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>결제</title>
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
    .p{text-align: center; padding-top: 30px; padding-bottom: 40px;}
	.pa{border-bottom: 1px solid black; border-top: 1px solid black; height: 130px; width: 700px;}
	.pay{padding-top: 15px; width: 800px;}
	.payD{width: 110px;display: inline-block;}
	.product{margin-left: 10px; font-size:20px;}
	.p1{margin-top: 30px; background-color: #e5f2fc; width: 700px; height: 600px; border-radius: 7px; display: inline-block; position: relative;}
	.p2{padding-left: 20px; padding-top: 20px; width: 700px;}
	.p3{border: 1px solid #e5f2fc; margin-top: 25px; margin-left: 20px; width: 660px; border-radius: 7px; background-color: white;}
	.p4{border-bottom: 1px solid lightgray; margin: 10px; margin-top: 20px; height: 50px; width:500px;}
	.pInput{float: right; margin-right: 10px; width: 400px; height:35px; border: 1px solid lightgray;}
	.pInput1{width: 250px; margin-left: 143px; height:35px; border: 1px solid lightgray;}
	.search{float: right; margin-right: 10px; width: 130px; height:35px ; color: black; background-color: #e5f2fc; border: 0px; border-radius: 3px;}
	.p4Label{margin-left:20px}
	.p5{ background-color: #e5f2fc; width: 400px; height: 600px; border-radius: 7px; position: sticky; top:0; border: 1px solid white;  float:right;}
	.p6{border: 1px solid white; background-color: white; margin: 10px; height: 350px; border-radius: 7px;}
	.p7{width : 375px; height:300px; padding:10px;}
	.p8{margin-bottom:25px;margin-top:20px;}
	.p9{margin-bottom:25px;}
	.payBtn{width: 100px; height: 40px; margin-right: 50px; border-radius: 5px; border: 0px; background-color:#007ee5; color: white;}
	.noPay{width: 100px; height: 40px; border-radius: 5px; border: 0px; background-color:#007ee5; color: white;}
</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
	<!-- <link rel="stylesheet" type="text/css"
		href="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/customer_web/style.css"> -->
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<%@ include file="../static/header.jsp"%>

	<div class="container">
			<div class="p">
				<h3>주문/결제</h3>
			</div>
			
				<strong>제품정보</strong>
				<div class="pa">
					<div class="pay">
						<div class="payD">
							<img src="/projectFiles/${selectPro.pdpRename }" width="100px" height="100px" style="margin-left: 10px; border: 1px solid black;">
						</div>
						<div style="display: inline-block; text-align:center">
							<span>${selectPro.pdName }</span><span id="originPrice" class="product price">${selectPro.originPrice }</span> <span style="margin-left:10px;">x</span> <span class="product price">${productCount }</span> <span style="margin-left: 10px;" >=</span> <span  class="product price">${selectPro.originPrice * productCount}</span>
						</div>
					</div>
				</div>
				<c:choose>
					<c:when test="${!empty loginClient3 && empty loginDrClient3}">
						<form id="payment" action="paySuccessView.do">	
							<div class="p1">
								<div class="p2">
									<h4 style="color: black;">주문자 정보</h4>
								</div>
								<div class="p3">
									<div class="p4">
										<label class="p4Label">주문자명</label><input type="text" value="${loginClient3.userName }" class="pInput" readonly>
										<input type="hidden" name="cNo" value="${loginClient3.cNo }">
										<input type="hidden" name="pdNo" value="${selectPro.pdNo }">
										<input type="hidden" name="opCount" value="${productCount }">
										<input type="hidden" name="pdName" value="${selectPro.pdName }">
										<input type="hidden" name="sellPrice" value="${selectPro.sellPrice }">
									</div>
									<div class="p4">
										<label class="p4Label">연락처</label><input type="text" value="${loginClient3.phone }" class="pInput" readonly>
									</div>
									<div class="p4">
										<label class="p4Label">이메일</label><input type="text" value="${loginClient3.email }" class="pInput" readonly>
									</div>
									<div class="p4">
										<label class="p4Label">우편번호</label><input type="text" value="${loginClient3.post }" name="post" id="post" class="pInput1" readonly> 
										<input type="button" value="검색" class="search">
									</div>
									<div class="p4">
										<label class="p4Label">도로명 주소</label><input type="text" value="${address1 }" id="address1" class="pInput" readonly>
									</div>
									<div class="p4">
										<label class="p4Label">상세 주소</label><input type="text" value="${address2 }" id="address2" class="pInput" readonly>
									</div>
									<div class="p4">
										<label class="p4Label">남기실 말</label><select name="paymentComment" class="pInput" required="required" >
																			<option value="없음">남기실말</option>
																			<option value="배송전 연락 바랍니다.">배송전 연락 바랍니다.</option>
																			<option value="집앞에 놓고가세요.">집앞에 놓고가세요.</option>
																			<option value="경비실에 맡겨주세요.">경비실에 맡겨주세요.</option>
																			<option value="주의해서 가져다 주세요.">주의해서 가져다 주세요.</option>
																		</select>
									</div>
								</div>
							</div>
							<div class="p5">
								<div class="p6">
									<div class="p7">
										<div class="p8">
											<strong>주문 금액</strong>
				                            <span style="float:right;" class="price" id="allPrice"></span>
				                            <input type="hidden" name="allPrice" value=${selectPro.originPrice * productCount}>
			                            </div>
		                            	<div class="p9">
											<strong>할인 금액</strong>
				                            <span style="float:right;" class="price" id="discountPrice">${(selectPro.originPrice - selectPro.sellPrice) * productCount}원</span><br>
				                            <input type="hidden" name="discountPrice" value=${(selectPro.originPrice - selectPro.sellPrice) * productCount}>
			                            </div>
		                            	<div class="p9">
											<strong>사용 포인트</strong>
				                            <span style="float:right;"><input type="text" class="price" id="minusPoint" name="usePoint" style="width:100px;" value=0></span><br>
			                            </div>
				                          <div style="font-size:15px; float:right;"><span >보유 포인트 : </span><span id="point">${loginClient3.point }</span></div><br>
			                            <hr>
			                            <div class="p9">
										<strong>총 할인된 금액</strong>
			                           <span id="salesPrice" class="price" style="float:right">${(selectPro.originPrice - selectPro.sellPrice) * productCount}원</span><br>
		                            </div>
			                            <div class="p9">
											<strong>총 결제 금액</strong>
				                            <span style="float:right;" id="payPrice" class="price">원</span><br>
				                            <input type="hidden" name="amountPrice" value=0>
			                            </div>
									</div>
								</div>
								<div style="margin: 20px; margin-top: 30px;">
									<h5>결제 수단</h5>
									<hr>
								</div>
								<div style="margin-left: 20px; margin-right: 20px;">
									<label style="margin-right: 100px;"><input type="radio" name="pay" style="margin-right: 10px;" disabled id="cradit">신용카드</label>
									<label><input type="radio" name="pay" style="margin-right: 10px;" disabled>가상계좌</label>
									<label style="margin-right: 52px;"><input name="pay" type="radio" style="margin-right: 10px;" disabled>실시간계좌이체</label>
									<label><input type="radio" name="pay" style="margin-right: 10px;" checked readonly>카카오페이</label>
								</div> 
								
								<div style="margin: 35px; text-align: center;">
								<button type="button" id="pay" class="payBtn">결제</button>
								<button type="button" class="noPay" onclick="noPay();">취소</button>
								</div>
							</div>
						</form>
					</c:when>
					
					
					<c:when test="${empty loginClient3 && !empty loginDrClient3}">
						<div style="width:700px;">
						<form id="payment" action="paySuccessView.do">	
						<div class="p1">
							<div class="p2">
								<h4 style="color: black;">주문자 정보</h4>
							</div>
							<div class="p3">
								<div class="p4">
									<label style="margin-left:20px">주문자명</label><input id ="userName" type="text" value="${loginDrClient3.userName }" class="pInput" readonly>
									<input type="hidden" name="drNo" value="${loginDrClient3.drNo }">
										<input type="hidden" name="pdNo" value="${selectPro.pdNo }">
										<input type="hidden" name="opCount" value="${productCount }">
										<input type="hidden" name="pdName" value="${selectPro.pdName }">
										<input type="hidden" name="sellPrice" value="${selectPro.sellPrice }">
								</div>
								<div class="p4">
									<label class="p4Label">연락처</label><input id ="phone" type="text" value="${loginDrClient3.phone }" class="pInput" readonly>
								</div>
								<div class="p4">
									<label class="p4Label">이메일</label><input id ="email" type="text" value="${loginDrClient3.email }" class="pInput" readonly>
								</div>
								<div class="p4">
									<label class="p4Label">우편번호</label><input type="text" value="${loginDrClient3.post }" name="post" value="" id="post" class="pInput1" readonly> 
									<input type="button" class="search" value="검색">
								</div>
								<div class="p4">
									<label class="p4Label">도로명 주소</label><input  type="text" value="${address4 }" class="pInput" readonly>
								</div>
								<div class="p4">
									<label class="p4Label">상세 주소</label><input type="text" value="${address5 }" class="pInput" readonly>
								</div>
								<div class="p4">
									<label class="p4Label">남기실 말</label><select name="paymentComment" class="pInput">
																		<option value="없음">남기실말</option>
																		<option value="배송전연락바랍니다.">배송전 연락 바랍니다.</option>
																		<option value="집앞에놓고가세요.">집앞에 놓고가세요.</option>
																		<option value="경비실에맡겨주세요.">경비실에 맡겨주세요.</option>
																		<option value="주의해서가져다주세요.">주의해서 가져다 주세요.</option>
																	</select>
								</div>
							</div>
						</div>
						<div class="p5" >
							<div class="p6">
								<div class="p7">
									<div class="p8">
										<strong>주문 금액</strong>
			                            <span style="float:right;" class="price" id="allPrice"></span>
			                                  <input type="hidden" name="allPrice" value=${selectPro.originPrice * productCount}>
		                            </div>
	                            	<div class="p9">
										<strong>할인 금액</strong>
			                            <span style="float:right;" class="price" id="discountPrice">${(selectPro.originPrice - selectPro.sellPrice) * productCount}원</span><br>
			                            <input type="hidden" name="discountPrice" value=${(selectPro.originPrice - selectPro.sellPrice) * productCount}>
		                            </div>
	                            	<div class="p9">
										<strong>사용 포인트</strong>
			                            <span style="float:right;"><input type="text" class="price" id="minusPoint" name="usePoint" style="width:100px; text-align:right" value=0></span><br>
		                            </div>
		                            <div style="font-size:15px; float:right;"><span >보유 포인트 : </span><span id="point">${loginDrClient3.point }</span></div><br>
		                            
			                            
		                            <hr>
		                            <div class="p9">
										<strong>총 할인된 금액</strong>
			                           <span id="salesPrice" class="price" style="float:right">${(selectPro.originPrice - selectPro.sellPrice) * productCount}원</span><br>
		                            </div>
		                            <div class="p9">
										<strong>총 결제 금액</strong>
			                            <span style="float:right;" id="payPrice" class="price">원</span><br>
			                            <input type="hidden" name="amountPrice" value=0 id="amountPrice">
		                            </div>
								</div>
							</div>
							<div style="margin: 20px; margin-top: 30px;">
								<h5>결제 수단</h5>
								<hr>
							</div>
							<div style="margin-left: 20px; margin-right: 20px;">
								<label style="margin-right: 100px;"><input type="radio" name="pay" style="margin-right: 10px;" disabled>신용카드</label>
								<label><input type="radio" name="pay" style="margin-right: 10px;" disabled>가상계좌</label>
								<label style="margin-right: 52px;"><input name="pay" type="radio" style="margin-right: 10px;" disabled>실시간계좌이체</label>
								<label><input type="radio" name="pay" style="margin-right: 10px;" checked readonly value="카카오페이">카카오페이</label>
							</div>
							
							<div style="margin: 35px; text-align: center;">
								<button type="button" id="pay" class="payBtn">결제</button>
								<button type="button" class="noPay" onclick="noPay();">취소</button>
							</div>
						</div>
						</form>
						</div>
				</c:when>
				</c:choose>

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
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	
	<script>
		  function numberWithCommas(x) {
			    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			}
	$(function(){
		 
		 $("[data-toggle='popover']").popover();
        	//numberWithCommas
         
        	//$('.price').text(numberWithCommas($(this).text()));
			$('.price').each(function(index, item){
				$(this).text(numberWithCommas($(this).text()));
			});
			
		
		
			
       	var point = $("#point").text();
		var tp="${selectPro.originPrice * productCount}";
		var pp = "${(selectPro.originPrice - selectPro.sellPrice) * productCount}";
			$("#allPrice").text(numberWithCommas(tp) + "원");
   		var dd = tp - pp;
   		$("#payPrice").text(numberWithCommas(dd) + "원");
   		
   		
   		
   
         $("#minusPoint").blur(function(){
         	if(Number($(this).val()) > Number(point)){
         		alert("사용가능한 적립금을 초과하였습니다.");
         		$(this).focus().val('');
         	}else if(Number($(this).val()) <= Number(point)){
  		   		var amount = $(this).val();
		   		var discountPrice = $("#discountPrice").text();
         		$("#payPrice").text(numberWithCommas(tp - amount - pp) + "원");
         		$("#salesPrice").text(numberWithCommas(Number(pp) + Number(amount) + "원"));
         		/* var ee = $("#payPrice").text();
         		$("#amountPrice").val(ee);
         		alert($("#amountPrice").val(ee)); */
        		
         	}
         	if($(this).val() == ''){
   				$(this).val(0);
   			}
         
         });
	}) 
	
	</script>
	<!-- 카카오 페이 -->
	<script>
		$(function(){
			 var IMP=window.IMP;
	         IMP.init('imp96869960'); 
			$("#pay").on("click",function(){
				var payPrice = $("#payPrice").text();
				var email = $("#email").val();
				var name = $("#userName").val();
				var phone = $("#phone").val();
				var address = $("#address1").val() + $("#address2").val();
				var post = $("#post").val();
				IMP.request_pay({
					pg: 'kakaopay',
					pay_method : 'card',
					merchant_uid : 'merchant_' + new Date().getTime(),
					name : 'landoc',
					amount : payPrice,
					buyer_name : 'name',
					buyer_tel : 'phone',
					buyer_addr : address,
					buyer_postcode :post,
				},function(rsp){
					if(rsp.success){
						$("#payment").submit();
					}else{
						alert("실패");
					}
					
				});
			})
		})
		
	</script>
	
	<script>
	function noPay(){
   	 location.href="javascript:history.go(-1)";
   }
	</script>
	
</html>