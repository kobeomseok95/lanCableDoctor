<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>productManage</title>
    <script src= 'http://code.jquery.com/jquery-latest.js'></script>
    <style>
         
        /*오른쪽 영역부분*/
        #contentArea{position: absolute; left: 300px; top: 20px; width: 78%; height: 100%;}
        #contentArea h3{padding-bottom: 2%; text-align:center;}
        

        /*오른쪽 영역 table*/
        #contentTb{margin: 0 auto; margin-top: 2%; width: 100%; text-align:center; border: 2px solid #bbb; border-collapse: collapse;}
        #contentTb tr{line-height: 40px;}
        #contentTb th{border-bottom: 2px solid #bbb; border-right: 1px solid #bbb; font-size:13px;}
        #contentTb td{width: auto; border: 1px solid #bbb; font-size:14px;}
        #contentTb button{height: 35px; width: 35%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
        #contentTb button:hover{background-color: #007ee5; color: white;}


        /*오른쪽 영역 안 검색창 부분*/
        #searchArea{text-align: center;}
        #searchArea select{width: 150px; height: 32px; font-weight: 600;}
        #searchArea{height: 60px;}
        #searchArea input{height: 26px; width: 300px;}   
        #searchArea button, #goProduct{height: 35px; width: 120px; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
        #searchArea button:hover, #goProduct:hover{background-color:  #007ee5; color: white;}
     
        /* td  */
        td > button {width: 300px;}
        td > img {width: 80px; height: 80px;}

        /* pagination */
        .pagination {display: block; text-align: center;}
        .pagination a { color: black; float: none; padding: 8px 16px; text-decoration: none;}
   </style>
