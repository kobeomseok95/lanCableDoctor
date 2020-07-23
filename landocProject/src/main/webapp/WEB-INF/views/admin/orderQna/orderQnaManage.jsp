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
        #contentArea{position: absolute; left: 370px; top: 20px; width: 80%; height: 100%;}
        #contentArea h2{padding-bottom: 30px; text-align:center;}
        

        /*오른쪽 영역 table*/
        #contentTb{margin: 0 auto; margin-top: 30px; width: 100%; text-align:center; border: 2px solid #bbb; border-collapse: collapse;}
        #contentTb tr{line-height: 40px;}
        #contentTb th{border-bottom: 2px solid #bbb; border-right: 1px solid #bbb;}
        #contentTb td{width: auto; border: 1px solid #bbb;}
        #contentTb button{height: 35px; width: 35%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
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
        <h2>주문QnA 관리</h2>

        <!--검색 창 부분-->
        <div id="searchArea">
            <select id="searchCondition" name="searchCondition">
                <option>주문번호</option>
                <option>아이디</option>
                <option>제목</option>
                <option>내용</option>
            </select>
            <input type="text">
            <button type="button">검색하기</button>
            <!-- --------------------------------------------------- -->
            <a href="orderQnaDetail.do">detail페이지 전환 확인용</a>
            
        </div>
        <div id="selectBtn">
            <button type="button">전체보기</button> <button type="button">답변대기</button>
        </div>
        <!--테이블 부분-->
        <table id="contentTb">
            <tr>
                <th class="firstLine">주문번호</th>
                <th class="firstLine">상품이름</th>
                <th class="firstLine">회원아이디</th>
                <th class="firstLine">제목</th>
                <th class="firstLine">내용</th>
                <th class="firstLine">작성날짜</th>
                <th class="firstLine">답변완료 여부</th>
            </tr>
            <tr>
                <td>203444333</td>
                <td>비타민C</td>
                <td>mo_so</td>
                <td>배송언제와요?</td>
                <td>배송빨리부탁드려용</td>
                <td>20-07-13</td>
                <td>
                    N
                </td>
            </tr>
            <tr>
                <td>203444333</td>
                <td>비타민C</td>
                <td>mo_so</td>
                <td>배송언제와요?</td>
                <td>배송빨리부탁드려용</td>
                <td>20-07-13</td>
                <td>
                    Y
                </td>
            </tr>


        </table>



    </div>


   
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

