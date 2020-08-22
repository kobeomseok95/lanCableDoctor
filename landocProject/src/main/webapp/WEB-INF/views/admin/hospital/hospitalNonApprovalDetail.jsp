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
        #contentArea{position: absolute; left: 300px; top: 20px; width: 78%; height: 100%;}
        #contentArea h3{padding-bottom: 2%; text-align:center;}
        

        /*오른쪽 영역 table*/
        #contentTb{margin: 0 auto; margin-top: 2%; width: 80%; text-align:center; border: 2px solid #bbb; border-collapse: collapse;}
        #contentTb tr{line-height: 40px;}
        #contentTb th{border-bottom: 2px solid #bbb; border-right: 1px solid #bbb; font-size:13px;}
        #contentTb td{width: auto; border: 1px solid #bbb; font-size:14px; text-align: center;}
        #contentTb button{height: 35px; width: 55%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
        #contentTb button:hover{background-color: #007ee5; color: white;}
      #contentTb input{width:95%; border:none;}
      
      /* #categoryCode{width:98%; height:40px; font-size:18px;margin:0} 이거 한사람 누구야?*/
      #volumn, #categoryCode {width:30%; height:25px; font-size:15px;}
      #contentTb input[type=file]{height:50px;}

        /* textarea */
        textarea {width: 80%;}
        .btnArea button{float: right;}
        
         /* 수정하기, 뒤로가기 버튼*/
        #btnArea{text-align: center; padding-top: 45px;}
        #btnArea button{height: 40px; width: 15%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600; font-size:15px;}
        #btnArea button:hover{background-color: #007ee5; color: white;}
   </style>

</head>
<body>
   
   <jsp:include page="../../common/adminSide.jsp"/>

    <!--여기서 부터 왼쪽 영역 contentArea-->
    <div id="contentArea">
        <h3>신규 상품 추가</h3>

        <!--테이블 부분-->
           <table id="contentTb">
               <tr>
                   <th class="firstLine">병원 고유 번호</th>
                   <td id="hpNo">${hospital.hpNo }</td>
               </tr>
               <tr>
                   <th class="firstLine">병원 이름</th>
                   <td>
                       	${hospital.hpName }
                   </td>
               </tr>
               <tr>
                   <th class="firstLine">병원 진료과목</th>
                   <td>
                   <c:forEach var="cates" items="${hospital.categories }" varStatus="status">
                   		<c:if test="${!status.last }">
                   			<c:out value="${cates.categoryName }, " />
                   		</c:if>
                   		<c:if test="${status.last }">
                   			<c:out value="${cates.categoryName }" />
                   		</c:if>
                   </c:forEach>
                   </td>
               </tr>
               <tr>
                   <th class="firstLine">병원 전화번호</th>
                   <td>
                       	${hospital.hpPhone }
                   </td>
               </tr>
               <tr>
                   <th class="firstLine">병원 우편번호</th>
                   <td>
					   ${hospital.postCode }
                   </td>
               </tr>
               <tr>
                   <th class="firstLine">병원 주소</th>
                   <td>
                       ${hospital.address }
                   </td>
               </tr>
               <tr>
                   <th class="firstLine">병원 등록 신청자 성함</th>
                   <td>
                        ${hospital.applicant.applicantName }
                   </td>
               </tr>
               <tr>
                   <th class="firstLine">병원 등록 신청자 전화번호</th>
                   <td>
                        ${hospital.applicant.applicantPhone }
                   </td>
               </tr>
               <tr>
               	<th class="firstLine">병원 등록 신청자 이메일</th>
	               	<td id="aEmail">
                        ${hospital.applicant.applicantEmail }
	               	</td>
               </tr>
               <tr>
                   <th class="firstLine">병원 등록신청자 사업자등록증</th>
                   <td>
	                   	<c:set var="brImg" value="/projectFiles/${br }" />
	               		<img src="${brImg }" style="width: 75%;" />
                   </td>
               </tr>
               <tr>
                   <th class="firstLine">병원 등록신청자 신분증</th>
                   <td>
	                   	<c:set var="idImg" value="/projectFiles/${id }" />
	               		<img src="${idImg }" style="width: 75%;" />
                   </td>
               </tr>
               <tr>
                   <th class="firstLine">병원 등록신청자 의사면허증</th>
                   <td>
	                   	<c:set var="dlImg" value="/projectFiles/${dl }" />
	               		<img src="${dlImg }" style="width: 75%;" />
                   </td>
               </tr>
           </table>
           <div id="btnArea">
               <button type="button" id="approval">승인</button>
               <button type="button" id="reject">거절</button>
               <button type="button" onclick="location.href='javascript:history.back();'">뒤로가기</button>
           </div>
               
        <br><br><br><br><br><br>
    </div>


     <script>
     	$(function(){
	        // 테이블 한 줄 hover효과 주는 function
	        $("#contentTb td").mouseenter(function () {
	            $(this).parent().css({ "background": "lightgrey" });
	        }).mouseout(function () {
	            $(this).parent().css({ "background": "white" });
	        });
			
	        $("#approval").on('click', function(){
	        	let hpNo = $("#hpNo").text();
				
	        	if(confirm("해당 병원을 등록하시겠습니까?")){
	        		var $form = $('<form action="approveHospital.do" method="POST"></form>');

	        		var $inputOne = $('<input type="hidden" name="hpNo" />');
	        		$inputOne.attr('value', hpNo);
	        		
	        		var $inputTwo = $('<input type="hidden" name="aEmail" />');
	        		$inputTwo.attr('value', "${hospital.applicant.applicantEmail }");
	        		
	        		$form.append($inputOne);
	        		$form.append($inputTwo);
	        		
	        		$('body').append($form);
	        		$form.submit();
	        		
	        		alert("등록 완료되었습니다.");
	        	}
	        	else{
	        		return false;
	        	}
	        });
	        
	        $("#reject").on('click', function(){
	        	let hpNo = $("#hpNo").text();
				
	        	if(confirm("해당 병원을 등록거부하시겠습니까?")){
	        		var $form = $('<form action="rejectHospital.do" method="POST"></form>');
	        		
	        		var $inputOne = $('<input type="hidden" name="hpNo" />');
	        		$inputOne.attr('value', hpNo);
	        		
	        		var $inputTwo = $('<input type="hidden" name="aEmail" />');
	        		$inputTwo.attr('value', "${hospital.applicant.applicantEmail }");
	        		
	        		var $inputThree = $('<input type="hidden" name="br" />');
	        		$inputThree.attr('value', "${br}");
	        		
	        		var $inputFour = $('<input type="hidden" name="id" />');
	        		$inputFour.attr('value', "${id}");
	        		
	        		var $inputFive = $('<input type="hidden" name="dl" />');
	        		$inputFive.attr('value', "${dl}");

	        		$form.append($inputOne);
	        		$form.append($inputTwo);
	        		$form.append($inputThree);
	        		$form.append($inputFour);
	        		$form.append($inputFive);
	        		
	        		$('body').append($form);
	        		$form.submit();
	        		
	        		alert("등록 거부 완료되었습니다.")
	        	}
	        	else{
	        		return false;
	        	}
	        });
     	});	//end of jquery
    </script>
	

</body>

</html>