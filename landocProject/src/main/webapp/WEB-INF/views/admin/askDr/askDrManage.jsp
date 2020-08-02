<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>askDrManage</title>
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
        #searchArea button{height: 35px; width: 120px; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
        #searchArea button:hover{background-color:  #007ee5; color: white;}

        /* td  */
        td>button {
            width: 300px;
        }

        /* pagination */
        .pagination {
            display: block;
            text-align: center;
        }

        .pagination a {
            color: black;
            float: none;
            padding: 8px 16px;
            text-decoration: none;
        }
     	
   </style>

</head>
<body>

    <jsp:include page="../../common/adminSide.jsp"/>

    <!--여기서 부터 왼쪽 영역 contentArea-->
    <div id="contentArea">
        <h3>의사에게 물어봐 관리</h3>

        <!--검색 창 부분-->
        <div id="searchArea">
            <select id="searchCondition" name="searchCondition">
                <option>게시글 번호</option>
                <option>제목</option>
                <option>내용</option>
                <option>작성자</option>
            </select>
            <input type="text">
            <button type="button">검색하기</button>
        </div>

        <!--테이블 부분-->
        <table id="contentTb">
            <tr>
                <th class="firstLine">번호</th>
                <th class="firstLine">제목</th>
                <th class="firstLine">작성자</th>
                <th class="firstLine">진료과목</th>
                <th class="firstLine">채택상태</th>
                <th class="firstLine"></th>
            </tr>
            <c:choose>
            <c:when test="${empty boardList }">
            <tr>
            	<td colspan="6">해당 게시글에 글이 존재하지 않습니다.</td>
            </tr>
            </c:when>
            <c:otherwise>
            	<c:forEach var="boardVO" items="${boardList }">
            <tr>
           		<td class="boardNo">
           			<input type="hidden" value="${boardVO.adNo }" />
           			<c:out value="${boardVO.rNo}" />
           		</td>
           		<td><c:out value="${boardVO.title}" /></td>
           		<td><c:out value="${boardVO.nickname}" /></td>
           		<td><c:out value="${boardVO.categoryName}" /></td>
           		<td><c:out value="${boardVO.chooseStatus}" /></td>
           		<td>
           			<button class="goDetail" type="button">상세보기</button>
                  	<button class="deletePost" type="button">삭제하기</button>
           		</td>
           	</tr>
            	</c:forEach>
            </c:otherwise>
            </c:choose>
        </table>
    
        <br><br>
        <div class="pagination">
        	<c:if test="${pageInfo.currentPage eq 1 }">
        		&laquo;
        	</c:if>
        	<c:if test="${pageInfo.currentPage gt 1 }">
        		<c:url var="urlBack" value="askDrManage.do">
        			<c:param name="pageNo" value="${pageInfo.currentPage - 1 }" />
        		</c:url>
        		<a href="${urlBack }">&laquo;</a>
        	</c:if>
        	
            <c:forEach var="p" begin="${pageInfo.startPage }" end="${pageInfo.endPage }">
				<c:if test="${p eq pageInfo.currentPage }">
					<a href="#" style="color: red; font-weight: bold;">${p }</a>
				</c:if>
				<c:if test="${p ne pageInfo.currentPage }">
					<c:url var="adminBoardPages" value="askDrManage.do">
						<c:param name="pageNo" value="${p}" />
					</c:url>
					<a href="${adminBoardPages }">${p }</a>
				</c:if>
			</c:forEach>
            
            
            
            <c:if test="${pageInfo.currentPage eq pageInfo.maxPage }">
        		&raquo;
        	</c:if>
        	<c:if test="${pageInfo.currentPage lt pageInfo.maxPage }">
        		<c:url var="urlFront" value="askDrManage.do">
        			<c:param name="pageNo" value="${pageInfo.currentPage + 1 }" />
        		</c:url>
        		<a href="${urlFront }">&raquo;</a>
        	</c:if>
        </div>
        
        <br><br><br><br><br><br><br><br><br><br><br><br>
    	<br><br><br><br><br><br>
    </div>
   
   
   <script>
   		$(function(){
   			$(".goDetail").on("click", function(){
				var adNo = $(this).parent().siblings('.boardNo').children().val();
				var pageNo = ${pageInfo.currentPage};
				location.href="adminAskDrDetailPost.do?adNo=" + adNo + "&pageNo=" + pageNo;
   			});
   			
   			$(".deletePost").on("click", function(){
   				var adNo = $(this).parent().siblings('.boardNo').children().val();
				
   				var $deleteForm = $('<form></form>');
				$deleteForm.attr("action", "deleteAdminAskDrPost.do");
				$deleteForm.attr("method", "POST");
				
				var $inputAdno = $("<input type='hidden' name='adNo' value=" + adNo + " />");
				
				$deleteForm.append($inputAdno);
				$("body").append($deleteForm);
				$deleteForm.submit();
   			});
   		});
        
        
        // 테이블 한 줄 hover효과 주는 function
        $("#contentTb td").mouseenter(function () {
            $(this).parent().css({ "background": "lightgrey" });
        }).mouseout(function () {
            $(this).parent().css({ "background": "white" });
        });
    </script>
</body>
</html>










