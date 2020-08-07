<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>hospitalDetail</title>
    <script src= 'http://code.jquery.com/jquery-latest.js'></script>
    <style>
    
    	/*오른쪽 영역부분*/
        #contentArea{position: absolute; left: 300px; top: 20px; width: 78%; height: 100%;}
        #contentArea h3{padding-bottom: 2%; text-align:center;}
        

        /*오른쪽 영역 table*/
        #contentTb{margin: 0 auto; margin-top: 2%; width: 80%; text-align:center; border: 2px solid #bbb; border-collapse: collapse;}
        #contentTb tr{line-height: 40px;}
        #contentTb th{width:650px; border-bottom: 2px solid #bbb; border-right: 1px solid #bbb; font-size:13px;}
        #contentTb td{width:600px; border: 1px solid #bbb; font-size:14px;}
        #contentTb button{height: 35px; width: 55%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
        #contentTb button:hover{background-color: #007ee5; color: white;}
      	#contentTb input{width:95%; border:none;}

      	/* 수정하기, 뒤로가기 버튼*/
        #btnArea{text-align: center; padding-top: 45px;}
        #btnArea button{height: 40px; width: 15%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600; font-size:15px;}
        #btnArea button:hover{background-color: #007ee5; color: white;}
    
   </style>
</head>
<body>
    
   <jsp:include page="../../common/adminSide.jsp"/>

    <!--여기서 부터 왼쪽 영역 contentArea-->
    <form action="#" method="post">
        <div id="contentArea">
            <h3>병원 상세 정보</h3>


            <!--테이블 부분-->
            <table id="contentTb">
                <tr>
                    <th class="firstLine">병원 번호</th>
                    <td  colspan="7"><input type="text" value="${hp.hpNo }" readonly></td>
                </tr>
                <tr>
                    <th class="firstLine">병원 이름</th>
                    <td  colspan="7"><input type="text" value="${hp.hpName }" readonly></td>
                </tr>
                <tr>
                    <th class="firstLine">진료과목 코드 번호</th>
                    <td colspan="7"><input type="text" value="${hp.hpCateCode }" readonly></td>
                </tr>
                <tr>
                    <th class="firstLine">진료과목</th>
                    <td colspan="7"><input type="text" value="${hp.hpCateName }" readonly></td>
                </tr>
 				<tr>
                    <th class="firstLine">우편번호</th>
                    <td colspan="7"><input type="text" value="${hp.hpPostCode }" readonly></td>
                </tr> 
                <tr>
                    <th class="firstLine">주소</th>
                    <td colspan="7"><input type="text" value="${hp.hpAddress }" readonly></td>
                </tr>
                <tr>
                    <th class="firstLine">연락처</th>
                    <td colspan="7"><input type="tel" value="${hp.hpPhone }" readonly></td>
                </tr>   
                <tr>
                    <th class="firstLine" rowspan="1">영업시간</th>
	                   <c:forEach var="ht" items="${hpTimeList }">
	                    <td>
	                    	<input type="text" value="${ht.day }" readonly>
	                    	
	                    	<c:if test="${ht.openTime == null  && ht.closeTime == null}">
			                    <input type="text" value="휴무" readonly>
		                    	<input type="text" value="휴무" readonly>
	                    	</c:if>
	                    	
	                    	<c:if test="${ht.openTime != null  && ht.closeTime != null}">
			                    <input type="text" value="${ht.openTime }" readonly>
		                    	<input type="text" value="${ht.closeTime }" readonly>
	                    	</c:if>
	                    </td>
	             	</c:forEach>	
                </tr>
                <tr>
                    <th class="firstLine" rowspan="1">병원 내부 사진</th>
                    <c:if test="${hpPhotoList != null}">
	                    <c:forEach var="photo" items="${hpPhotoList }">
	                    	<td colspan="3">
		                    	<c:set var="fullPath" value="/projectFiles/${photo.renameFileName }"/>
								<img src="${fullPath}" style="width: 100px; height: 100px;"/>
		                    </td>
	                    </c:forEach>
                    </c:if>
                </tr>
                <tr>
                    <th class="firstLine">병원 간단 소개</th>
                    <td colspan="7"><input type="text" value="${hp.hpComment }" readonly></td>
                </tr>
                
            </table>
            

            <!--수정하기 뒤로 가기 버튼영역-->
            <div id="btnArea">
                <button type="button" onclick="goBack();">뒤로가기</button>
            </div>


            <br><br><br><br><br><br>

    </div>

    </form>



    <script>
        function goBack(){
        	 location.href="javascript:history.go(-1)";
        }


    </script>

  

</body>
</html>