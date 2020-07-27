<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>hpReviewDetail</title>
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
            <h3>병원 리뷰 관리</h3>


            <!--테이블 부분-->
            <table id="contentTb">
                <tr>
                    <th class="firstLine">리뷰 번호</th>
                    <td><input type="text" value="R01" readonly></td>
                </tr>
                <tr>
                    <th class="firstLine">병원 번호</th>
                    <td><input type="text" value="H01"></td>
                </tr>
                <tr>
                    <th class="firstLine">병원 이름</th>
                    <td><input type="text" value="bumseokHospital"></td>
                </tr>
                <tr>
                    <th class="firstLine">병원 카테고리 번호</th>
                    <td><input type="text" value="010"></td>
                </tr>
                <tr>
                    <th class="firstLine">병원 카테고리 이름</th>
                    <td><input type="text" value="내과"></td>
                </tr>
                <tr>
                    <th class="firstLine">회원번호</th>
                    <td><input type="text" value=""></td>
                </tr>
                <tr>
                    <th class="firstLine">회원 아이디</th>
                    <td><input type="text" value=""></td>
                </tr>
                <tr>
                    <th class="firstLine">좋아요 여부</th>
                    <td><input type="text" value=""></td>
                </tr>
               <!--  <tr>
                    <th class="firstLine">제목</th>
                    <td><input type="text" value="최고에여"></td>
                </tr> -->
                <tr>
                    <th class="firstLine">작성 날짜</th>
                    <td><input type="text" value="2020/07/06"></td>
                </tr>
                <tr>
                    <th class="firstLine">평균 별점</th>
                    <td><input type="number" value="10"></td>
                </tr>
                <tr>
                    <th class="firstLine">자세한 설명(별점)</th>
                    <td><input type="number" value="10"></td>
                </tr>   
                <tr>
                    <th class="firstLine">직원의 친절(별점)</th>
                    <td><input type="number" value="10"></td>
                </tr>
                <tr>
                    <th class="firstLine">적절한 금액(별점)</th>
                    <td><input type="number" value="10"></td>
                </tr>   
                <tr>
                    <th class="firstLine">대기시간(별점)</th>
                    <td><input type="number" value="10"></td>
                </tr>   
                <tr>
                    <th class="firstLine">치료 후 결과(별점)</th>
                    <td><input type="number" value="10"></td>
                </tr> 
                <tr>
                    <th class="firstLine">청결함(별점)</th>
                    <td><input type="number" value="10"></td>
                </tr>  
                <tr>
                    <th class="firstLine">자세한 내용</th>
                    <td style="text-align: left;">자세한 내용</td>
                </tr> 

                <tr>
                    <th class="firstLine">영수증 인증 사진</th>
                    <td>이미지 태그 사용할것임</td>
                </tr>
                <tr>
                    <th class="firstLine">영수증 인증 승인 여부</th>
                    <td>
                        <select id="approval" name="approval">
                            <option value="Y">Y</option>
                            <option value="N">N</option>
                        </select>

                    </td>
                </tr>
            </table>
            

            <!--수정하기 뒤로 가기 버튼영역-->
            <div id="btnArea">
                <button type="sumbit" onclick="goModify();">승인하기</button>
                <button type="button" onclick="goBack();">뒤로가기</button>
            </div>

            <br><br><br><br><br><br>
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