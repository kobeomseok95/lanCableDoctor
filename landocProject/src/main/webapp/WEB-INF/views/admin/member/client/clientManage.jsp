<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>clientManage</title>
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
     
    </style>
<body>
	
	<jsp:include page="../../../common/adminSide.jsp"/>
    

    <!--여기서 부터 왼쪽 영역 contentArea-->
    <div id="contentArea">
        <h2>일반 회원 관리</h2>

        <!--검색 창 부분-->
        <div id="searchArea">
            <select id="searchCondition" name="searchCondition">
                <option>회원 번호</option>
                <option>회원 이름</option>
                <option>회원 닉네임</option>
            </select>
            <input type="text">
            <button type="button">검색하기</button>
        </div>

        <!--테이블 부분-->
        <table id="contentTb">
            <tr>
                <th class="firstLine">번호</th>
                <th class="firstLine">아이디</th>
                <th class="firstLine">닉네임</th>
                <th class="firstLine">이름</th>
                <th class="firstLine">생년월일</th>
                <th class="firstLine">휴대폰 번호</th>
                <th class="firstLine">포인트</th>
                <th class="firstLine">우편번호</th>
                <th class="firstLine">상세주소</th>
                <th class="firstLine">가입 날짜</th>
                <th class="firstLine">가입상태</th>
                <th class="firstLine">수정 및 변경</th>
            </tr>
            <tr>
                <td>M01</td>
                <td>dhwlsry258</td>
                <td>나나나</td>
                <td>오진교</td>
                <td>970325</td>
                <td>01012345678</td>
                <td>10,000</td>
                <td>?????</td>
                <td>?????</td>
                <td>2020/07/07</td>
                <td>Y</td>
                <td>
                    <button onclick="clientDetail();">수정</button>
                </td>
            </tr>
            <tr>
                <td>M02</td>
                <td>skdskdks</td>
                <td>노노노</td>
                <td>안요</td>
                <td>970321</td>
                <td>01078945612</td>
                <td>5000</td>
                <td>????</td>
                <td>?????</td>
                <td>2020/07/07</td>
                <td>N</td>
                <td>
                    <button onclick="clientDetail();">수정</button>
                </td>
            </tr>


        </table>


        <br><br><br><br><br><br>
    </div>


   

	<script type="text/javascript">
	
        // 테이블 한 줄 hover효과 주는 function
        $("#contentTb td").mouseenter(function(){
            $(this).parent().css({"background" : "lightgrey"});
        }).mouseout(function(){
            $(this).parent().css({"background" : "white"});
        });
        
        
        
        function clientDetail(){
        	location.href="clientDetail.do";
        }
        
        
        
    </script>


</body>
</html>

