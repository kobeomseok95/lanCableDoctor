<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String msg = request.getParameter("msg");
%>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>clientDetail</title>
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
<body>
    
    <jsp:include page="../../../common/adminSide.jsp"/>

    <!--여기서 부터 왼쪽 영역 contentArea-->
    <form id="modi"action="modifyClient.do" method="post">
        <div id="contentArea">
            <h3>회원 정보 수정</h3>


            <!--테이블 부분-->
            <table id="contentTb">
                <tr>
                    <th class="firstLine">회원번호</th>
                    <td><input type="text" value="${cPage.cNo }" readonly name="cNo" ></td>
                </tr>
                <tr>
                    <th class="firstLine">아이디</th>
                    <td><input type="text" value="${cPage.userId }" name="userId" readonly></td>
                </tr>
                <tr>
                    <th class="firstLine">닉네임</th>
                    <td><input type="text" value="${cPage.nickName }" name="nickName" id="nickName"></td>
                </tr>
                <tr>
                    <th class="firstLine">이름</th>
                    <td><input type="text" value="${cPage.userName }" name="userName" id="userName"></td>
                </tr>
                <tr>
                    <th class="firstLine">생년월일</th>
                    <td><input type="text" value="${cPage.birth }" name="birth" readonly></td>
                </tr>
                <tr>
                    <th class="firstLine">휴대폰 번호</th>
                    <td><input type="text" value="${cPage.phone }" name="phone" readonly></td>
                </tr>
                 <tr>
                    <th class="firstLine">이메일</th>
                    <td><input type="text" value="${cPage.email }" name="email" readonly></td>
                </tr>
                <tr>
                    <th class="firstLine">포인트</th>
                    <td><input type="text" value="${cPage.point }" name="point" readonly></td>
                </tr>   
                <tr>
                    <th class="firstLine">우편주소</th>
                    <td><input type="text" value="${cPage.post }" name="post" readonly></td>
                </tr>  
                <tr>
                    <th class="firstLine">상세주소</th>
                    <td><input type="text" value="${cPage.address }" name="address" readonly></td>
                </tr>  
                <c:if test="${cPage.proRename != null }">
                 <tr>
                    <th class="firstLine">프로필</th>
                    <td><img id="imagePreview1"style="width: 100px; height: 100px;" src="/projectFiles/${cPage.proRename }"></td>
                </tr>  
                </c:if>
                <c:if test="${cPage.proRename == null }">
                 <tr>
                    <th class="firstLine">프로필</th>
                    <td><img id="imagePreview1"style="width: 100px; height: 100px;" src="/projectFiles/profile.png"></td>
                </tr>  
                </c:if>
                <tr>
                    <th class="firstLine">마케팅</th>
                    <td><input type="text" value="${cPage.marketing }" name="marketing" id="marketing"></td>
                </tr>  
                 <tr>
                    <th class="firstLine">가입날짜</th>
                    <td><input type="text" value="${cPage.enrollDate }" name="enrollDate" readonly></td>
                </tr>  
                <tr>
                    <th class="firstLine">가입상태</th>
                    <td><input type="text" value="${cPage.status }" name="status" id="status"></td>
                </tr>  
            </table>
            

            <!--수정하기 뒤로 가기 버튼영역-->
            <div id="btnArea">
                <button type="button" onclick="validate();">수정하기</button>
                <button type="button" onclick="goBack();">뒤로가기</button>
            </div>


            <br><br><br><br><br><br>

    </div>

    </form>



    <script>

        function goBack(){
        	 location.href="javascript:history.go(-1)";
        }


    </script>
    <script>
    
    function readUploadImage1(inputObject){
        if(inputObject.files && inputObject.files[0]){
           if(!(/image/i).test(inputObject.files[0].type)){
              alert("이미지 파일을 선택해 주세요");
              return false;
           }
           
           var reader = new FileReader();
           
           reader.onload = function(e){
              $("#imagePreview1").attr("src", e.target.result);
           }
           reader.readAsDataURL(inputObject.files[0]);
        }        
   }
    </script>

	<script>
		<%if(msg != null){%>
			alert("회원정보 수정에 실패했습니다.");
		<%}%>
		</script>
		<script>
		
		function validate(){
			
	         var value1 = $("#nickName").val();
	         var reg1 = /^[a-zA-Z0-9가-힣ㄱ-ㅎ]{4,20}$/;
	         var value2 = $("#userName").val();
	         var reg2 = /^[가-힣]{2,4}$/;
	         var value3 = $("#status").val();
	         var reg3 = /^[N-NY-Y]{1}$/;
	         
	         if(!reg1.test(value1)){
	             alert("영문자와 숫자로 4글자 이상 20글자 이하여야 합니다.");
	             $("#nickName").focus().val('');
	             return false;
	         }else if(!reg2.test(value2)){
	             alert("한글 2~4글자");
	             $("#phone").focus().val('');
	             return false;
	         }else if(!reg3.test(value3)){
	             alert("주민번호 6자리");
	             $("#status").focus().val('');
	             return false;
	         }else{
	        	 $("#modi").submit();
	         }
	  
	}
	</script>
  

</body>
</html>