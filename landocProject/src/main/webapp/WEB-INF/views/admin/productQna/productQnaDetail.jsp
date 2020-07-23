<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>productQnaDetail</title>
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
        
         /* td  */
        td > button {width: 300px;}

        /* textarea */
        textarea {width: 95%;}

		


</style>
</head>
<body>

	<jsp:include page="../../common/adminSide.jsp"/>

    <!--여기서 부터 왼쪽 영역 contentArea-->
    <div id="contentArea">
        <h2>상품 QnA</h2>

        <!--테이블 부분-->
        <form id="answer" action="#" method="post">
            <table id="contentTb">
                <tr>
                    <th class="firstLine">번호</th>
                    <td>123</td>
                </tr>
                <tr>
                    <th class="firstLine">제목</th>
                    <td>화장실이 어디에요?</td>
                </tr>
                <tr>
                    <th class="firstLine">상품번호</th>
                    <td>444</td>
                </tr>
                <tr>
                    <th class="firstLine">상품명</th>
                    <td>게보린</td>
                </tr>
                <tr>
                    <th class="firstLine">작성자</th>
                    <td>고범석짱짱짱</td>
                </tr>
                <tr>
                    <th class="firstLine">내용</th>
                    <td>이거 인간적으로 너무 작은거 아니에요?</td>
                </tr>
                <tr>
                    <th class="firstLine">답변할 내용</th>
                    <td>
                        <textarea rows="5">양심이 없으시군요!</textarea>
                    </td>
                </tr>
                 
            </table>
            
             <!--수정하기 뒤로 가기 버튼영역-->
            <div id="btnArea">
                <button type="sumbit" onclick="goModify();">수정하기</button>
                <button type="button" onclick="goBack();">뒤로가기</button>
            </div>
            
            
        </form>

        <br><br><br><br><br><br>
    </div>


   
    <script>
        
        function goAnswer() {
            $("#answer").submit();
        }

        // 테이블 한 줄 hover효과 주는 function
        $("#contentTb td").mouseenter(function () {
            $(this).parent().css({ "background": "lightgrey" });
        }).mouseout(function () {
            $(this).parent().css({ "background": "white" });
        });

    </script>


</body>
</html>