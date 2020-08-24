<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String approvalMsg = (String)request.getAttribute("approvalMsg");
	String deniedMsg = (String )request.getAttribute("deniedMsg");
%>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>hospitalManage</title>
    <script src= 'http://code.jquery.com/jquery-latest.js'></script>
    <style>
       
        /*오른쪽 영역부분*/
        #contentArea{position: absolute; left: 300px; top: 20px; width: 78%; height: 100%;}
        #contentArea h3{padding-bottom: 2%; text-align:center;}
        

        /*오른쪽 영역 table*/
        #contentTb{margin: 0 auto; margin-top: 2%; width: 100%; text-align:center; border: 2px solid #bbb; border-collapse: collapse;}
        #contentTb tr{line-height: 40px;}
        #contentTb th{border-bottom: 2px solid #bbb; border-right: 1px solid #bbb; font-size:13px;}
        #contentTb td{width:auto; border: 1px solid #bbb; font-size:14px;}
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
        <h3>병원 정보 관리</h3>

        <!--검색 창 부분-->
        <div id="searchArea">
            <select id="searchCondition" name="searchCondition">
                <option <c:if test="${condition !=null && condition eq 'noneCondition' }">selected="selected"</c:if>>----------------</option>
                <option value="hpNo" <c:if test="${condition !=null && condition eq 'hpNo' }">selected="selected"</c:if>>병원 번호</option>
                <option value="hpName" <c:if test="${condition !=null && condition eq 'hpName' }">selected="selected"</c:if>>병원 이름</option>
                <option value="hpCateCode" <c:if test="${condition !=null && condition eq 'hpCateCode' }">selected="selected"</c:if>>진료과목 코드</option>
                <option value="hpCateName" <c:if test="${condition !=null && condition eq 'hpCateName' }">selected="selected"</c:if>>진료과목 이름</option>
                <option value="hpStatus" <c:if test="${condition !=null && condition eq 'hpStatus' }">selected="selected"</c:if>>승인 상태</option>
            </select>
           
           <c:if test="${value !=null && value ne 'noneValue' }">
           		<input type="search" id="searchValue" value="${value }" onkeyup="validateSearch();">
           </c:if>
           
           <c:if test="${value !=null && value eq 'noneValue' }">
           		<input type="search" id="searchValue" onkeyup="validateSearch();">
           </c:if>
           
            <button onclick="searchHp();">검색하기</button>
            <!-- <button type="button">신규 병원 등록</button> -->
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
      function searchHp(){
         
         var searchCondition = $("#searchCondition").val();
         console.log(searchCondition);
         var searchValue = $("#searchValue").val();
         console.log(searchValue);
        
       	 if(searchValue == ""){
       		 alert("검색어를 입력해 주세요!");
       		 return;
       	 }
       	 if(searchCondition =="----------------" && searchValue != null){
       		 alert("검색조건을 선택해 주세요!");
       		 return;
       	 }
         
         
         location.href="hpList.do?searchCondition=" + searchCondition + "&searchValue=" + searchValue;
      }
      
   </script>
	
        <!--테이블 부분-->
        <table id="contentTb">
            <tr>
                <th class="firstLine">번호</th>
                <th class="firstLine">병원 번호</th>
                <th class="firstLine">병원이름</th>
                <th class="firstLine">병원 카테고리</th>
                <!-- <th class="firstLine">우편번호</th> -->
                <!-- <th class="firstLine">주소</th> -->
                <th class="firstLine">연락처</th>
                <th class="firstLine">정보 수정 <br>승인 상태</th>
                <th class="firstLine">정보 수정</th>
            </tr>
            
            
            <c:if test="${!empty list }">
            	<c:forEach var="hp" items="${list }">
            		<tr>
            			<td style="width:3%;">${hp.rowNum }</td>
            			<td style="width:5%;">${hp.hpNo }</td>
            			<td style="width:15%;">${hp.hpName }</td>
            			<td style="width:17%;">${hp.hpCateName }</td>
            			<%-- <td style="width:6%;">${hp.hpPostCode }</td> --%>
            			<%-- <td style="width:18%;">${hp.hpAddress }</td> --%>
            			<td style="width:10%;">${hp.hpPhone }</td>
            			<td style="width:7%;">${hp.hpStatus }</td>
            			
            			<c:if test="${hp.hpStatus eq 'Y' }">
	            			<td style="width:13%;">
			                    <button style="width:50%;" onclick="location.href='hpDetail.do?hpNo=' + ${hp.hpNo }">상세보기</button>
			                </td>
            			</c:if>
            			
            			<c:if test="${hp.hpStatus eq 'X' }">
	            			<td style="width:13%;">
			                    <button style="width:50%;" onclick="location.href='hpDetail.do?hpNo=' + ${hp.hpNo }">상세보기</button>
			                </td>
            			</c:if>
            			
            			<c:if test="${hp.hpStatus eq 'N' }">
            				<td>
			                    <button style="width:45%;" onclick="location.href='hpDetail.do?hpNo=' + ${hp.hpNo }">상세보기</button>
			                    <button style="width:45%;" onclick="location.href='hpApproval.do?hpNo=' + ${hp.hpNo}">수정승인</button>
			                </td>
            			</c:if>
            			
            		</tr>
            	</c:forEach>
            </c:if>
            
            
            <c:if test="${empty list }">
            	<tr>
            		<td colspan="7">검색결과가 없습니다.</td>
            	</tr>
            </c:if>
           
        </table>
        
        <div id="pagingArea" align="center">
      		<c:if test="${pi.currentPage == 1 }">
      		  이전&nbsp;
        	</c:if>
        	
        	<c:if test="${pi.currentPage > 1 }">
        		<c:choose>
        			<c:when test="${sc.none ne 'noneValue' }">
        				<c:url var="hpListBack" value="hpList.do">
        					<c:param name="page" value="${pi.currentPage -1 }"/>
        					<c:param name="searchCondition" value="${condition }"/>
        					<c:param name="searchValue" value="${value }"/>
        				</c:url>
        				<a href="${hpListBack }">이전</a>
        			</c:when>
        			
        			<c:otherwise>
        				<c:url var="hpListBack" value="hpList.do">
        					<c:param name="page" value="${pi.currentPage-1 }"/>
        					<c:param name="searchCondition" value="noneCondition"/>
        					<c:param name="searchValue" value="noneValue"/>
        				</c:url>
        				<a href="${hpListBack }">이전</a>
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
        				<c:when test="${sc.none ne 'noneValue' }">
        					<c:url var="hpListCheck" value="hpList.do">
        						<c:param name="page" value="${p }"/>
        						<c:param name="searchCondition" value="${condition }"/>
        						<c:param name="searchValue" value="${value }"/>
        					</c:url>
        					<a href="${hpListCheck }">${p }</a>
        				</c:when>
        				
        				<c:otherwise>
        					<c:url var="hpListCheck" value="hpList.do">
        						<c:param name="page" value="${p }"/>
        						<c:param name="searchCondition" value="noneCondition"/>
        						<c:param name="searchValue" value="noneValue"/>
        					</c:url>
        						<a href="${hpListCheck }">${p }</a>
        				</c:otherwise>
        			</c:choose>
        		</c:if>
        	</c:forEach>
        	
        	<c:if test="${pi.currentPage == pi.maxPage }">
        		&nbsp;이후
        	</c:if>
        	
        	<c:if test="${pi.currentPage < pi.maxPage }">
        		<c:choose>
        			<c:when test="${sc.none ne 'noneValue' }">
        				<c:url var="hpListEnd" value="hpList.do">
        					<c:param name="page" value="${pi.currentPage +1 }"/>
        					<c:param name="searchCondition" value="${condition }"/>
        					<c:param name="searchValue" value="${value }"/>
        				</c:url>
        				<a href="${hpListEnd }">이후</a>
        			</c:when>
        			
        			<c:otherwise>
        				<c:url var="hpListEnd" value="hpList.do">
        					<c:param name="page" value="${pi.currentPage +1 }"/>
        					<c:param name="searchCondition" value="noneCondition"/>
        					<c:param name="searchValue" value="noneValue"/>
        				</c:url>
        				<a href="${hpListEnd }">이후</a>
        			</c:otherwise>
        		</c:choose>
        	</c:if>
        </div><!-- pagingArea end -->
    <br><br><br>
    </div><!-- 오른쪽 contend end -->

   <script>
        // 테이블 한 줄 hover효과 주는 function
        $("#contentTb td").mouseenter(function(){
            $(this).parent().css({"background" : "lightgrey"});
        }).mouseout(function(){
            $(this).parent().css({"background" : "white"});
        });
        
        
    </script>
    
    <script>
    	<%if(approvalMsg != null){%>
    		alert("병원 기본 정보 수정 승인에 성공했습니다.");
    	<%}%>
    	
    	<%if(deniedMsg != null){%>
			alert("병원 기본 정보 수정 미승인 처리에 성공했습니다.");
		<%}%>
    
    </script>
    
    
    


</body>
</html>