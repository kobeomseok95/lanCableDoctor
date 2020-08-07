<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>hospitalApproval</title>
    <script src= 'http://code.jquery.com/jquery-latest.js'></script>
    <style>
    
    	/*오른쪽 영역부분*/
        #contentArea{position: absolute; left: 300px; top: 20px; width: 78%; height: 100%;}
        #contentArea h3{padding-bottom: 2%; text-align:center;}
        

        /*오른쪽 영역 table*/
        #contentTb{margin: 0 auto; margin-top: 2%; width: 80%; text-align:center; border: 2px solid #bbb; border-collapse: collapse;}
        #contentTb tr{line-height: 40px;}
        #contentTb th{width:650px; border-bottom: 2px solid #bbb; border-right: 1px solid #bbb; font-size:13px;}
        #contentTb td{width:600px; border: 1px solid #bbb; font-size:14px;}
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
            <h3>병원 기본 정보 승인</h3>


            <!--테이블 부분-->
            <table id="contentTb">
                <tr>
                    <th class="firstLine">병원 번호</th>
                    <td><input type="number" name="hpNo" value="${hp.hpNo }" readonly></td>
                </tr>
                <tr>
                    <th class="firstLine">병원 이름</th>
                    <td><input type="text" name="hpName" value="${hp.hpName }" readonly></td>
                </tr>
 				<tr>
                    <th class="firstLine">우편번호</th>
                    <td><input type="text" name="hpPostCode" value="${hp.hpPostCode }" readonly></td>
                </tr> 
                <tr>
                    <th class="firstLine">주소</th>
                    <td><input type="text" name="hpAddress" value="${hp.hpAddress }" readonly></td>
                </tr>
                <tr>
                    <th class="firstLine">연락처</th>
                    <td><input type="text" name="hpPhone" value="${hp.hpPhone }" readonly></td>
                </tr> 
                <tr>
                    <th class="firstLine">승인 상태</th>
                    <td><input type="text" name="hpStatus" id="approval" value="${hp.hpStatus }" readonly></td>
                </tr>   
                <tr>
           			<th class="firstLine">재직증명서 및 사업자 등록증</th>
           			<td>
           				<input type="hidden" name="renameFileName1" value="${hp1.renameFileName }">
           				<input type="hidden" name="originalFileName1" value="${hp1.originFileName }">
            			<c:set var="fullPath" value="/projectFiles/${hp1.renameFileName }"/>
						<img src="${fullPath}" style="width: 100px; height: 100px;"/>
           			</td>
                </tr>
                 <tr>
           			<th class="firstLine">신분증</th>
           			<td>
           				<input type="hidden" name="renameFileName2" value="${hp2.renameFileName }">
           				<input type="hidden" name="originalFileName2" value="${hp2.originFileName }">
            			<c:set var="fullPath" value="/projectFiles/${hp2.renameFileName }"/>
						<img src="${fullPath}" style="width: 100px; height: 100px;"/>
           			</td>
                </tr>
                 <tr>
           			<th class="firstLine">의사 면허증</th>
           			<td>
           				<input type="hidden" name="renameFileName3" value="${hp3.renameFileName }">
           				<input type="hidden" name="originalFileName3" value="${hp3.originFileName }">
            			<c:set var="fullPath" value="/projectFiles/${hp3.renameFileName }"/>
						<img src="${fullPath}" style="width: 100px; height: 100px;"/>
           			</td>
                </tr>
               
                
            </table>
           
            <!--수정하기 뒤로 가기 버튼영역-->
            <div id="btnArea">
            	<button type="submit" id="approval">승인 하기</button>
            	<button type="submit" id="denied">미승인 요청</button>
                <button type="button" onclick="goBack();">뒤로가기</button>
            </div>


            <br><br><br><br><br><br>

    </div>

    </form>



    <script>
    	$("#approval").click(function(){
    		$("form").attr("action", "basicInfoApproved.do");
    		
    	})
    	
    	$("#denied").click(function(){
    		$("form").attr("action", "denied.do");
    		
    	})
    
    
        function goBack(){
        	 location.href="javascript:history.go(-1)";
        }
        
        


    </script>

  

</body>
</html>