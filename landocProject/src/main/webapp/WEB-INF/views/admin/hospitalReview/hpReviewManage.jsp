<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>hpReviewManage</title>
    <script src= 'http://code.jquery.com/jquery-latest.js'></script>
    <style>
		/*오른쪽 영역부분*/
        #contentArea{position: absolute; left: 370px; top: 20px; width: 80%; height: 100%;}
        #contentArea h2{padding-bottom:30px; text-align:center;}
        

        /*오른쪽 영역 table*/
        #contentTb{margin: 0 auto; margin-top: 30px; width: 100%; text-align:center; border: 2px solid #bbb; border-collapse: collapse;}
        #contentTb tr{line-height: 40px;}
        #contentTb th{border-bottom: 2px solid #bbb; border-right: 1px solid #bbb;}
        #contentTb td{width: auto; border: 1px solid #bbb;}
        #contentTb button{height: 35px; width: 70%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
        #contentTb button:hover{background-color: #007ee5; color: white;}

        
        /*오른쪽 영역 안 검색창 부분*/
        #searchArea{text-align: center;}
        #searchArea select{width: 150px; height: 32px; font-weight: 600;}
        #searchArea{height: 60px;}
        #searchArea input{height: 26px; width: 300px;}   
        #searchArea button{height: 35px; width: 120px; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
        #searchArea button:hover{background-color:  #007ee5; color: white;}

	</style>

</head>
<body>

	<jsp:include page="../../common/adminSide.jsp"/>
	
    <!--여기서 부터 왼쪽 영역 contentArea-->
    <div id="contentArea">
        <h2>병원 리뷰 관리</h2>

        <!--검색 창 부분-->
        <div id="searchArea">
            <select id="searchCondition" name="searchCondition">
                <option>병원 번호</option>
                <option>병원 이름</option>
                <option>카테고리</option>
                <option>승인 여부</option>
            </select>
            <input type="text">
            <button type="button">검색하기</button>
        </div>


        <!--테이블 부분-->
        <table id="contentTb">
            <tr>
                <th class="firstLine">번호</th>
                <th class="firstLine">병원 번호</th>
                <th class="firstLine">병원 이름</th>
                <th class="firstLine">제목</th>
                <th class="firstLine">아이디</th>
                <th class="firstLine">닉네임</th>
                <th class="firstLine">좋아요 여부</th>
                <th class="firstLine">평균 별점</th>
                <th class="firstLine">작성 날짜</th>
                <th class="firstLine">인증 여부</th>
                <th class="firstLine">영수증 인증</th>
                
            </tr>
            <tr>
                <td>R01</td>
                <td>H01</td>
                <td>bumseokHospital</td>
                <td>이 병원 진짜 좋아여</td>
                <td>bumseok</td>
                <td>코딩왕 고범석</td>
                <td>좋아요</td>
                <td>10</td>
                <td>2020/07/06</td>
                <td>Y</td>
                <td>
                    <button onclick="hpReviewDetail();">인증</button>
                </td>
            </tr>
           
            <tr>
                <td>R01</td>
                <td>H01</td>
                <td>bumseokHospital</td>
                <td>이 병원 진짜 좋아여!</td>
                <td>bumseok</td>
                <td>코딩왕 고범석</td>
                <td>좋아요</td>
                <td>10</td>
                <td>2020/07/06</td>
                <td>Y</td>
                <td>
                    <button onclick="hpReviewDetail();">인증</button>
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
      
        
        function hpReviewDetail(){
        	location.href="hpReviewDetail.do";
        }
          
          
          
          
          
          
    </script>







</body>
</html>