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
        #contentArea{position: absolute; left: 300px; top: 20px; width: 78%; height: 100%;}
        #contentArea h3{padding-bottom: 2%; text-align:center;}
        
        /*오른쪽 영역 table*/
        #contentArea h3{padding-bottom: 2%; text-align:center;}
        .contentTb{margin: 0 auto; margin-top: 2%; width: 80%; text-align:center; border: 2px solid #bbb; border-collapse: collapse;}
        .contentTb tr{line-height: 40px;}
        .contentTb th{width:400px; border-bottom: 2px solid #bbb; border-right: 1px solid #bbb; font-size:13px;}
        .contentTb td{width:600px; border: 1px solid #bbb; font-size:14px;}
        .contentTb button{height: 35px; width: 55%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
        .contentTb button:hover{background-color: #007ee5; color: white;}
      	.contentTb input{width:95%; border:none;}

      /* 수정하기, 뒤로가기 버튼*/
        #btnArea{text-align: center; padding-top: 45px;}
        #btnArea button{height: 40px; width: 15%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600; font-size:15px;}
        #btnArea button:hover{background-color: #007ee5; color: white;}
        
        /* td  */
        td>button {
            width: 300px;
        }

        /* textarea */
        textarea {
            width: 80%;
        }

        /* goBackBtnArea */
        .goBackBtnArea{text-align:center; padding-top:5%;}
        .goBackBtnArea button{height: 40px; width: 15%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600; font-size:15px;}
		.goBackBtnArea button:hover{background-color: #007ee5; color: white;}

   </style>

</head>
<body>
   
    <jsp:include page="../../common/adminSide.jsp"/>
   
    <!--여기서 부터 왼쪽 영역 contentArea-->
    <div id="contentArea">
        <h3>의사에게 물어봐 상세</h3>

        <!--테이블 부분-->
        <table class="contentTb">
        	<tr>
                <th class="firstLine">번호</th>
                <td>${post.adNo }</td>
            </tr>
            <tr>
                <th class="firstLine">제목</th>
                <td>${post.title }</td>
            </tr>
            <tr>
                <th class="firstLine">작성자</th>
                <td>${post.nickname }</td>
            </tr>
            <tr>
                <th class="firstLine">주의사항</th>
                <td>${post.caution }</td>
            </tr>
            <tr>
                <th class="firstLine">증상</th>
                <td>${post.symptom }</td>
            </tr>
            <tr>
                <th class="firstLine">채택상태</th>
                <td>${post.chooseStatus }</td>
            </tr>
        </table>

        <!-- 댓글들 불러오기 -->
        <div id="commentArea">
           <br><br>
            <h3>댓글 목록</h3>
			
            <!--테이블 부분-->
            <table class="contentTb">
                <thead>
	                <tr>
	                    <th class="firstLine">선생님</th>
	                    <th class="firstLine">내용</th>
	                    <th class="firstLine">작성날짜</th>
	                    <th class="firstLine"></th>
	                </tr>
                </thead>
	            
	            <tbody id="replyBody">
	            <c:forEach var="replys" items="${post.replys }">
	            	<c:if test="${replys.adrNo eq 0}">
	                	<c:if test="${not breakLoop }">
		            <tr>
		            	<td colspan='4'>댓글이 존재하지 않습니다.</td>
	                </tr>
						<c:set var="breakLoop" value="true" />	                	
	                	</c:if>
	            	</c:if>
	            	<c:if test="${replys.adrNo ne 0 }">
	                <tr>
	                    <td class="adrNoClass">
	                    	${replys.drName }
	                    	<input type="hidden" value="${replys.adrNo }" />
	                    </td>
	                    <td>${replys.content }</td>
	                    <td>${replys.replyDate }</td>
	                    <td>
	                        <button class="goDelete" type="button">삭제하기</button>
	                    </td>
	                </tr>
	            	</c:if>
                </c:forEach>    	
				</tbody>
            </table>
        </div>
      
   
        <div class="goBackBtnArea">
            <button type="button" onclick="goBack();">뒤로가기</button>
        </div>


        <br><br><br><br><br><br>
    </div>
    
    
    <script>
        function goBack() {
            //location.href="askDrManage.do?pageNo=" + ${pageNo};
            window.history.back();
        }
		
		$(function(){
	        /* // 테이블 한 줄 hover효과 주는 function
	        $("#contentTb td").mouseenter(function () {
	            $(this).parent().css({ "background": "lightgrey" });
	        }).mouseout(function () {
	            $(this).parent().css({ "background": "white" });
	        }); */
			
	        $(document).on('click', '.goDelete', function(){
	        	if(confirm("해당 댓글을 삭제하시겠습니까?")){
	        		var adrNo = $(this).parent().siblings(".adrNoClass").children("input").val();
	        		
	        		$.ajax({
	        			type:'post',
	        			data:{adrNo : adrNo},
	        			url:'deleteAdminAskDrReply.do',
	        			error:function(request, status, errorData){
		                    alert("error code: " + request.status + "\n"
		                            +"message: " + request.responseText
		                            +"error: " + errorData);
		               	},
	        			success:function(data){
	        				if(data === "success"){
	        					getReplyList();
	        				}
	        			}
	        		});	//end of ajax
	        	}
	        	else{
	        		return false;
	        	}
	        });	//end of deleteReply
	        
	        function getReplyList(){
	        	var adNo = ${post.adNo};
				$.ajax({
				    type: 'GET',
				    dataType: 'JSON',
				    data:  {adNo : adNo},
				    url:  'getReplyList.do',
				    error:function(request, status, errorData){
	                    alert("error code: " + request.status + "\n"
	                            +"message: " + request.responseText
	                            +"error: " + errorData);
	               	},                    
				    success: function(list) {
				    	selectReplyList(list);
					}    
				});
	        }
	        
	        function selectReplyList(list){
	        	var $replyBody = $("#replyBody");
	        	$replyBody.html('');
	        	
	        	if(list.length == 0){
	        		var $tr = $("<tr></tr>");
	        		var $td = $("<td colspan='4'></td>");
	        		$td.text('댓글이 존재하지 않습니다.');
					$tr.append($td);
					$replyBody.append($tr);
	        	}
	        	else{
	        		for(var i = 0; i < list.length; i++){
	        			var $tr = $('<tr></tr>');
	        			
	        			var $tdOne = $('<td></td>');
	        			$tdOne.attr("class", "adrNoClass");
	        			$tdOne.text(list[i].drName);
	        			var $input = $("<input type='hidden' />");
	        			$input.val(list[i].adrNo);
	        			$tdOne.append($input);
	        			
	        			var $tdTwo =  $('<td></td>');
	        			$tdTwo.text(list[i].content);
	        			
	        			var $tdThree =  $('<td></td>');
	        			$tdThree.text(list[i].replyDate);
	        			
	        			var $tdFour =  $('<td></td>');
	                    var $tdFourBtn = $('<button class="goDelete" type="button"></button>');
	                    $tdFourBtn.text('삭제하기');
	                    $tdFour.append($tdFourBtn);
	                    
	                   	$tr.append($tdOne);
	                   	$tr.append($tdTwo);
	                   	$tr.append($tdThree);
	                   	$tr.append($tdFour);
	                   	
	                   	$replyBody.append($tr);
	        		}
	        	}
	        }
		});


    </script>
</body>
</html>