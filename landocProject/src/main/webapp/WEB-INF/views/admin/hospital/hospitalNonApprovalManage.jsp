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
        #contentTb button{height: 35px; width: 70%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
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
    <div id="contentArea">
        <h3>병원 등록 관리</h3>

        
        <!--테이블 부분-->
        <table id="contentTb">
            <tr>
                <th class="firstLine" style="width: 7%;">병원 등록 번호</th>
                <th class="firstLine" style="width: 15%;">병원 이름</th>
                <th class="firstLine" style="width: 10%;">병원 전화번호</th>
                <th class="firstLine" style="width: 7%;">병원 우편번호</th>
                <th class="firstLine" style="width: 30%;">병원 주소</th>
                <th class="firstLine" style="width: 21%;">병원 진료과목</th>
                <th class="firstLine" style="width: 20%;">상세보기</th>
            </tr>
            	<c:if test="${empty hospitals }">
            <tr>
            	<td colspan='7' style='text-align: center;'>
            		상품이 없습니다.
            	</td>
            </tr>
            	</c:if>
            	<c:if test="${!empty hospitals }">
            		<c:forEach var="hp" items="${hospitals }">
            <tr>
           		<td class="hpNo">${hp.hpNo }</td>
           		<td>${hp.hpName }</td>
           		<td>${hp.hpPhone }</td>
           		<td>${hp.postCode }</td>
           		<td>${hp.address }</td>
           		<td> 
					<c:forEach var="cates" items="${hp.categories }" varStatus="status" >
						<c:if test="${!status.last }">
							<c:out value="${cates.categoryName }, " />
						</c:if>
						<c:if test="${status.last }">
							<c:out value="${cates.categoryName }" />
						</c:if>
					</c:forEach>
				</td>
           		<td>
           			<button class="detailHospital">상세보기</button>
           		</td>
            </tr>
            		</c:forEach>
            	</c:if>
        </table>
<!-- paging -->
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
    
<script>
	$(function(){
		// 테이블 한 줄 hover효과 주는 function
	    $("#contentTb td").mouseenter(function(){
	        $(this).parent().css({"background" : "lightgrey"});
	    }).mouseout(function(){
	        $(this).parent().css({"background" : "white"});
	    });
    	
		$(".detailHospital").on('click', function(){
			var hpNo = $(this).parent().siblings('.hpNo').text();
			location.href='hospitalSubmitDetail.do?hpNo=' + hpNo;
		});
    });	//end of jquery
</script>


</body>
</html>











