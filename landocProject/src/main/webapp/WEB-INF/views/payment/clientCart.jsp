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
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style type="text/css">
	li{display: inline-block; float: left;}
	.countBtn{background-color: #0071ce;color:white;  width: 30px; height: 30px;border: 1px #d9d9d9 solid;}
	
	input[type="checkbox"]{	
	display: none;}
	
	input[type="checkbox"] + label{
	display: inline-block;  
    cursor: pointer;  
    position: relative;  
    padding-left: 40px;  
    margin-right: 15px;  
    font-size: 18px;


	}
	
	
	input[type="checkbox"] + label:before{
				content: "";  
    display: inline-block;  
  
    width: 24px;  
    height: 24px;  
  
    margin-right: 10px;  
    position: absolute;  
    left: 0;  
    bottom: 1px;  
    background-color: #ccc;  
    border-radius: 2px; 
    box-shadow: inset 0px 1px 1px 0px rgba(0, 0, 0, .3), 0px 1px 0px 0px rgba(255, 255, 255, .8);  


			}
			
	input[type=checkbox]:checked + label:before { 

    content: "\2713";  /* 체크모양 */
    text-shadow: 1px 1px 1px rgba(0, 0, 0, .2);  
    font-size: 18px; 
    font-weight:800; 
    color: #fff;  
    background:#2f87c1;
    text-align: center;  
    line-height: 18px;  

} 





</style>
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<%@ include file="../static/header.jsp"%>
    <!-- cart -->
    <div class="container">
        <h3 class="text-left m-5 p-3" style="color:#0071ce"><img src="/projectFiles/cart.png" width="60px" height="70px;">회원님의 장바구니</h3>

        <div class="row">
            <div class="allCheck">
           
            	 <input type="checkbox" id="allProduct" class="allProduct">
            	 <label for="allProduct" class="allProduct mx-3" style="color:#2771be">전체선택</label>
            
                
               
            </div>
        </div>

        <div class="row">
            <!-- 장바구니 내의 상품들 -->
           
            <div class="col-lg-8">
                <table class="table mb-0" class="table">
                    <tr style="display: none;">
                        <th style="width: 10%"></th>
                        <th style="width: 15%"></th>
                        <th style="width: 40%"></th>
                        <th style="width: 25%"></th>
                        <th style="width: 10%"></th>
                    </tr>
                    <form action="allOrder.do" method="POST">
                    <c:forEach var="c" items="${cart}" varStatus="status">
                    
                    <tr class="tr">
                    
                        <td><input type="checkbox" class="product-checkbox" name="cartCheck" id="cartCheck${status.index}" >
                        <label for="cartCheck${status.index}"></label></td>
                        <td><a href="productDetail.do?pdNo=${c.pdNo}"><img src="/projectFiles/${c.renameFile}" width=110px height=110px/></a></td>
                        <td class="tdPrice">
                            <span style="font-size: 16px; color: #676767">${c.pdName}</span>
                            
	                            <h6 id="originPrice${status.index}" class="originPrice" style="text-decoration: line-through; text-decoration-color:#676767; color: #676767">${c.originPrice}</h6>
	                            <strong id="sellPrice2${status.index}" style="font-size: 23px; color: #2771be">${c.sellPrice}</strong>
                          
                            <input type="hidden" id="renameFile${status.index}" name="renameFile" class="renameFile" value="${c.renameFile}">
                            <input type="hidden" id="originPrice2${status.index}" name="originPrice" class="originPrice" value="${c.originPrice}">
                            <input type="hidden" id="discount${status.index}" name="discount" class="discount" value="${c.discount}">
                            <input type="hidden" id="sellPrice${status.index}" name="sellPrice" class="sellPrice" value="${c.sellPrice}">
                            <input type="hidden" id="cartNo${status.index}" name="cartNo" class="cartNo" value="${c.cartNo}">
                            <input type="hidden" id="pdNo${status.index}" name="pdNo" class="pdNo" value="${c.pdNo}">
                            <input type="hidden" id="pdName${status.index}" name="pdName" class="pdName" value="${c.pdName}">
                        </td>
                        <td class="tdCount">
                        		
                        
                        	<ul style="list-style: none;">
	                        <li><button class="countBtn"  type="button" onclick="minusCount(${status.index})">-</button></li>
	                        <li><input type="text" style="width:50px;height:30px;text-align:center;color:#676767;border: 1px #d9d9d9 solid;" class="count" name="count" id="count${status.index}" value="${c.cartCount}"></li>
	                        <li><button class="countBtn" type="button" onclick="plusCount(${status.index})">+</button></li>
	                        </ul>
                        </td>
                        <td><button class="btn btn-sm " type="button" style="background-color: #d9d9d9;color:white;" onclick="deleteCart(${c.cartNo});">삭제</button></td>
                      
                    </tr>
                    </c:forEach>
                    <script>
                    	
                    	function deleteCart(cartNo){
                    		var flag = confirm("해당상품을 삭제 하시겠습니까?");
                    		if(flag){
                    			location.href='deleteCart.do?cartNo='+cartNo;
                    		}
                    	}
                    </script>
                   
                </table>
            </div>
            <!-- 결제 -->
            <div class="col-lg-4" >
                <div class="amountArea" style="position: sticky; top: 50px;">
                    <ul class="list-group">
                        <li class="list-group-item border-0">
                            <span style="color: #676767">상품 주문 금액</span>
                            <span style="float: right; color: #676767" id="allPrice">0원</span>
                        </li>
                        <li class="list-group-item border-0">
                            <span style="color: #676767">총 할인 금액</span>
                            <span style="float: right; color: #676767" id="allDiscount">0원</span>
                        </li>
                        <li class="list-group-item border-0">
                            <span style="color:#2771be">총 결제 금액</span>
                            <span style="float: right; color:#2771be" id="payPrice">0원</span>
                        </li>
                    </ul>
                </div>
                <br>
                <div class="text-center"style="position: sticky; top: 250px;">
                    <button class="btn-lg mb-2" style="width:80%; background-color: white; color:#676767;border: 1px #d9d9d9 solid; border-radius: 0.1px;" type="button" onclick="selectOrder();">선택주문</button>
                    <button class="btn-lg" style="width:80%;border: 1px #d9d9d9 solid; border-radius: 0.1px;" type="submit">전체주문</button>
                </div>
                </form>
            </div>  

 		
        </div>

        <div class="row">

        </div>
    </div>
    <!-- cart end -->
    <script>
    
    /*상품 정보 리스트 */
    var listOriginPrice = new Array();
   	var listDiscount = new Array();
	var listSellPrice = new Array();
	
	<c:forEach var="c" items="${cart}">
    	listOriginPrice.push("${c.originPrice}");
    	listDiscount.push("${c.discount}");
    	listSellPrice.push("${c.sellPrice}");
    </c:forEach>
   
    
    	// 정보 초기화
		var allDiscount=0;
		var allPrice =0;
		var sellPrice=0;
		var count=0;
    
		//콤마 만들기
    	function addComma(num) {
    	  var regexp = /\B(?=(\d{3})+(?!\d))/g;
    	  return num.toString().replace(regexp, ',');
    	}
    	
    	 //콤마 풀기
        function uncomma(str) {
            str = String(str);
            return str.replace(/[^\d]+/g, '');
        }
    	
    		
    	 // 선택 주문 정보 controller로 보내기
    	function selectOrder(){
    		var listOriginPrice2 = new Array();
    		var listDiscount2= new Array();
    		var listSellPrice2= new Array();
    		var listCount2 =new Array();
    		var listCartNo = new Array();
    		var listPdName = new Array();
    		var listPdNo = new Array();
    		var listRenameFile = new Array();
    		if($("input[name=cartCheck]:checked").length==0){
    			alert("상품을 선택하세요");
    		}else{
    		
    		for(var i=0;i<listSellPrice.length;i++){
    		if($("#cartCheck"+i).is(":checked")){
    				listOriginPrice2.push($("#originPrice2"+i).val());
    				listDiscount2.push($("#discount"+i).val());
    				listSellPrice2.push($("#sellPrice"+i).val());
    				
    				listCartNo.push($("#cartNo"+i).val());
    				listPdName.push($("#pdName"+i).val());
    				listPdNo.push($("#pdNo"+i).val());
    				listCount2.push($("#count"+i).val());
    				listRenameFile.push($("#renameFile"+i).val());
    			
    			};
    		}
    			location.href="selectOrder.do?listOriginPrice="+listOriginPrice2+"&listDiscount="+listDiscount2+"&listSellPrice="+listSellPrice2
    					+"&listCartNo="+listCartNo+"&listPdName="+listPdName+"&listPdNo="+listPdNo+"&listCount="+listCount2+"&listRenameFile="+listRenameFile;
    		}
    	}
    	 
    	 /* 수량 제거시 가격정보 */
    	function minusCount(index){
    		count=$("#count"+index).val()-1;
    		if(count<1){
    			$("#count"+index).val(1);
    		}else{
				$("#count"+index).val(count);
				if($("#cartCheck"+index).is(":checked")){
					allDiscount += listOriginPrice[index]*(listDiscount[index]/100)*(count-1);
					allDiscount -= listOriginPrice[index]*(listDiscount[index]/100)*count;
					var allDiscountComma=addComma(allDiscount);
					if(allDiscount==0){
						$("#allDiscount").html(allDiscountComma+"원");
					}else{
		    			$("#allDiscount").html("-"+allDiscountComma+"원");
					}
					allPrice +=listOriginPrice[index]*(count-1);
					allPrice -=listOriginPrice[index]*count;
					var allPriceComma=addComma(allPrice);
	    			$("#allPrice").html(allPriceComma+"원");
	    			
	    			sellPrice +=listSellPrice[index]*(count-1);
	    			sellPrice -=listSellPrice[index]*count;
	    			var sellPriceComma=addComma(sellPrice);
	    			$("#payPrice").html(sellPriceComma+"원");
				}
    		}
    	}
    	 // minusCount end
    	 
    	
    	/* 수량 추가시 가격변동 */
    	function plusCount(index){
    		count=Number($("#count"+index).val())+1;
    		if(count>5){
    			$("#count"+index).val(5);
    		}else{
    			$("#count"+index).val(count);
    			if($("#cartCheck"+index).is(":checked")){
    				allDiscount -= listOriginPrice[index]*(listDiscount[index]/100)*(count-1);
    				allDiscount += listOriginPrice[index]*(listDiscount[index]/100)*count;
    				var allDiscountComma=addComma(allDiscount);
					if(allDiscount==0){
						$("#allDiscount").html(allDiscountComma+"원");
					}else{
		    			$("#allDiscount").html("-"+allDiscountComma+"원");
					}
	    			allPrice -=listOriginPrice[index]*(count-1);
	    			allPrice +=listOriginPrice[index]*count;
	    			var allPriceComma=addComma(allPrice);
	    			$("#allPrice").html(allPriceComma+"원");
	    			
	    			sellPrice -=listSellPrice[index]*(count-1);
	    			sellPrice +=listSellPrice[index]*count;
	    			var sellPriceComma=addComma(sellPrice);
	    			$("#payPrice").html(sellPriceComma+"원");
    			}
    		}	
    	}
    	// plusCount end
    	
    	$(function(){
    		
    		/* 상품금액 정보*/
    		for(var i=0;i<listOriginPrice.length;i++){
	    		var originPrice = listOriginPrice[i];
	    		var sellPrice2 = listSellPrice[i];
	    		var originPriceComma = addComma(originPrice);
	    		var sellPriceComma2 = addComma(sellPrice2);
	    		$("#originPrice"+i).html(originPriceComma+"원");
	    		$("#sellPrice2"+i).html(sellPriceComma2+"원");
    		}
    		
    		
    		
    	
    		
    		// 체크박스 선택시 주문정보
    		listDiscount.forEach(function(disCount,index){
    			$("#cartCheck"+index).click(function(){
    				// 수량 정보
    				count =$("#count"+index).val();	
    			
    				// 전체선택박스 조건
    				if($("input[name=cartCheck]:checked").length==listOriginPrice.length){
    	    			$("#allProduct").prop("checked",true);
    	    		}else{
    	    			$("#allProduct").prop("checked",false);
    	    		}
    				
    				
    				
    				if($(this).is(":checked")){
    					
    					allPrice += listOriginPrice[index]*count;
    					sellPrice += listSellPrice[index]*count;
    					allDiscount += listOriginPrice[index]*(listDiscount[index]/100)*count;
    					
    					var allPriceComma=addComma(allPrice);
    	    			$("#allPrice").html(allPriceComma+"원");
    	    			
    	    			var sellPriceComma=addComma(sellPrice);
    	    			$("#payPrice").html(sellPriceComma+"원");
    	    			
    					var allDiscountComma=addComma(allDiscount);
    					if(allDiscount==0){
    						$("#allDiscount").html(allDiscountComma+"원");
    					}else{
    		    			$("#allDiscount").html("-"+allDiscountComma+"원");
    					}
    					
    	    		}else{
    	    			allPrice -= listOriginPrice[index]*count;
    	    			sellPrice -= listSellPrice[index]*count;
    	    			allDiscount -= listOriginPrice[index]*(listDiscount[index]/100)*count;
    	    			
    	    			var allPriceComma=addComma(allPrice);
    	    			$("#allPrice").html(allPriceComma+"원");
    	    			
    	    			var sellPriceComma=addComma(sellPrice);
    	    			$("#payPrice").html(sellPriceComma+"원");
    	    			
    	    			var allDiscountComma=addComma(allDiscount);
    	    			if(allDiscount==0){
    						$("#allDiscount").html(allDiscountComma+"원");
    					}else{
    		    			$("#allDiscount").html("-"+allDiscountComma+"원");
    					}
    	    		}    				
    			}) 			
    		}) 
    		// 체크박스 선택 end
    		
    		
    		
  			// 전체선택시 주문정보
    		 $("#allProduct").click(function(){
    			 //수량정보
    			var countList = Array();
   	    		for(var i=0; i<listOriginPrice.length;i++){
   	    			countList.push($("#count"+i).val());
   	    		}
    			 //
    			if($("#allProduct").prop("checked")){
    				$("input[name=cartCheck]").prop("checked",true);
    				allPrice=0;
    				sellPrice=0;
    				allDiscount=0;
    				
    				for(var i=0; i<listOriginPrice.length;i++){
    					
    		        	allPrice +=Number(listOriginPrice[i]*countList[i]);
    		        	allDiscount +=Number(listOriginPrice[i]*(listDiscount[i]/100)*countList[i]);
    		        	sellPrice +=Number(listSellPrice[i]*countList[i]);
    		        }
    		    
    				var allPriceComma=addComma(allPrice);
    				$("#allPrice").html(allPriceComma+"원");
    				
    				var sellPriceComma=addComma(sellPrice);
	    			$("#payPrice").html(sellPriceComma+"원");
    				
    				var allDiscountComma=addComma(allDiscount);
    				if(allDiscount==0){
						$("#allDiscount").html(allDiscountComma+"원");
					}else{
		    			$("#allDiscount").html("-"+allDiscountComma+"원");
					}
    				
    			}else{
    				$("input[name=cartCheck]").prop("checked",false);
    				allPrice=0;
    				sellPrice=0;
    				allDiscount=0;
    				$("#allPrice").html(allPrice+"원");
    				$("#payPrice").html(sellPrice+"원");
    				$("#allDiscount").html(allDiscount+"원");
    			}
    		}); 
    		// 전체선택 end
    		
    	})
    
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