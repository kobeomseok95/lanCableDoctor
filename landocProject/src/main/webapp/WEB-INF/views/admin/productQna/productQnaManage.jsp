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
        #contentArea{position: absolute; left: 370px; top: 20px; width: 80%; height: 100%;}
        #contentArea h2{padding-bottom: 30px; text-align:center;}
        

        /*오른쪽 영역 table*/
        #contentTb{margin: 0 auto; margin-top: 30px; width: 100%; text-align:center; border: 2px solid #bbb; border-collapse: collapse;}
        #contentTb tr{line-height: 40px;}
        #contentTb th{border-bottom: 2px solid #bbb; border-right: 1px solid #bbb;}
        #contentTb td{width: auto; border: 1px solid #bbb;}
        #contentTb button{height: 35px; width: 45%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
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

    <!--여기서 부터 왼쪽 영역 contentArea-->
    <div id="contentArea">
        <h2>상품 QnA</h2>

        <!--검색 창 부분-->
        <div id="searchArea">
            <select id="searchCondition" name="searchCondition">
                <option>게시글 번호</option>
                <option>제목</option>
                <option>내용</option>
                <option>작성자</option>
                <option>상품번호</option>
                <option>상품명</option>
            </select>
            <input type="text">
            <button type="button">검색하기</button>
            <!-- --------------------------------------------------- -->
            <a href="productQnaDetail.do">detail페이지 전환 확인용</a>
        </div>

        <input id="noAnswer" type="checkbox" />&nbsp;<label for="noAnswer">답변대기만 보기</label>

        <!--테이블 부분-->
        <table id="contentTb">
            <tr>
                <th class="firstLine">번호</th>
                <th class="firstLine">제목</th>
                <th class="firstLine">상품번호</th>
                <th class="firstLine">상품명</th>
                <th class="firstLine">작성자</th>
                <th class="firstLine">답변상태</th>
            </tr>
            <tr>
                <td>123</td>
                <td>화장실이 어디에요?</td>
                <td>444</td>
                <td>게보린</td>
                <td>고범석짱짱짱</td>
                <td>답변대기</td>
            </tr>
            <tr>
                <td>122</td>
                <td>물좀 한잔 하고싶습니다.</td>
                <td>444</td>
                <td>게보린</td>
                <td>고틀범딱</td>
                <td>답변완료</td>
            </tr>
        </table>

        <br><br>
        <div class="pagination">
            <a href="#">&laquo;</a>
            <a href="#">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <a href="#">6</a>
            <a href="#">&raquo;</a>
        </div>

        <br><br><br><br><br><br>
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