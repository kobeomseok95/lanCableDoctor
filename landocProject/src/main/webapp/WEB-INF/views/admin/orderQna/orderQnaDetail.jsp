<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>orderQnaDetail</title>
    <script src= 'http://code.jquery.com/jquery-latest.js'></script>
    <style>
          /*오른쪽 영역부분*/
        #contentArea{position: absolute; left: 300px; top: 20px; width: 78%; height: 100%;}
        #contentArea h3{padding-bottom: 2%; text-align:center;}

         /*오른쪽 영역 table*/
        #contentTb{margin: 0 auto; margin-top: 2%; width: 80%; text-align:center; border: 2px solid #bbb; border-collapse: collapse;}
        #contentTb tr{line-height: 40px;}
        #contentTb th{border-bottom: 2px solid #bbb; border-right: 1px solid #bbb; font-size:13px;}
        #contentTb td{width: auto; border: 1px solid #bbb; font-size:14px;}
        #contentTb button{height: 35px; width: 55%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
        #contentTb button:hover{background-color: #007ee5; color: white;}
      #contentTb input{width:95%; border:none;}
   
      #contentTb select{width:33%; height:40px; font-size:18px;}
      #contentTb input[type=file]{height:50px;}

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
            <h3>주문QnA detail</h3>


            <!--테이블 부분-->
            <table id="contentTb">
                <tr>
                    <th class="firstLine">주문번호</th>
                    <td><input type="text" value="${detail.orderNo}" readonly></td>
                </tr>
                <tr>
                    <th class="firstLine">상품이름</th>
                    <td><input type="text" value="${detail.pdName}" readonly></td>
                </tr>
                <tr>
                    <th class="firstLine">회원아이디</th>
                    <c:if test="${not empty detail.cId}">
                    <td><input type="text" value="${detail.cId}" readonly></td>
                    </c:if>
                     <c:if test="${not empty detail.drId}">
                     <td><input type="text" value="${detail.drId}" readonly></td>
                     </c:if>
                </tr>
                <tr>
                    <th class="firstLine">제목</th>
                    <td><input type="text" value="${detail.oqnaTitle}" readonly></td>
                </tr>
                <tr>
                    <th class="firstLine">내용</th>
                    <td><input type="text" value="${detail.oqnaContent}" readonly></td>
                </tr>
                <tr>
                    <th class="firstLine">작성날짜</th>
                    <td><input type="text" value="${detail.oqnaDate}" readonly></td>
                </tr>   
                <tr>
                    <th class="firstLine">답변완료 여부</th>
                    <td><input type="text" value="${detail.oqnaStatus}" readonly></td>
                </tr>   
                <tr>
                    <th class="firstLine">답변</th>
                    <c:if test='${empty detail.oqnaAnswer}'>
              		<td><input type="text" id="answer" name="answer" value="" placeholder="답변을 입력하세요"></td>
              		</c:if>
              		<c:if test='${not empty detail.oqnaAnswer}'>
              		<td><input type="text" id="answer" name="answer" value="${detail.oqnaAnswer}" placeholder="답변을 입력하세요"></td>
              		</c:if>
                </tr>   
            </table>
         
			<input type="hidden" value="${detail.oqnaNo}" id="qnaNo">
            <!--수정하기 뒤로 가기 버튼영역-->
            <div id="btnArea">
           	   <c:if test='${empty detail.oqnaAnswer}'>
                <button type="button" onclick="goModify();">등록하기</button>
               </c:if>
                <c:if test='${not empty detail.oqnaAnswer}'>
                <button type="button" onclick="goModify();">수정하기</button>
                </c:if>
                <button type="button" onclick="goBack();">뒤로가기</button>
            </div>

    </div>

    </form>



    <script>
  
    	
        function goModify(){
    	var oqnaNo = $("#qnaNo").val();
    	var answer = $("#answer").val();
    	if(answer ==""){
    		alert("답변을 입력해주세요.");
    	}else{
    		location.href="insertAnswer.do?oqnaNo="+oqnaNo+"&answer="+answer;
    	}
            
        }

        function goBack(){
            location.href="orderQnaManage.do";
        }


    </script>

  

</body>
</html>