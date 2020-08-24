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
<html lang="zxx">
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
   
   <!--star rating-->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



   <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   <![endif]-->


    <script src= 'http://code.jquery.com/jquery-latest.js'></script>
    
    <style>
       /*  body{width: 1400px;} */
        #header h2{text-align: center; font-size:30px;}
        #leftArea{width: 900px;display: inline-block; position:relative; left:200px; margin-top:30px;}
        #pInfo{margin-bottom: 10px; padding-top:20px; color:#676767; font-weight: 600; padding-left: 10px;}
       
        /*상품 테이블 영역*/
        #productTb{border-top: 1px solid black; border-bottom: 1px solid black; width: 100%;}
        #productTb tr{line-height: 100px;}
        #productTb td{padding-right: 40px; font-size: 16px; color: #676767; font-weight: 600;}
       /*  #productImg{width:30%; height: 30%;} */
        
        .pThumbnail{padding-left: 30px;}
        .pName{width:383px;}
        .pAmount{}
        .totalPrice{font-size: 23px !important; color:#007ee5 !important; width:}

        /*주문자 정보 영역*/
        #orderInfo{background-color: #e5f2fc;width: 900px; height: 630px; margin-top: 50px;}
        #orderInfo2{ margin: 30px 30px;}
        #orderInfoHeader{margin-bottom: 10px; padding-top:20px; color:#676767; font-weight: 600; padding-left: 10px;}
        #orderInfoTb{width: 100%;background-color:white;}
        #orderInfoTb tr{line-height: 70px; border-bottom: 1px solid #e3e3e3;}
        .firstTd{width:150px; text-align: center; color:#676767; font-weight: 600; font-size: 16px;}
        .secondTd{width:650px;}
        #detailAddress{line-height: 150px;}
        .secondTdBox{border:none; text-align:center; width:560px;}
        #payComment{width : 560px; height:80px; border:none; text-align-last:center;}
     
        /*오른쪽 영역*/
        #rightArea{width:400px;height: 690px; float: right; background-color:#e5f2fc; position: sticky; top: 0; z-index: 999; right:200px;}
        #payInfo{width:380px;background-color: white; margin-left: 11px; margin-top: 11px;}
        #payInfoTb{line-height: 60px; font-size: 16px;}
        .payFirstTd{padding-right: 110px; font-weight: 600; padding-left: 30px;}
        .paySecondTd{text-align: right; font-weight: 600; font-size: 23px;}
        #minusPoint{width:100px; height:40px; text-align:right;}

        #payMethod{width:380px;background-color: white; margin-left: 11px; margin-top: 11px;}
        #payMethod p{font-size: 16px; font-weight: 600; color: black; margin-left: 30px; padding-top: 15px;}
        input[type=radio] {border: 0px; height: 15px; width: 15px; }

        .div1{display: inline-block; padding-left: 40px; color:#999; font-weight: 600;}
        #div2{display: inline-block; margin-left: 90px; color:#999; font-weight: 600;}
        #div3{display: inline-block; margin-left: 43px; padding-bottom: 15px; color:#999; font-weight: 600;}

        #btnArea{ margin-left: 25px; margin-top: 30px;}
        #btnArea button{border: none; font-size: 16px; width: 350px; height: 50px; font-weight: 600;}
        #payBtn{background-color: #007ee5; color:white;}
        #cancelBtn{margin-top: 10px; background-color: white; color: #999;}
	
    </style>

</head>
 <script type="text/javascript">
 window.history.forward();
 function noBack(){window.history.forward();}
</script>

<body>
<body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<%@ include file="../static/header.jsp"%>
	
	  <div style="height:80px;"></div>

    <div class="container-fluid">
    <div id="header">
        <h2>주문/결제</h2>
    </div>
	
	<!-- 일반 회원 -->
	<c:choose>
		<c:when test="${!empty loginClient3 && empty loginDrClient3}">
		   <!--영역 시작-->
		   <form id="payment" action="paySuccessView.do">
		   <!--왼쪽영역-->
		       <div id="leftArea">
		           
		           <p id="pInfo">제품정보</p>
		           <table id="productTb">
		               <tr>
		                   <td class="pThumbnail">
		                       <img src="/projectFiles/${selectPro.pdpRename }" id="productImg">
		                   </td>
		                   <td class="pName">
		                      ${selectPro.pdName }
		                   </td>
		                   <td class="pPrice price">
		                        ${selectPro.originPrice }
		                   </td>
		                   <td class="pAmount">
		                       X${productCount }
		                   </td>
		                   <td class="totalPrice price">
		                      = ${selectPro.originPrice * productCount}
		                   </td>
		               </tr>
		       </table>
		       
		        <input type="hidden" name="cNo" value="${loginClient3.cNo }">
				<input type="hidden" name="pdNo" value="${selectPro.pdNo }">
				<input type="hidden" name="opCount" value="${productCount }">
				<input type="hidden" name="pdName" value="${selectPro.pdName }">
				<input type="hidden" name="sellPrice" value="${selectPro.sellPrice }">
		
		           <div id="orderInfo">
		               <div id="orderInfo2">
		                   <p id="orderInfoHeader">주문자 정보</p>
		                   <table id="orderInfoTb">
		                       <tr>
		                           <td class="firstTd">주문자명</td>
		                           <td class="secondTd"><input type="text" value="${loginClient3.userName }" class="secondTdBox" id="userName" readonly></td>
		                       </tr>
		                       <tr>
		                           <td class="firstTd">연락처</td>
		                           <td class="secondTd"><input type="text" value="${loginClient3.phone }" class="secondTdBox" id="phone" readonly></td>
		                       </tr>
		                       <tr>
		                           <td class="firstTd">이메일</td>
		                           <td class="secondTd"><input type="text" value="${loginClient3.email }" class="secondTdBox" id="email" readonly></td>
		                       </tr>
		                       <tr>
		                           <td class="firstTd">우편번호</td>
		                           <td class="secondTd"><input type="text" value="${loginClient3.post }" class="secondTdBox" id="post" readonly></td>
		                       </tr>
		                       <tr>
		                           <td class="firstTd" rowspan="2" id="detailAddress">
		                               상세주소
		                           </td>
		                           <td><input type="text" value="${address1 }" class="secondTdBox" id="address1" readonly></td>
		                       </tr>
		                       <tr>
		                           <td><input type="text" value="${address2 }" class="secondTdBox" id="address2" readonly></td>
		                           <td></td>
		                       </tr>
		                        <tr>
		                           <td class="firstTd">남기실 말</td>
		                           <td class="secondTd"><select name="paymentComment" class="pInput" required="required" id="payComment">
																				<option value="없음">남기실말</option>
																				<option value="배송전 연락 바랍니다.">배송전 연락 바랍니다.</option>
																				<option value="집앞에 놓고가세요.">집앞에 놓고가세요.</option>
																				<option value="경비실에 맡겨주세요.">경비실에 맡겨주세요.</option>
																				<option value="주의해서 가져다 주세요.">주의해서 가져다 주세요.</option>
																			</select></td>
		                       </tr>
		                   </table>
		               </div>
		           </div>
		       </div>
		
		       <div id="rightArea">
		           <div id="payInfo">
		               <table id="payInfoTb">
		                   <tr>
		                       <td class="payFirstTd">총 주문 금액</td>
		                       <td class="paySecondTd price" id="allPrice" style="color: black"></td>
		                   </tr>
		                   <tr>
		                       <td class="payFirstTd" style="color: #999;">할인금액</td>
		                       <td class="paySecondTd price" style="color: #999;">${(selectPro.originPrice - selectPro.sellPrice) * productCount}원</td>
		                   </tr>
		                   <tr>
		                       <td class="payFirstTd" style="color: #999;">사용 포인트<br>
		                       <span>보유포인트</span></td>
		                       <td class="paySecondTd" style="color: #999;"><input class="price" type="text" id="minusPoint" name="usePoint" value=0><br>
		                       <span id="point">${loginClient3.point }</span></td>
		                   </tr>
		                   <tr>
		                       <td class="payFirstTd" style="color: #999;">총 할인된 금액</td>
		                       <td class="paySecondTd price" style="color: #999;" id="salesPrice">${(selectPro.originPrice - selectPro.sellPrice) * productCount}원</td>
		                   </tr>
		                   <tr>
		                       <td class="payFirstTd" style="color: #007ee5;">총 결제 금액</td>
		                       <td class="paySecondTd price" style="color: #007ee5;" id="payPrice">원</td>
		                   </tr>
		               </table>
		           </div>
		           
					<input type="hidden" name="allPrice" value=${selectPro.originPrice * productCount}>
					<input type="hidden" name="discountPrice" value=${(selectPro.originPrice - selectPro.sellPrice) * productCount}>
					<input type="hidden" name="amountPrice" value=0>
					
		           <div id="payMethod">
		               <p>결제수단선택</p>
		               <div class="div1"><label><input type="radio" name="payBy" disabled>&nbsp;&nbsp;신용카드</label></div>
		               <div id="div2"><label><input type="radio" name="payBy" disabled>&nbsp;&nbsp;가상계좌</label></div><br>
		               <div class="div1"><label><input type="radio" name="payBy" disabled>&nbsp;&nbsp;실시간계좌이체</label></div>
		               <div id="div3"><label><input type="radio" name="payBy" checked readonly>&nbsp;&nbsp;카카오페이</label></div>
		           </div>
		
		           <div id="btnArea">
		               <button type="button" id="payBtn">결제하기</button>
		               <button type="button" id="cancelBtn" onclick="noPay();">취소</button>
		
		           </div>
		       </div>
		   </form>
	    </c:when>
    
	    <c:when test="${empty loginClient3 && !empty loginDrClient3}">
	    <!-- 의사 회원 -->
	    <form id="payment" action="paySuccessView.do">
	    <!--왼쪽영역-->
	        <div id="leftArea">
	            
	            <p id="pInfo">제품정보</p>
	            <table id="productTb">
	                <tr>
	                    <td class="pThumbnail">
	                        <img src="/projectFiles/${selectPro.pdpRename }" id="productImg">
	                    </td>
	                    <td class="pName">
	                       ${selectPro.pdName }
	                    </td>
	                    <td class="pPrice price">
	                         ${selectPro.originPrice }
	                    </td>
	                    <td class="pAmount">
	                        X${productCount }
	                    </td>
	                    <td class="totalPrice price">
	                       = ${selectPro.originPrice * productCount}
	                    </td>
	                </tr>
	        </table>
	        
			   <input type="hidden" name="cNo" value="${loginClient3.cNo }">
				<input type="hidden" name="pdNo" value="${selectPro.pdNo }">
				<input type="hidden" name="opCount" value="${productCount }">
				<input type="hidden" name="pdName" value="${selectPro.pdName }">
				<input type="hidden" name="sellPrice" value="${selectPro.sellPrice }">
				
	            <div id="orderInfo">
	                <div id="orderInfo2">
	                    <p id="orderInfoHeader">주문자 정보</p>
	                    <table id="orderInfoTb">
	                        <tr>
	                            <td class="firstTd">주문자명</td>
	                            <td class="secondTd"><input type="text" value="${loginDrClient3.userName }" class="secondTdBox" readonly></td>
	                        </tr>
	                        <tr>
	                            <td class="firstTd">연락처</td>
	                            <td class="secondTd"><input type="text" value="${loginDrClient3.phone }" class="secondTdBox" readonly></td>
	                        </tr>
	                        <tr>
	                            <td class="firstTd">이메일</td>
	                            <td class="secondTd"><input type="text" value="${loginDrClient3.email }" class="secondTdBox" readonly></td>
	                        </tr>
	                        <tr>
	                            <td class="firstTd">우편번호</td>
	                            <td class="secondTd"><input type="text" value="${loginDrClient3.post }" class="secondTdBox" readonly></td>
	                        </tr>
	                        <tr>
	                            <td class="firstTd" rowspan="2" id="detailAddress">
	                                상세주소
	                            </td>
	                            <td><input type="text" value="${address4 }" class="secondTdBox" readonly></td>
	                        </tr>
	                        <tr>
	                            <td><input type="text" value="${address5 }" class="secondTdBox" readonly></td>
	                            <td></td>
	                        </tr>
	                         <tr>
	                            <td class="firstTd">남기실 말</td>
	                            <td class="secondTd"><select name="paymentComment" class="pInput" required="required" id="payComment">
																				<option value="없음">남기실말</option>
																				<option value="배송전 연락 바랍니다.">배송전 연락 바랍니다.</option>
																				<option value="집앞에 놓고가세요.">집앞에 놓고가세요.</option>
																				<option value="경비실에 맡겨주세요.">경비실에 맡겨주세요.</option>
																				<option value="주의해서 가져다 주세요.">주의해서 가져다 주세요.</option>
																			</select></td>
	                        </tr>
	                    </table>
	                </div>
	            </div>
	        </div>
	
	        <div id="rightArea">
	            <div id="payInfo">
	                <table id="payInfoTb">
	                    <tr>
	                        <td class="payFirstTd">총 주문 금액</td>
	                        <td class="paySecondTd price" id="allPrice" style="color: black"></td>
	                    </tr>
	                    <tr>
	                        <td class="payFirstTd" style="color: #999;">할인금액</td>
	                        <td class="paySecondTd price" style="color: #999;">${(selectPro.originPrice - selectPro.sellPrice) * productCount}원</td>
	                    </tr>
	                    <tr>
	                        <td class="payFirstTd" style="color: #999;">사용 포인트<br>
	                        <span>보유포인트</span></td>
	                        <td class="paySecondTd" style="color: #999;"><input class="price" type="text" id="minusPoint" name="usePoint" value=0><br>
	                        <span id="point">${loginDrClient3.point }</span></td>
	                    </tr>
	                    <tr>
	                        <td class="payFirstTd" style="color: #999;">총 할인된 금액</td>
	                        <td class="paySecondTd price" style="color: #999;" id="salesPrice">${(selectPro.originPrice - selectPro.sellPrice) * productCount}원</td>
	                    </tr>
	                    <tr>
	                        <td class="payFirstTd" style="color: #007ee5;">총 결제 금액</td>
	                        <td class="paySecondTd price" style="color: #007ee5;" id="payPrice">원</td>
	                    </tr>
	                </table>
	            </div>
	
				<input type="hidden" name="allPrice" value=${selectPro.originPrice * productCount}>
				<input type="hidden" name="discountPrice" value=${(selectPro.originPrice - selectPro.sellPrice) * productCount}>
				<input type="hidden" name="amountPrice" value=0>
	
	            <div id="payMethod">
	                <p>결제수단선택</p>
	                <div class="div1"><label><input type="radio" name="payBy" disabled>&nbsp;&nbsp;신용카드</label></div>
	                <div id="div2"><label><input type="radio" name="payBy" disabled>&nbsp;&nbsp;가상계좌</label></div><br>
	                <div class="div1"><label><input type="radio" name="payBy" disabled>&nbsp;&nbsp;실시간계좌이체</label></div>
	                <div id="div3"><label><input type="radio" name="payBy" checked readonly>&nbsp;&nbsp;카카오페이</label></div>
	            </div>
	
	            <div id="btnArea">
	                <button type="button" id="payBtn">결제하기</button>
	                <button type="button" id="cancelBtn" onclick="noPay();">취소</button>
	
	            </div>
	        </div>
	    </form>
	    </c:when>
	</c:choose>
    
    <div style="height:100px;"></div>
    
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
			$("#payBtn").on("click",function(){
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


</body>
</html>