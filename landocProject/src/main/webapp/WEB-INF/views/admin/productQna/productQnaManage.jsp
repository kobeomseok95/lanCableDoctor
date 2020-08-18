<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>productQnaManage</title>
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
        #contentTb button{height: 35px; width: 40%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
        #contentTb button:hover{background-color: #007ee5; color: white;}


        /*오른쪽 영역 안 검색창 부분*/
        #searchArea{text-align: center;}
        #searchArea select{width: 150px; height: 32px; font-weight: 600;}
        #searchArea{height: 60px;}
        #searchArea input{height: 26px; width: 300px;}   
        #searchArea button{height: 35px; width: 120px; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
        #searchArea button:hover{background-color:  #007ee5; color: white;}
        /* td  */
        td > button {width: 300px;}

        /* pagination */
        .pagination {display: block; text-align: center;}
        .pagination a { color: black; float: none; padding: 8px 16px; text-decoration: none;}
      
   </style>
</head>
<body>
   
   <jsp:include page="../../common/adminSide.jsp"/>
	
	<c:if test="${boardType eq 1 }">
    <!--여기서 부터 왼쪽 영역 contentArea-->
    <div id="contentArea">
        <h3>상품 QnA</h3>
		
        <!--검색 창 부분-->
        <div id="searchArea">
        	<form action="productQnaSearch.do" method="GET" >
	            <select id="condition" name="condition">
	                <option value="1">상품 번호</option>
	                <option value="2">상품명</option>
	                <option value="3">문의글 제목</option>
	                <option value="4">문의글 내용</option>
	                <option value="5">의사 회원 성함</option>
	                <option value="6">닉네임</option>
	            </select>
	            <input type="text" id="keyword" name="keyword" />
	            <input type="hidden" name="pageNo" value="1" />
	            <input type="hidden" name="boardType" value="2" />
	            <button type="button" id="submitBtn">검색하기</button>
            </form>
        </div>

        <input id="showNotAnswer" type="checkbox" 
        <c:if test='${!empty showNoAnswer && showNoAnswer eq "y"}'>checked</c:if> />&nbsp;답변대기만 보기

        <!--테이블 부분-->
        <table id="contentTb">
            <tr>
                <th class="firstLine">번호</th>
                <th class="firstLine">제목</th>
                <th class="firstLine">상품번호</th>
                <th class="firstLine">상품명</th>
                <th class="firstLine">작성자</th>
                <th class="firstLine">답변상태</th>
                <th class="firstLine">상세보기 / 삭제</th>
            </tr>
            <c:if test="${empty qnas }">
            <tr>
            	<td colspan='7' style='text-align: center;'>'상품들의 QNA가 존재하지 않습니다.'</td>
            </tr>
            </c:if>
            <c:if test="${!empty qnas }">
            	<c:forEach items="${qnas }" var="qna">
            <tr>
                <td>
					<input type="hidden" value="${qna.pdqNo }" />
					${qna.rno }
				</td>
                <td>${qna.title }</td>
                <td>${qna.pdNo }</td>
                <td>${qna.pdName }</td>
                <td>
				<c:if test="${empty qna.cNo && !empty qna.drNo }">
					${qna.drName }(의사)
				</c:if>
				<c:if test="${!empty qna.cNo && empty qna.drNo }">
					${qna.cNickname }
				</c:if>
				</td>
                <td>
                	<c:if test="${qna.status eq 'Y'}">
                	답변완료
                	</c:if>
                	<c:if test="${qna.status eq 'N'}">
                	답변대기
                	</c:if>
                </td>
                <td>
                	<button class="qnaDetail">질문상세보기</button>
                	<button class="qnaDelete">삭제하기</button>
                </td>
            </tr>            
            	</c:forEach>
            </c:if>
        </table>

        <br><br>
        <div class="pagination">
        <c:if test="${!empty page }">
	        <c:if test="${page.currentPage ne 1 }">
	        	<c:url var="pageBack" value="productQnaManage.do">
	        		<c:param name="pageNo" value="${page.currentPage - 1 }" />
	        		<c:param name="boardType" value="1" />
	        		<c:param name="showNoAnswer" value="${showNoAnswer }" />
	        	</c:url>
	            <a href="${pageBack }">&laquo;</a>
	        </c:if>
	        
	        <c:forEach var="p" begin="${page.startPage }" end="${page.endPage }">
	       		<c:if test="${page.currentPage eq p}">
	       		<a href="#" style="color: red;">${p }</a>
	       		</c:if>
	       		<c:if test="${page.currentPage ne p}">
	       			<c:url var="goPage" value="productQnaManage.do">
	        			<c:param name="pageNo" value="${p }" />
	        			<c:param name="boardType" value="1" />
	        			<c:param name="showNoAnswer" value="${showNoAnswer }" />
	        		</c:url>
	       		<a href="${goPage }">${p }</a>
	       		</c:if> 
	        </c:forEach>
	        
	        <c:if test="${page.currentPage ne page.maxPage }">
	            <c:url var="pageFront" value="productQnaManage.do">
	        		<c:param name="pageNo" value="${page.currentPage + 1 }" />
	        		<c:param name="boardType" value="1" />
	        		<c:param name="showNoAnswer" value="${showNoAnswer }" />
	        	</c:url>
	            <a href="${pageFront }">&raquo;</a>        
	        </c:if>
        </c:if>
        <c:if test="${page.endPage eq 0}"></c:if>
        </div>

        <br><br><br><br><br><br>
    </div>
	</c:if>
	
	<c:if test="${boardType eq 2 }">
	<div id="contentArea">
        <h3>상품 QnA</h3>
		
        <!--검색 창 부분-->
        <div id="searchArea">
        	<form action="productQnaSearch.do" method="GET" >
	            <select id="condition" name="condition">
	                <option value="1"
	                <c:if test="${param['condition'] eq 1 }">selected</c:if>>상품 번호</option>
	                <option value="2"
	                <c:if test="${param['condition'] eq 2 }">selected</c:if>>상품명</option>
	                <option value="3"
	                <c:if test="${param['condition'] eq 3 }">selected</c:if>>문의글 제목</option>
	                <option value="4"
	                <c:if test="${param['condition'] eq 4 }">selected</c:if>>문의글 내용</option>
	                <option value="5"
	                <c:if test="${param['condition'] eq 5 }">selected</c:if>>의사 회원 성함</option>
	                <option value="6"
	                <c:if test="${param['condition'] eq 6 }">selected</c:if>>닉네임</option>
	            </select>
	            <input type="text" id="keyword" name="keyword" value="${param['keyword'] }" />
	            <input type="hidden" name="pageNo" value="1" />
	            <input type="hidden" name="boardType" value="2" />
	            <button type="button" id="submitBtn">검색하기</button>
	            <button type="button" onclick='location.href="productQnaManage.do?boardType=1&pageNo=1"'>검색 초기화</button>
            </form>
        </div>
		
        <input id="showNotAnswer" type="checkbox"
        <c:if test="${!empty param['showNoAnswer'] && param['showNoAnswer'] eq 'y' }">checked</c:if> />&nbsp;답변대기만 보기

        <!--테이블 부분-->
        <table id="contentTb">
            <tr>
                <th class="firstLine">번호</th>
                <th class="firstLine">제목</th>
                <th class="firstLine">상품번호</th>
                <th class="firstLine">상품명</th>
                <th class="firstLine">작성자</th>
                <th class="firstLine">답변상태</th>
                <th class="firstLine">상세보기 / 삭제</th>
            </tr>
            <c:if test="${empty qnas }">
            <tr>
            	<td colspan='7' style='text-align: center;'>'상품들의 QNA가 존재하지 않습니다.'</td>
            </tr>
            </c:if>
            <c:if test="${!empty qnas }">
            	<c:forEach items="${qnas }" var="qna">
            <tr>
                <td>
					<input type="hidden" value="${qna.pdqNo }" />
					${qna.rno }
				</td>
                <td>${qna.title }</td>
                <td>${qna.pdNo }</td>
                <td>${qna.pdName }</td>
                <td>
				<c:if test="${empty qna.cNo && !empty qna.drNo }">
					${qna.drName }(의사)
				</c:if>
				<c:if test="${!empty qna.cNo && empty qna.drNo }">
					${qna.cNickname }
				</c:if>
				</td>
                <td>
                	<c:if test="${qna.status eq 'Y'}">
                	답변완료
                	</c:if>
                	<c:if test="${qna.status eq 'N'}">
                	답변대기
                	</c:if>
                </td>
                <td>
                	<button class="qnaDetail">질문상세보기</button>
                	<button class="qnaDelete">삭제하기</button>
                </td>
            </tr>            
            	</c:forEach>
            </c:if>
        </table>

        <br><br>
        <div class="pagination">
        <c:if test="${!empty page }">
	        <c:if test="${page.currentPage ne 1 }">
	        	<c:url var="pageBack" value="productQnaSearch.do">
	        		<c:param name="pageNo" value="${page.currentPage - 1 }" />
	        		<c:param name="boardType" value="1" />
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
	       			<c:url var="goPage" value="productQnaSearch.do">
	        			<c:param name="pageNo" value="${p }" />
	        			<c:param name="boardType" value="1" />
		        		<c:param name="condition" value="${param['condition'] }" />
		        		<c:param name="keyword" value="${param['keyword'] }" />
	        		</c:url>
	       		<a href="${goPage }">${p }</a>
	       		</c:if> 
	        </c:forEach>
	        
	        <c:if test="${page.currentPage ne page.maxPage }">
	            <c:url var="pageFront" value="productQnaSearch.do">
	        		<c:param name="pageNo" value="${page.currentPage + 1 }" />
	        		<c:param name="boardType" value="1" />
	        		<c:param name="condition" value="${param['condition'] }" />
	        		<c:param name="keyword" value="${param['keyword'] }" /> 
	        	</c:url>
	            <a href="${pageFront }">&raquo;</a>        
	        </c:if>
        </c:if>
        <c:if test="${page.endPage eq 0}"></c:if>
        </div>

        <br><br><br><br><br><br>
    </div>		
	</c:if>
   
    <script>
		$(function(){
        	// 테이블 한 줄 hover효과 주는 function
	        $("#contentTb td").mouseenter(function(){
	            $(this).parent().css({"background" : "lightgrey"});
	        }).mouseout(function(){
	            $(this).parent().css({"background" : "white"});
	        });
			
        	$(".qnaDetail").on("click", function(){
        		var pdqNo = $(this).parent().parent().find('td:first').children("input[type='hidden']").val();
        		location.href="productQnaDetail.do?pdqNo=" + pdqNo;
        	});
        	
        	$(".qnaDelete").on('click', function(){
        		if(confirm('해당 Q&A를 삭제하시겠습니까?')){
        			var pdqNo = $(this).parent().parent().find('td:first').children("input[type='hidden']").val();
        			
        			var $form = $('<form action="deleteQnA.do" method="POST"></form>');
        			var $input = $('<input type="hidden" name="pdqNo" />');
        			$input.attr("value", pdqNo);
        			$form.append($input);
        			$('body').append($form);
        			$form.submit();
        			
        			alert("삭제되었습니다.");
        		}
        		else{
        			return false;
        		}
        	});
        	
        	$("#submitBtn").on('click', function(){
        		var keyword = $("#keyword").val();
        		
        		if(keyword.length == 0){
        			alert('검색어를 입력해주세요!');
        			return false;
        		}
        		else{
        			$('form').submit();
        		}
        		
        	});
        	
         	$("#showNotAnswer").on('click', function(){
        		var boardType = ${boardType};
        		var condition = $('#condition').val();
        		var keyword = "${param['keyword']}";

	        	if( $(this).is(":checked") == true && boardType === 1 ){
	        		location.href='productQnaManage.do?boardType=' + boardType + '&pageNo=1&showNoAnswer=y';
	        	}
	        	else if( $(this).is(":checked") == false && boardType === 1 ){
	        		location.href='productQnaManage.do?boardType=' + boardType + '&pageNo=1&showNoAnswer=n';
	        	}
	        	else if( $(this).is(":checked") == true && boardType === 2 ){
	        		location.href='productQnaSearch.do?boardType=' + boardType + '&pageNo=1&showNoAnswer=y&condition=' + condition + '&keyword=' + keyword;
	        	}
	        	else if( $(this).is(":checked") == false && boardType === 2 ){
	        		location.href='productQnaSearch.do?boardType=' + boardType + '&pageNo=1&showNoAnswer=n&condition=' + condition + '&keyword=' + keyword;
	        	}
        		
        	});
		});	//end of jquery
      	
    </script>


</body>
</html>