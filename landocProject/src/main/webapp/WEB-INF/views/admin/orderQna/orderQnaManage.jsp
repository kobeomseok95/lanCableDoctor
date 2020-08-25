<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>orderQnaManage</title>
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
        #contentTb button{height: 35px; width: 55%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
        #contentTb button:hover{background-color: #007ee5; color: white;}


        /*오른쪽 영역 안 검색창 부분*/
        #searchArea{text-align: center;}
        #searchArea select{width: 150px; height: 32px; font-weight: 600;}
        #searchArea{height: 60px;}
        #searchArea input{height: 26px; width: 300px;}   
        #searchArea button{height: 35px; width: 120px; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
        #searchArea button:hover{background-color:  #007ee5; color: white;}

        /**/
        #selectBtn button{height: 35px; width: 120px; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
      
      
   </style>
</head>
<body>

   <jsp:include page="../../common/adminSide.jsp"/>
   
    <!--여기서 부터 왼쪽 영역 contentArea-->
    <div id="contentArea">
        <h3>주문QnA 관리</h3>

        <!--검색 창 부분-->
        <div id="searchArea">
        <form action="orderQnaSearch.do" method="POST" id="orderQnaForm">
            <select id="searchCondition" name="condition">
            <c:if test="${condition != null && condition eq 'opOrder'}">
               	<option value="opOrder" selected="selected">주문번호</option>
                <option value="opId">아이디</option>
                <option value="opTitle">제목</option>
                <option value="opContent">내용</option>
            </c:if>
            <c:if test="${condition != null && condition eq 'opId'}">
               	<option value="opOrder" >주문번호</option>
                <option value="opId" selected="selected">아이디</option>
                <option value="opTitle">제목</option>
                <option value="opContent">내용</option>
            </c:if>
            <c:if test="${condition != null && condition eq 'opTitle'}">
               	<option value="opOrder" >주문번호</option>
                <option value="opId" >아이디</option>
                <option value="opTitle" selected="selected">제목</option>
                <option value="opContent">내용</option>
            </c:if>
             <c:if test="${condition != null && condition eq 'opContent'}">
               	<option value="opOrder" >주문번호</option>
                <option value="opId" >아이디</option>
                <option value="opTitle" >제목</option>
                <option value="opContent" selected="selected">내용</option>
            </c:if>
            <c:if test="${condition == null}">
                <option value="opOrder" >주문번호</option>
                <option value="opId" >아이디</option>
                <option value="opTitle" >제목</option>
                <option value="opContent">내용</option>
            </c:if>
            </select>
            <input type="text" name="search" id="search" value="${search}" required="required">
            <button type="button" onclick="searchHpRe()">검색하기</button>
        </form>
           
  



        </div>
        <div id="selectBtn">
            <button type="button" onclick="location.href='orderQnaManage.do'">전체보기</button> <button type="button" onclick="location.href='qnaStatusN.do?page=${pi.currentPage}'">답변대기</button>
        </div>
        <!--테이블 부분-->
        <table id="contentTb">
            <tr>
            	<th class="firstLine">번호</th>
                <th class="firstLine">주문번호</th>
                <th class="firstLine">상품이름</th>
                <th class="firstLine">회원아이디</th>
                <th class="firstLine">제목</th>
                <th class="firstLine">내용</th>
                <th class="firstLine">작성날짜</th>
                <th class="firstLine">답변완료 여부</th>
            </tr>
            <c:forEach var="q" items="${list}" varStatus="status">
            <tr onclick="location.href='orderQnaDetail.do?oqnaNo=${q.oqnaNo}'">
             	<td>${status.count}</td>
                <td>${q.orderNo}</td>
                <td>${q.pdName}</td>
                <c:if test="${not empty q.cId}">
                <td>${q.cId}</td>
                </c:if>
                <c:if test="${not empty q.drId}">
                <td>${q.drId}</td>
                </c:if>
                <td>${q.oqnaTitle}</td>
                <td>${q.oqnaContent}</td>
                <td>${q.oqnaDate}</td>
                <td>
                    ${q.oqnaStatus}
                </td>
            </tr>
            </c:forEach>
         

        </table>
        <input type="hidden" value="${result}" id="result">
 
        <div id="pagingArea" align="center">
           <c:if test="${pi.currentPage == 1 }">
              이전&nbsp;
           </c:if>
           
           <c:if test="${pi.currentPage > 1 }">
              <c:choose>
                 <c:when test="${not empty condition}">
                    <c:url var="searchQnaBack" value="orderQnaSearch.do">
                       <c:param name="page" value="${pi.currentPage -1 }"/>
                       <c:param name="condition" value="${condition}"/>
                       <c:param name="search" value="${search}"/>
                    </c:url>
                    <a href="${orderQnaBack}">이전</a>
                 </c:when>
                 
                 <c:otherwise>
                    <c:url var="orderqnaBack" value="orderQnaManage.do">
                       <c:param name="page" value="${pi.currentPage-1 }"/>
                    </c:url>
                    <a href="${orderqnaBack}">이전</a>
                 </c:otherwise>
              </c:choose>
           </c:if>
           
           <!-- 번호들 -->
           <c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage}">
              <c:if test="${p eq pi.currentPage }">
                 <font color="red" size="4"><b>${p }</b></font>
              </c:if>
                
                <c:if test="${p ne pi.currentPage }">
                   <c:choose>
                 <c:when test="${not empty condition}">
                     <c:url var="searchQna" value="orderQnaSearch.do">
                       <c:param name="page" value="${p}"/>
                       <c:param name="condition" value="${condition}"/>
                       <c:param name="search" value="${search}"/>
                    </c:url>
                    <a href="${searchQna}">${p }</a>
                 </c:when>
                 
                 <c:otherwise>
                     <c:url var="Qna" value="orderQnaManage.do">
                       <c:param name="page" value="${p}"/>
                    </c:url>
                    <a href="${Qna}">${p }</a>
                 </c:otherwise>
              </c:choose>
                </c:if>
           </c:forEach>
           
           <c:if test="${pi.currentPage == pi.maxPage }">
              &nbsp;이후
           </c:if>
           
           <c:if test="${pi.currentPage < pi.maxPage }">
              <c:choose>
                  <c:when test="${not empty condition}">
                    <c:url var="searchQnaNext" value="orderQnaSearch.do">
                       <c:param name="page" value="${pi.currentPage +1 }"/>
                       <c:param name="condition" value="${condition}"/>
                       <c:param name="search" value="${search}"/>
                    </c:url>
                    <a href="${searchQnaNext}">이후</a>
                 </c:when>
                 
                 <c:otherwise>
                    <c:url var="orderQnaNext" value="orderQnaManage.do">
                           <c:param name="page" value="${pi.currentPage+1 }"/>
                    </c:url>
                    <a href="${orderQnaNext}">이후</a>
                 </c:otherwise>
              </c:choose>
             </c:if>
        
        </div><!-- pageingArea end -->


    </div>



   <script>
      function searchHpRe(){
    	 var expr =  /^[0-9]*$/;
         var searchCondition = $("#searchCondition option:selected").val();
         var search = $("#search").val();
         if(!expr.test(search) &&searchCondition=='opOrder'){
        	 alert("숫자만 입력하세요");
        	 
         }else{
        	 $("#orderQnaForm").submit();
         }
        
      }
      
      $(function(){
      	var result = $("#result").val();
      	if(result!=""){
      		alert("답변등록이 완료되었습니다");
      	}
      })
      	
  
   </script>
   
    <script>
          
    
    
    
        // 테이블 한 줄 hover효과 주는 function
        $("#contentTb td").mouseenter(function(){
            $(this).parent().css({"background" : "lightgrey"});
        }).mouseout(function(){
            $(this).parent().css({"background" : "white"});
        });
      
    </script>


</body>
</html>
