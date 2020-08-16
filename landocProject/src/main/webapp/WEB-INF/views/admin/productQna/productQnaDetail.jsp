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
      #contentTb select{width:33%; height:40px; font-size:18px;}
      #contentTb input[type=file]{height:50px;}

       /* 수정하기, 뒤로가기 버튼*/
        #btnArea{text-align: center; padding-top: 45px;}
        #btnArea button{height: 40px; width: 15%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600; font-size:15px;}
        #btnArea button:hover{background-color: #007ee5; color: white;}
    
         /* td  */
        td > button {width: 300px;}

        /* textarea */
        textarea {width: 95%;}
		.styleHd	{display: none;}
</style>
</head>
<body>

   <jsp:include page="../../common/adminSide.jsp"/>

    <!--여기서 부터 왼쪽 영역 contentArea-->
    <div id="contentArea">
        <h3>상품 QnA</h3>

        <!--테이블 부분-->
        
		 <table id="contentTb">
		     <tr>
		         <th class="firstLine">번호</th>
		         <td id="pdqNo">${qna.pdqNo }</td>
		     </tr>
		     <tr>
		         <th class="firstLine">제목</th>
		         <td>${qna.title }</td>
		     </tr>
		     <tr>
		         <th class="firstLine">상품명</th>
		         <td>${qna.pdName }</td>
		     </tr>
		     <tr>
		         <th class="firstLine">작성자</th>
				<td>
				<c:if test="${empty qna.cNo && !empty qna.drNo }">
				${qna.drName }(의사)
				</c:if>
				<c:if test="${!empty qna.cNo && empty qna.drNo }">
				${qna.cNickname }
				</c:if> 
				</td>
		     </tr>
		     <tr>
		         <th class="firstLine">내용</th>
		         <td>${qna.content }</td>
		     </tr>
		     <tr>
		     <c:if test="${qna.status eq 'N' }"> 
		         <th class="firstLine">답변할 내용</th>
		         <td>
					<form action="answerQna.do" method="POST">
						<input name="pdqNo" type="hidden" value="${qna.pdqNo }" />
		            	<textarea name="answerContent" rows="5"></textarea>
		            </form>
		         </td>
		     </c:if>
		     <c:if test="${qna.status eq 'Y' }">
				<th class="firstLine">답변한 내용</th>
				<td>
					<div id="answerContent" class="toggles">
						${qna.answerContent }
					</div>
					<form class="styleHd toggles" action="answerQna.do" method="POST">
						<input name="pdqNo" type="hidden" value="${qna.pdqNo }" />
		            	<textarea name="answerContent" rows="5">${qna.answerContent }</textarea>
		            </form>
				</td>
		     </c:if>
		     </tr>
		      
		 </table>
            
        <div id="btnArea">
		<c:if test="${qna.status eq 'N' }">
		    <button type="button" id="answerQna">답변제출</button>
		</c:if>
		<c:if test="${qna.status eq 'Y' }">
			<button type="button" id="modifyAnswer" class="toggles">답변수정</button>
			<button type="button" id="answerQna" class="styleHd toggles">수정하기</button>
			<button type="button" id="answerCancel" class="styleHd toggles">수정취소</button>
		</c:if>
		    <button type="button" id="goBack" class="toggles" onclick="location.href='javascript:history.back();'">뒤로가기</button>
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
			
	        $("#answerQna").on('click', function(event){
	        	event.preventDefault();
	        	var content = $('textarea[name="answerContent"]').val();
	        	
	        	if( content.length === 0 || content.replace( /(\s*)/g, "").length === 0 ){
	        		alert("공백 답변은 제출할 수 없습니다.");
	        		return false;
	        	}
	        	
	        	if(confirm("답변을 제출하시겠습니까?")){
	        		$('form').submit();
	        		alert("답변 완료되었습니다.");
	        	}
	        	else{
	        		return false;
	        	}
	        });
	        
	        $("#modifyAnswer").on('click', function(){
	        	$('.toggles').each(function(index, item){
	        		if( $(this).hasClass('styleHd') === true ){
	        			$(this).removeClass('styleHd');
	        		}
	        		else{
	        			$(this).addClass('styleHd');
	        		}
				});
	        });
	        
        	$("#answerCancel").on('click', function(){
        		$('.toggles').each(function(index, item){
	        		if( $(this).hasClass('styleHd') === true ){
	        			$(this).removeClass('styleHd');
	        		}
	        		else{
	        			$(this).addClass('styleHd');
	        		}
				});
	        });
        });	//end of jquery


    </script>


</body>
</html>