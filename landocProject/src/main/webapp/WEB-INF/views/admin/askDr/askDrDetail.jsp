<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>askDrDetail</title>
    <script src= 'http://code.jquery.com/jquery-latest.js'></script>
    <style>
		 /*오른쪽 영역부분*/
        #contentArea {
            position: absolute;
            left: 350px;
            top: 20px;
            width: 80%;
            height: 100%;
        }

        #contentArea h2 {
            text-align:center;
            padding-bottom: 30px;
        }


        /*오른쪽 영역 table*/
        .contentTb {
            margin: 0 auto;
            margin-top: 30px;
            width: 100%;
            text-align: center;
            border: 2px solid #bbb;
            border-collapse: collapse;
        }

        .contentTb tr {
            line-height: 40px;
        }

        .contentTb th {
            border-bottom: 2px solid #bbb;
            border-right: 1px solid #bbb;
        }

        .contentTb td {
            width: auto;
            border: 1px solid #bbb;
        }

        .contentTb button {
            height: 35px;
            width: 45%;
            border: 1px solid white;
            background-color: #bbb;
            border-radius: 5px;
            color: black;
            font-weight: 600;
        }

        .contentTb button:hover {
            background-color: #007ee5;
            color: white;
        }


        

        /* td  */
        td>button {
            width: 300px;
        }

        /* textarea */
        textarea {
            width: 80%;
        }

        /* goBackBtnArea */
        .goBackBtnArea button{
            height: 31px;
            width: 95.250px;
            border: 1px solid white;
            background-color: #bbb;
            border-radius: 5px;
            color: black;
            font-weight: 600;
            padding: 0 6px 0 6px;
        }



	</style>

</head>
<body>
	
	 <jsp:include page="../../common/adminSide.jsp"/>
	
    <!--여기서 부터 왼쪽 영역 contentArea-->
    <div id="contentArea">
        <h2>의사에게 물어봐 상세</h2>

        <!--테이블 부분-->
        <table class="contentTb">
            <tr>
                <th class="firstLine">번호</th>
                <td>123</td>
            </tr>
            <tr>
                <th class="firstLine">제목</th>
                <td>화장실이 어디에요?</td>
            </tr>
            <tr>
                <th class="firstLine">작성자</th>
                <td>고범석짱짱짱</td>
            </tr>
            <tr>
                <th class="firstLine">내용</th>
                <td>화장실이 너무 급합니다ㅠㅠ 위치좀 알려주세요!</td>
            </tr>
            <tr>
                <th class="firstLine">채택상태</th>
                <td>채택완료</td>
            </tr>
        </table>

        <!-- 댓글들 불러오기 -->
        <div id="commentArea">
        	<br><br>
            <h2>댓글 목록</h2>

            <!--테이블 부분-->
            <table class="contentTb">
                <tr>
                    <th class="firstLine">선생님</th>
                    <th class="firstLine">내용</th>
                    <th class="firstLine">작성날짜</th>
                    <th class="firstLine"></th>
                </tr>
                <tr>
                    <td>고읍석</td>
                    <td>화장실은 저쪽이요!</td>
                    <td>2020-07-08</td>
                    <td>
                        <button onclick="goDelete();">삭제하기</button>
                    </td>
                </tr>
                <tr>
                    <td>고읍석</td>
                    <td>화장실은 저쪽이요!</td>
                    <td>2020-07-08</td>
                    <td>
                        <button onclick="goDelete();">삭제하기</button>
                    </td>
                </tr>
            </table>
        </div>
		
	
        <div class="goBackBtnArea">
            <button type="button" onclick="goBack();">뒤로가기</button>
        </div>


        <br><br><br><br><br><br>
    </div>
    
    
    <script>
        function goBack() {
            /* location.href = "adminAskDr.html"; */
            location.href="#";
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