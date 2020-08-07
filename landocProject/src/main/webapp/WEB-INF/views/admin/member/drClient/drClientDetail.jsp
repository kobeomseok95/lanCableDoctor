<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>drClientDetail</title>
    <script src= 'http://code.jquery.com/jquery-latest.js'></script>
    <style>
   
        /*오른쪽 영역부분*/
        #contentArea{position: absolute; left: 300px; top: 20px; width: 78%; height: 100%;}
        #contentArea h3{padding-bottom: 2%; text-align:center;}
        

        /*오른쪽 영역 table*/
        #contentTb{margin: 0 auto; margin-top: 2%; width: 80%; text-align:center; border: 2px solid #bbb; border-collapse: collapse;}
        #contentTb tr{line-height: 40px;}
        #contentTb th{width:400px; border-bottom: 2px solid #bbb; border-right: 1px solid #bbb; font-size:13px;}
        #contentTb td{width:600px; border: 1px solid #bbb; font-size:14px;}
        #contentTb button{height: 35px; width: 55%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
        #contentTb button:hover{background-color: #007ee5; color: white;}
      	#contentTb input{width:95%; border:none; text-align: center;}

      /* 수정하기, 뒤로가기 버튼*/
        #btnArea{text-align: center; padding-top: 45px;}
        #btnArea button{height: 40px; width: 15%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600; font-size:15px;}
        #btnArea button:hover{background-color: #007ee5; color: white;}
   </style>


</head>
<body>

   <jsp:include page="../../../common/adminSide.jsp"/>
   
    <!--여기서 부터 왼쪽 영역 contentArea-->
    <form action="drClientApproval1.do" method="post" onsubmit="return ok();">
        <div id="contentArea">
            <h3>의사 정보 수정</h3>


            <!--테이블 부분-->
            <table id="contentTb">
                <tr>
                    <th class="firstLine">번호</th>
                    <td><input type="text" value="${drPage.drNo }" readonly name="drNo"></td>
                </tr>
                <tr>
                    <th class="firstLine">아이디</th>
                    <td>${drPage.userId }</td>
                </tr>
                <tr>
                    <th class="firstLine">이름</th>
                    <td>${drPage.userName }</td>
                </tr>
                <tr>
                    <th class="firstLine">생년월일</th>
                    <td>${drPage.birth }</td>
                </tr>
                <tr>
                    <th class="firstLine">휴대폰 번호</th>
                    <td>${drPage.phone }</td>
                </tr>
                 <tr>
                    <th class="firstLine">이메일</th>
                    <td><input type="text" value="${drPage.email }" readonly name="email"></td>
                </tr>
                <tr>
                    <th class="firstLine">포인트</th>
                    <td>${drPage.point }</td>
                </tr>   
                <tr>
                    <th class="firstLine">우편번호</th>
                    <td>${drPage.post }</td>
                </tr>
                <tr>
                    <th class="firstLine">상세주소</th>
                    <td>${drPage.address }</td>
                </tr>
                <tr>
                    <th class="firstLine">소속병원</th>
                    <td>${drPage.hpName }</td>
                </tr>
                <tr>
                    <th class="firstLine">주분야</th>
                    <td>${drPage.hpCateName }</td>
                </tr>
                <c:if test="${drPage.proRename != null }">
                 <tr>
                    <th class="firstLine">프로필</th>
                    <td><img id="imagePreview1"style="width: 100px; height: 100px;" src="/projectFiles/${drPage.proRename }"></td>
                </tr>  
                </c:if>
                <c:if test="${drPage.proRename == null }">
                 <tr>
                    <th class="firstLine">프로필</th>
                    <td><img id="imagePreview1"style="width: 100px; height: 100px;" src="/projectFiles/profile.png"></td>
                </tr>  
                </c:if>
                <c:forEach var="file" items="${list }">
                <tr>
                    <th class="firstLine">첨부파일</th>
                    <td><img id="imagePreview1"style="width: 500px; height: 400px;" src="/projectFiles/${file.drhpRename }"></td>
                </tr>
                </c:forEach>
                
                <tr>
                    <th class="firstLine">승인대기 여부</th>
                    <td><input type="text" value="${drPage.approval }" name="approval" id="approval" readonly></td>
                </tr>
                <tr>
                    <th class="firstLine">가입날짜</th>
                    <td>${drPage.enrollDate }</td>
                </tr>
                <tr>
                    <th class="firstLine">가입상태</th>
                    <td>${drPage.status }</td>
                </tr>  
            </table>
            

            <!--수정하기 뒤로 가기 버튼영역-->
            <div id="btnArea">
           		<button type="submit">승인하기</button>
				<button onclick="return no(this.form);">미승인 요청</button>
                <!-- <button type="submit">수정하기</button> -->
                <button type="button" onclick="goBack();">뒤로가기</button>
            </div>


            <br><br><br><br><br><br>

    </div>

    </form>


	<script>
	/* if($("#ok").on("click",function(){
    	
		if($("#approval").val() == "Y"){
			alert("이미 승인 되었습니다.");
		}
    }))) */
    
   	function ok(){
    	if($("#approval").val() == 'Y'){
    		alert("이미 승인하셨습니다.");
    		return false;
    	}
    	return true;
    }
    
    function no(frm){
    	if($("#approval").val() == 'N'){
    	frm.action="drClientApproval2.do";   
    	frm.submit();
    		return true;
    	}else if($("#approval").val() == 'X'){
    		alert("이미 미승인 버튼 누르셨습니다.");
    		return false;
    	}
    }
	</script>
    <script>
       

        function goBack(){
        	 location.href="javascript:history.go(-1)";
        }

    </script>
   

  

</body>
</html>