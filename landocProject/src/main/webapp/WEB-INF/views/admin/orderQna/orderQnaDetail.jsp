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
        #contentArea{position: absolute; left: 370px; top: 20px; width: 80%; height: 100%;}
        #contentArea h2{padding-bottom: 30px; text-align:center;}
        

        /*오른쪽 영역 table*/
        #contentTb{margin: 0 auto; margin-top: 30px; width: 70%; text-align:center; border: 2px solid #bbb; border-collapse: collapse;}
        #contentTb tr{line-height: 65px;}
        #contentTb th{border-bottom: 2px solid #bbb; border-right: 1px solid #bbb; font-size:18px;}
        #contentTb td{width: auto; border: 1px solid #bbb; text-align: left; padding-left: 20px;}
        #contentTb button{height: 35px; width: 35%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
        #contentTb button:hover{background-color: #007ee5; color: white;}
		#contentTb input{width: 90%; height: 40px; border: none; font-size:20px;}
		
		#contentTb select{width:33%; height:40px; font-size:18px;}
		#contentTb input[type=file]{height:50px;}
		


        /* 수정하기, 뒤로가기 버튼*/
        #btnArea{text-align: center; padding-top: 45px;}
        #btnArea button{height: 50px; width: 17%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600; font-size:20px;}
        #btnArea button:hover{background-color: #007ee5; color: white;}
	</style>
</head>
<body>
	
	<jsp:include page="../../common/adminSide.jsp"/>

    <!--여기서 부터 왼쪽 영역 contentArea-->
    <form action="#" method="post">
        <div id="contentArea">
            <h2>주문QnA detail</h2>


            <!--테이블 부분-->
            <table id="contentTb">
                <tr>
                    <th class="firstLine">주문번호</th>
                    <td><input type="text" value="20232432" readonly></td>
                </tr>
                <tr>
                    <th class="firstLine">상품이름</th>
                    <td><input type="text" value="비타민C" readonly></td>
                </tr>
                <tr>
                    <th class="firstLine">회원아이디</th>
                    <td><input type="text" value="mo_so" readonly></td>
                </tr>
                <tr>
                    <th class="firstLine">제목</th>
                    <td><input type="text" value="배송 언제와용" readonly></td>
                </tr>
                <tr>
                    <th class="firstLine">내용</th>
                    <td><input type="text" value="빨리 보내줴요요요" readonly></td>
                </tr>
                <tr>
                    <th class="firstLine">작성날짜</th>
                    <td><input type="text" value="20-07-13" readonly></td>
                </tr>   
                <tr>
                    <th class="firstLine">답변완료 여부</th>
                    <td><input type="text" value="N" readonly></td>
                </tr>   
                <tr>
                    <th class="firstLine">답변</th>
                    <td><input type="text" value="" placeholder="답변을 입력하세요"></td>
                </tr>   
            </table>
            

            <!--수정하기 뒤로 가기 버튼영역-->
            <div id="btnArea">
                <button type="sumbit" onclick="goModify();">등록하기</button>
                <button type="button" onclick="goBack();">뒤로가기</button>
            </div>

    </div>

    </form>



    <script>
        function goModify(){
            location.href="#";
        }

        function goBack(){
            location.href="#";
        }


    </script>

  

</body>
</html>