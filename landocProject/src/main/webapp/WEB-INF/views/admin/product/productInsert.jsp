<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>productInsert</title>
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

        /* textarea */
        textarea {width: 80%;}
        .btnArea button{float: right;}
        
         /* 수정하기, 뒤로가기 버튼*/
        #btnArea{text-align: center; padding-top: 45px;}
        #btnArea button{height: 50px; width: 17%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600; font-size:20px;}
        #btnArea button:hover{background-color: #007ee5; color: white;}


	</style>

</head>
<body>
	
	<jsp:include page="../../common/adminSide.jsp"/>

    <!--여기서 부터 왼쪽 영역 contentArea-->
    <div id="contentArea">
        <h2>신규 상품 추가</h2>

        <!--테이블 부분-->
        <form id="createProduct" action="#" method="post">
            <table id="contentTb">
                <tr>
                    <th class="firstLine cate">상품 카테고리</th>
                    <td>
                        <select>
                            <option>--------</option>
                            <option>종합건강</option>
                            <option>눈건강</option>
                            <option>장건강</option>
                            <option>피로개선</option>
                            <option>피부건강</option>
                            <option>뼈 & 관절건강</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th class="firstLine">상품명</th>
                    <td>
                        <input type="text" name="productName" />
                    </td>
                </tr>
                <tr>
                    <th class="firstLine">상품수량</th>
                    <td>
                        <input type="number" name="productQunatity" />
                    </td>
                </tr>
                <tr>
                    <th class="firstLine">상품 부연 설명</th>
                    <td>
                        <input type="text" name="productExplain" />
                    </td>
                </tr>
                <tr>
                    <th class="firstLine">상품 정가</th>
                    <td>
                        <input type="number" name="productPrice" style="width:15%"/> 원
                    </td>
                </tr>
                <tr>
                    <th class="firstLine">용량</th>
                    <td>
                        <input type="number" name="productCapacity1" style="width:15%"/>
                        <select>
                            <option>mg</option>
                            <option>IU</option>
                            <option>μg</option>
                            <option>ug</option>
                            <option>mcg</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th class="firstLine">섭취방법</th>
                    <td>
                        <input type="text" name="productHowToEat" />
                    </td>
                </tr>
                <tr>
                    <th class="firstLine">썸네일 이미지</th>
                    <td>
                        <input type="file" name="productThumbnail" />
                    </td>
                </tr>
                <tr>
                    <th class="firstLine">상세 설명 이미지</th>
                    <td>
                        <input type="file" name="productDetailImage" />
                    </td>
                </tr>
            </table>
            
             <!--수정하기 뒤로 가기 버튼영역-->
            <div id="btnArea">
                <button type="sumbit" onclick="goModify();">등록하기</button>
                <button type="button" onclick="goBack();">뒤로가기</button>
            </div>
               
        </form>
        <br><br><br><br><br><br>
    </div>


  	<script>
  	
        // 테이블 한 줄 hover효과 주는 function
        $("#contentTb td").mouseenter(function () {
            $(this).parent().css({ "background": "lightgrey" });
        }).mouseout(function () {
            $(this).parent().css({ "background": "white" });
        });

    </script>


</body>

</html>