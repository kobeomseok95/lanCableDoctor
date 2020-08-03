<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String msg = request.getParameter("msg");
%>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>hpReviewManage</title>
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
        #searchArea select{width: 150px; height: 28px; font-weight: 600;}
        #searchArea{height: 60px;}
        #searchArea input{height: 26px; width: 300px;}   
        #searchArea button{height: 35px; width: 120px; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
        #searchArea button:hover{background-color:  #007ee5; color: white;}
      
      	/*페이징 처리 부분*/
      	#pagingArea a{color:black; text-decoration:none;}
   </style>

</head>
<body>

   <jsp:include page="../../common/adminSide.jsp"/>
   
    <!--여기서 부터 왼쪽 영역 contentArea-->
    <div id="contentArea">
        <h3>병원 리뷰 관리</h3>

        <!--검색 창 부분-->
        <div id="searchArea">
            <select id="searchCondition" name="searchCondition">
                <option>----------</option>
                
                <c:if test="${condition != null && condition eq 'hpNo'}">
                	<option value="hpNo" selected>병원 번호</option>
	                <option value="hpName">병원 이름</option>
	                <option value="hpCateNo">카테고리 번호</option>
	                <option value="hpCateName">카테고리 이름</option>
	                <option value="cNo">회원 번호</option>
	                <option value="approval">승인 여부</option>
                </c:if>
                
                <c:if test="${condition != null && condition eq 'hpName'}">
                	<option value="hpNo">병원 번호</option>
	                <option value="hpName" selected>병원 이름</option>
	                <option value="hpCateNo">카테고리 번호</option>
	                <option value="hpCateName">카테고리 이름</option>
	                <option value="cNo">회원 번호</option>
	                <option value="approval">승인 여부</option>
                </c:if>
                
                <c:if test="${condition != null && condition eq 'hpCateNo'}">
                	<option value="hpNo">병원 번호</option>
	                <option value="hpName">병원 이름</option>
	                <option value="hpCateNo" selected>카테고리 번호</option>
	                <option value="hpCateName">카테고리 이름</option>
	                <option value="cNo">회원 번호</option>
	                <option value="approval">승인 여부</option>
                </c:if>
                
                <c:if test="${condition != null && condition eq 'hpCateName'}">
                	<option value="hpNo">병원 번호</option>
	                <option value="hpName">병원 이름</option>
	                <option value="hpCateNo">카테고리 번호</option>
	                <option value="hpCateName" selected>카테고리 이름</option>
	                <option value="cNo">회원 번호</option>
	                <option value="approval">승인 여부</option>
                </c:if>
                
                <c:if test="${condition != null && condition eq 'cNo'}">
                	<option value="hpNo">병원 번호</option>
	                <option value="hpName">병원 이름</option>
	                <option value="hpCateNo">카테고리 번호</option>
	                <option value="hpCateName">카테고리 이름</option>
	                <option value="cNo" selected>회원 번호</option>
	                <option value="approval">승인 여부</option>
                </c:if>
                
                <c:if test="${condition != null && condition eq 'approval'}">
                	<option value="hpNo">병원 번호</option>
	                <option value="hpName">병원 이름</option>
	                <option value="hpCateNo">카테고리 번호</option>
	                <option value="hpCateName">카테고리 이름</option>
	                <option value="cNo">회원 번호</option>
	                <option value="approval" selected>승인 여부</option>
                </c:if>
                
                <c:if test="${condition != null && condition eq 'noneCondition'}">
                	<option value="hpNo">병원 번호</option>
	                <option value="hpName">병원 이름</option>
	                <option value="hpCateNo">카테고리 번호</option>
	                <option value="hpCateName">카테고리 이름</option>
	                <option value="cNo">회원 번호</option>
	                <option value="approval">승인 여부</option>
                </c:if>
                
                
               
            </select>
            
            <c:if test="${value != null && value ne 'noneValue'}">
            	<input type="search" id="searchValue" value="${value }" onkeyup="validateSearch();">           
            </c:if>
            
            <c:if test="${value != null && value eq 'noneValue'}">
            	<input type="search" id="searchValue" onkeyup="validateSearch();">           
            </c:if>
            
            <button onclick="searchHpRe();">검색하기</button>
        </div>
	
	
	<script>
		/* 검색어 입력 keyup함수*/
		function validateSearch(){
			if($("#searchCondition").val() == "hpNo" || $("#searchCondition").val()=="hpCateNo"){
				/* console.log($("#searchCondition").val()); */
				
				var inputValue = $("#searchValue").val();
				/* console.log(inputValue); */
				
				var expr = /^[0-9]{1,9}$/;
				
				if(!expr.test(inputValue)){
					alert("9자리 미만의 숫자를 입력해주세요");
				}
			}
			
		}
	</script>



   <script>
      function searchHpRe(){
         
         var searchCondition = $("#searchCondition").val();
         console.log(searchCondition);
         var searchValue = $("#searchValue").val();
         console.log(searchValue);
        
       	 if(searchValue == ""){
       		 alert("검색어를 입력해 주세요!");
       		 return;
       	 }
       	 if(searchCondition =="----------" && searchValue != null){
       		 alert("검색조건을 선택해 주세요!");
       		 return;
       	 }
         
         
         location.href="hpReList.do?searchCondition=" + searchCondition + "&searchValue=" + searchValue;
      }
      
   
   
   </script>
      
        <!--테이블 부분-->
        <table id="contentTb">
            <tr>
               <th class="firstLine">번호</th>
                <th class="firstLine">병원 번호</th>
                <th class="firstLine">병원 이름</th>
                <th class="firstLine">진료과목 번호</th>
                <th class="firstLine">진료과목</th>
                <th class="firstLine">회원 번호</th>
                <th class="firstLine">아이디</th>
                <th class="firstLine">좋아요 여부</th>
                <th class="firstLine">평균별점</th>
                <th class="firstLine">작성 날짜</th>
                <th class="firstLine">영수증 인증 여부</th>
                <th class="firstLine">영수증 인증</th>
                
            </tr>
            
            
            <c:if test="${!empty list }">
            	 <c:forEach var="hpRe" items="${list }">
	               <tr>
	                  <td>${hpRe.rowNum }</td>
	                  <td>${hpRe.hpNo }</td>
	                  <td>${hpRe.hpName }</td>
	                  <td>${hpRe.hpCateNo }</td>
	                  <td>${hpRe.hpCateName }</td>
	                  <td>${hpRe.cNo }</td>
	                  <td>${hpRe.cId }</td>
	                  <td>${hpRe.like }</td>
	                  <td>${hpRe.avgRate }</td>
	                  <td>${hpRe.writeDate }</td>
	                  <td>${hpRe.approval }</td>
	                  <td>
	                     <button onclick="location.href='hpReviewDetail.do?hpReNo='+${hpRe.hpReNo}">인증</button>
	                  </td>
	               </tr>
            	</c:forEach>
            </c:if>
            
            
           <c:if test="${empty list }">
	           	<tr>
	           		<td colspan="12">검색결과가 없습니다.</td>
	           	</tr>
           </c:if>
           
             
        </table>
        
        
        <div id="pagingArea" align="center">
           <c:if test="${pi.currentPage == 1 }">
              이전&nbsp;
           </c:if>
           
           <c:if test="${pi.currentPage > 1 }">
              <c:choose>
                 <c:when test="${sc.none ne 'noneValue'}">
                    <c:url var="hpReListBack" value="hpReList.do">
                       <c:param name="page" value="${pi.currentPage -1 }"/>
                       <c:param name="searchCondition" value="${condition }"/>
                       <c:param name="searchValue" value="${value }"/>
                    </c:url>
                    <a href="${hpReListBack }">이전</a>
                 </c:when>
                 
                 <c:otherwise>
                    <c:url var="hpReListBack" value="hpReList.do">
                       <c:param name="page" value="${pi.currentPage-1 }"/>
                       <c:param name="searchCondition" value="noneCondition"/>
                       <c:param name="searchValue" value="noneValue"/>
                    </c:url>
                    <a href="${hpReListBack }">이전</a>
                 </c:otherwise>
              </c:choose>
           </c:if>
           
           <!-- 번호들 -->
           <c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
              <c:if test="${p eq pi.currentPage }">
                 <font color="red" size="4"><b>${p }</b></font>
              </c:if>
                
                <c:if test="${p ne pi.currentPage }">
                   <c:choose>
                 <c:when test="${sc.none ne 'noneValue'}">
                    <c:url var="hpReListCheck" value="hpReList.do">
                       <c:param name="page" value="${p }"/>
                       <c:param name="searchCondition" value="${condition }"/>
                       <c:param name="searchValue" value="${value }"/>
                    </c:url>
                    <a href="${hpReListCheck }">${p }</a>
                 </c:when>
                 
                 <c:otherwise>
                    <c:url var="hpReListBack" value="hpReList.do">
                       <c:param name="page" value="${p }"/>
                       <c:param name="searchCondition" value="noneCondition"/>
                       <c:param name="searchValue" value="noneValue"/>
                    </c:url>
                    <a href="${hpReListCheck }">${p }</a>
                 </c:otherwise>
              </c:choose>
                </c:if>
           </c:forEach>
           
           <c:if test="${pi.currentPage == pi.maxPage }">
              &nbsp;이후
           </c:if>
           
           <c:if test="${pi.currentPage < pi.maxPage }">
              <c:choose>
                 <c:when test="${sc.none ne 'noneValue'}">
                    <c:url var="hpReListEnd" value="hpReList.do">
                       <c:param name="page" value="${pi.currentPage +1 }"/>
                       <c:param name="searchCondition" value="${condition }"/>
                       <c:param name="searchValue" value="${value }"/>
                    </c:url>
                    <a href="${hpReListEnd }">이후</a>
                 </c:when>
                 
                 <c:otherwise>
                    <c:url var="hpReListEnd" value="hpReList.do">
                       <c:param name="page" value="${pi.currentPage +1 }"/>
                       <c:param name="searchCondition" value="noneCondition"/>
                       <c:param name="searchValue" value="noneValue"/>
                    </c:url>
                    <a href="${hpReListEnd }">이후</a>
                 </c:otherwise>
              </c:choose>
             </c:if>
        
        </div><!-- pageingArea end -->
        
    </div><!-- 오른쪽 content end -->


   
    <script>
          // 테이블 한 줄 hover효과 주는 function
        $("#contentTb td").mouseenter(function(){
            $(this).parent().css({"background" : "lightgrey"});
        }).mouseout(function(){
            $(this).parent().css({"background" : "white"});
        });
      
       
    </script>

	<script>
		<%if(msg != null){%>
			alert("영수증 승인과 회원 포인트 적립에 성공했습니다.");
		<%}%>
	
	</script>





</body>
</html>