</head>
<body>

   <jsp:include page="../../common/adminSide.jsp"/>

    <!--여기서 부터 왼쪽 영역 contentArea-->
    <c:if test="${boardType eq 1 }">
    <div id="contentArea">
        <h3>판매 상품 관리</h3>

        <!--검색 창 부분-->
        <div id="searchArea">
        	<form id="searchForm" action="productManage.do" method="GET">
	            <select id="condition" name="condition">
	                <option value="1">상품 코드</option>
	                <option value="2">카테고리 코드</option>
	                <option value="3">상품명</option>
	            </select>
	            <input id="keyword" name="keyword" type="text" />
	            <input type="hidden" name="pageNo" value="1" />
	            <input type="hidden" name="boardType" value="2" />
	            <button id="searchProduct" type="button">검색하기</button>
            	<button type="button" onclick="goProductInsert();">상품 신규 등록</button>
            </form>
        </div>

        
        <!--테이블 부분-->
        <table id="contentTb">
            <tr>
                <th class="firstLine">상품코드</th>
                <th class="firstLine">카테고리 코드</th>
                <th class="firstLine">카테고리 이름</th>
                <th class="firstLine">상품명</th>
                <th class="firstLine">상품가격</th>
                <th class="firstLine">할인율</th>
                <th class="firstLine">판매가격</th>
                <th class="firstLine"></th>
            </tr>
            	<c:if test="${empty products }">
            <tr>
            	<td colspan='8' style='text-align: center;'>
            		상품이 없습니다.
            	</td>
            </tr>
            	</c:if>
            	<c:if test="${!empty products }">
            		<c:forEach var="product" items="${products }">
            <tr>
           		<td class="pdNo">${product.pdNo }</td>
           		<td>${product.categoryCode }</td>
           		<td>${product.categoryName }</td>
           		<td>${product.pdName }</td>
           		<td class="price">${product.originPrice }</td>
           		<td>${product.discountPer } % </td>
           		<td class="price">${product.sellPrice }</td>
           		<td>
           			<button class="updateProduct">수정하기</button>
                    <button class="deleteProduct">삭제하기</button>
           		</td>
            </tr>
            		</c:forEach>
            	</c:if>
        </table>

        <br><br>
        <div class="pagination">
        <c:if test="${!empty page }">
	        <c:if test="${page.currentPage ne 1 }">
	        	<c:url var="pageBack" value="productManage.do">
	        		<c:param name="pageNo" value="${page.currentPage - 1 }" />
	        		<c:param name="boardType" value="1" />
	        	</c:url>
	            <a href="${pageBack }">&laquo;</a>
	        </c:if>
	        
	        <c:forEach var="p" begin="${page.startPage }" end="${page.endPage }">
	       		<c:if test="${page.currentPage eq p}">
	       		<a href="#" style="color: red;">${p }</a>
	       		</c:if>
	       		<c:if test="${page.currentPage ne p}">
	       			<c:url var="goPage" value="productManage.do">
	        			<c:param name="pageNo" value="${p }" />
	        		<c:param name="boardType" value="1" />
	        		</c:url>
	       		<a href="${goPage }">${p }</a>
	       		</c:if> 
	        </c:forEach>
	        
	        <c:if test="${page.currentPage ne page.maxPage }">
	            <c:url var="pageFront" value="productManage.do">
	        		<c:param name="pageNo" value="${page.currentPage + 1 }" />
	        		<c:param name="boardType" value="1" />
	        	</c:url>
	            <a href="${pageFront }">&raquo;</a>        
	        </c:if>
        </c:if>
        <c:if test="${empty page || page.maxPage eq 1 }"></c:if>
        </div>
	<br><br><br><br><br><br><br><br><br><br>
    </div>
    </c:if>
    
    <c:if test="${boardType eq 2 }">
    <div id="contentArea">
        <h3>판매 상품 관리</h3>

        <!--검색 창 부분-->
        <div id="searchArea">
        	<form id="searchForm" action="productManage.do" method="GET">
	            <select id="condition" name="condition">
	                <option value="1" 
	                <c:if test='${param["condition"] eq 1 }'>selected</c:if>>상품 코드</option>
	                <option value="2"
	                <c:if test='${param["condition"] eq 2 }'>selected</c:if>>카테고리 코드</option>
	                <option value="3"
	                <c:if test='${param["condition"] eq 3 }'>selected</c:if>>상품명</option>
	            </select>
	            <input id="keyword" name="keyword" type="text" value="${param['keyword'] }" />
	            <input type="hidden" name="pageNo" value="1" />
	            <input type="hidden" name="boardType" value="2" />
	            <button id="searchProduct" type="button">검색하기</button>
            	<button type="button" onclick="goProductInsert();">상품 신규 등록</button>
            </form>
        </div>

        
        <!--테이블 부분-->
        <table id="contentTb">
            <tr>
                <th class="firstLine">상품코드</th>
                <th class="firstLine">카테고리 코드</th>
                <th class="firstLine">카테고리 이름</th>
                <th class="firstLine">상품명</th>
                <th class="firstLine">상품가격</th>
                <th class="firstLine">할인율</th>
                <th class="firstLine">판매가격</th>
                <th class="firstLine"></th>
            </tr>
            	<c:if test="${empty products }">
            <tr>
            	<td colspan='8' style='text-align: center;'>
            		상품이 없습니다.
            	</td>
            </tr>
            	</c:if>
            	<c:if test="${!empty products }">
            		<c:forEach var="product" items="${products }">
            <tr>
           		<td class="pdNo">${product.pdNo }</td>
           		<td>${product.categoryCode }</td>
           		<td>${product.categoryName }</td>
           		<td>${product.pdName }</td>
           		<td class="price">${product.originPrice }</td>
           		<td>${product.discountPer } % </td>
           		<td class="price">${product.sellPrice }</td>
           		<td>
           			<button class="updateProduct">수정하기</button>
                    <button class="deleteProduct">삭제하기</button>
           		</td>
            </tr>
            		</c:forEach>
            	</c:if>
        </table>
        
        
        <br><br>
		<button id="goProduct" onclick="goProduct();" >초기상태로</button>
		
        <br><br>
        <div class="pagination">
        <c:if test="${!empty page }">
	        <c:if test="${page.currentPage ne 1 }">
	        	<c:url var="pageBack" value="productManage.do">
	        		<c:param name="pageNo" value="${page.currentPage - 1 }" />
	        		<c:param name="boardType" value="2" />
	        		<c:param name="condition" value="${param['condition'] }" />
	        		<c:param name="keyword" value="${param['keyword'] }" />
	        	</c:url>
	            <a href="${pageBack }">&laquo;</a>
	        </c:if>
	        
	        <c:forEach var="p" begin="${page.startPage }" end="${page.endPage }">
	       		<c:if test="${page.currentPage eq p}">
	       		<a href="#" style="color: red;">${p }</a>
	       		</c:if>
	       		<c:if test="${page.currentPage ne p}">
	       			<c:url var="goPage" value="productManage.do">
	        			<c:param name="pageNo" value="${p }" />
	        			<c:param name="boardType" value="2" />
		        		<c:param name="condition" value="${param['condition'] }" />
		        		<c:param name="keyword" value="${param['keyword'] }" />
	        		</c:url>
	       		<a href="${goPage }">${p }</a>
	       		</c:if> 
	        </c:forEach>
	        
	        <c:if test="${page.currentPage ne page.maxPage && page.endPage ne 0 }">
	            <c:url var="pageFront" value="productManage.do">
	        		<c:param name="pageNo" value="${page.currentPage + 1 }" />
	        		<c:param name="boardType" value="2" />
	        		<c:param name="condition" value="${param['condition'] }" />
	        		<c:param name="keyword" value="${param['keyword'] }" />
	        	</c:url>
	            <a href="${pageFront }">&raquo;</a>        
	        </c:if>
        </c:if>
        <c:if test="${empty page || page.maxPage eq 1 }"></c:if>
        </div>
	<br><br><br><br><br><br><br><br><br><br>
    </div>
    </c:if>
    
    
    <script>
	    function goProduct(){
	    	location.href="productManage.do?pageNo=1&boardType=1";
	    }

        function goProductInsert(){
            location.href="goProductInsert.do";
        }

        function goUpdate(){
           location.href="productDetail.do";
        }
        

        // 테이블 한 줄 hover효과 주는 function
        $("#contentTb td").mouseenter(function(){
            $(this).parent().css({"background" : "lightgrey"});
        }).mouseout(function(){
            $(this).parent().css({"background" : "white"});
        });
        
        function numberWithCommas(x) {
		    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
        
        $(function(){
        	$('.price').each(function(index, item){
        		$(this).text(numberWithCommas($(this).text()));
        	});
        	
        	$("#searchProduct").on({
	       		click : function(){
	       			if( $("#keyword").val().length < 2 && $("#condition option:selected").val() === "3" ){
	       				alert("검색어를 2글자 이상 입력해주세요.");
	       			}
	       			else{
	       				$("#searchForm").submit();
	       			}
	       		}
        	});
        	
        	$('body').keydown(function(key){
        		if( key.keyCode === 13 && $("#keyword").val().length < 2 && $("#condition option:selected").val() === "3"){
        			alert("검색어를 2글자 이상 입력해주세요.");
        			return false;
        		}
        		else if( key.keyCode === 13 && $("#keyword").val().length >= 2 && $("#condition option:selected").val() === "3" ){
        			$("#searchForm").submit();
        		}
        	});
        	
        	$('.deleteProduct').on('click', function(){
        		if(confirm("삭제하시겠습니까?")){
	        		var pdNo = $(this).parent().siblings('.pdNo').text();
	        		
	        		var $deleteForm = $('<form action="deleteProduct.do" method="POST"></form>');
	        		var $input = $('<input name="pdNo" type="hidden" />');
	        		$input.attr("value", pdNo);
	        		$deleteForm.append($input);
	        		$('body').append($deleteForm);
	        		$deleteForm.submit();
	        		alert("삭제되었습니다.");
        		}
        		else return false;
        	});
        	
        	$('.updateProduct').on('click', function(){
        		var pdNo = $(this).parent().siblings('.pdNo').text();
        		
        		var $updateForm = $('<form action="updateProductView.do" method="GET"></form>');
        		var $input = $('<input name="pdNo" type="hidden" />');
        		$input.attr("value", pdNo);
        		$updateForm.append($input);
        		$('body').append($updateForm);
        		$updateForm.submit();
        	});
        });	//end of jquery
    </script>


</body>
</html>