<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>의사에게 물어봐 - 상세게시글</title>
	<meta charset="UTF-8">
	<meta name="description" content="SolMusic HTML Template">
	<meta name="keywords" content="music, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="http://code.jquery.com/jquery.min.js"></script>
	
	<!-- Favicon -->
	<link href="<%=request.getContextPath()%>/resources/img/favicon.ico" rel="shortcut icon" />
	<!-- Font - Awesome -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap" rel="stylesheet">
	<!-- Stylesheets -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/slicknav.min.css" />
	
	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css" />

	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	
	<style>
		.updateReply, .deleteReply, .updateReplyForm, .updateCancelReply{
			background-color: #0071ce ! important;
			color: white ! important;
			margin-right: 5px ! important;
			width: 50px ! important;
			height: 30px ! important;
		}
		.popover{
			width: 150px;
		}
		.popover #popoverHide{
			float: right ! important;
			cursor : pointer;
		}
		.nameTd{
			cursor : pointer;
		}
	</style>
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	<!-- Header section -->
	<%@ include file="../static/header.jsp"%>
	<!-- Header section end -->

	<!-- detailAskDr -->
	<section class="my-5">
		<div class="container">
			<div class="form-group form-inline">
				<label class="col-lg-5">	<!--control-label-->
					&nbsp;&nbsp;
					<a href="askDr.do">의사에게 물어봐 > </a>
					&nbsp;&nbsp;
					<a href="askDrBoard.do?category=${categoryNo}&pageNo=1">${subject }</a> 					
				</label>
			</div>

			<br>
			<input id="AskDrBoardNo" type="hidden" value="${askDrBoardDetail.bNo }" />
			<div class="form-group form-inline">
				<label class="col-lg-3 col-sm-3 control-label">제목</label>
				<div class="col-lg-9 col-sm-9 control-label">${askDrBoardDetail.bTitle }</div>
			</div>
			<div class="form-group form-inline">
				<label class="col-lg-3 col-sm-3 control-label">작성자</label>
				<div class="col-lg-9 col-sm-9 control-label">${askDrBoardDetail.nickname }</div>
			</div>
			<div class="form-group form-inline">
				<label class="col-lg-3 col-sm-3 control-label">신체정보</label>
			</div>
			<div class="form-group form-inline">
				<label class="col-lg-3 col-sm-3 control-label">키</label>
				<div class="col-lg-9 col-sm-9 control-label">${askDrBoardDetail.height }</div>
			</div>
			<div class="form-group form-inline">
				<label class="col-lg-3 col-sm-3 control-label">몸무게</label>
				<div class="col-lg-9 col-sm-9 control-label">${askDrBoardDetail.weight }</div>
			</div>
			<div class="form-group form-inline">
				<label class="col-lg-3 col-sm-3 control-label">나이</label>
				<div class="col-lg-9 col-sm-9 control-label">${askDrBoardDetail.age } 세</div>
			</div>
			<div class="form-group form-inline">
				<label class="col-lg-3 col-sm-3 control-label">성별</label>
				<div class="col-lg-9 col-sm-9 control-label">${askDrBoardDetail.gender }</div>
			</div>
			<div class="form-group form-inline">
				<label class="col-lg-3 col-sm-3 control-label">복용중인 약 및 주의사항</label>
				<div class="col-lg-9 col-sm-9 control-label">${askDrBoardDetail.caution }</div>
			</div>
			<div class="form-group form-inline">
				<label class="col-lg-3 col-sm-3 control-label">구체적인 증상</label>
				<div class="col-lg-9 col-sm-9 control-label">
					${askDrBoardDetail.symptoms }
				</div>
			</div>
			<div class="form-group form-inline">
				<label class="col-lg-3 col-sm-3 control-label">사진</label>
				<div class="col-lg-9 col-sm-9 control-label">
				<c:if test="${!empty imageList}">
					<c:forEach var="imgs" items="${imageList }">
						<c:set var="fullPath" value="/projectFiles/${imgs.fileName }" />
						<img src="${fullPath}" style="width: 244px; height: 244px;" />
					</c:forEach>
				</c:if>
				<c:if test="${empty imageList}">
					해당 게시글에는 사진이 없습니다.
				</c:if>
				</div>
			</div>
			<div class="form-group form-inline">
				<label class="col-lg-3 col-sm-3 control-label"></label>
				<div id="btns" class="col-lg-9 col-sm-9 control-label my-3" align="right">
				<c:if test="${askDrBoardDetail.chooseStatus eq 'N' && empty loginDrClient && loginClient.nickName eq askDrBoardDetail.nickname }">
					<button id="updateAskDrBoard" 
						class="btn btn-sm" style="background-color: #0071ce; color:white;">수정하기</button>
					&nbsp;
					<button id="deleteAskDrBoard" 
						class="btn btn-sm" style="background-color: #0071ce; color:white;">삭제하기</button>
					&nbsp;
					<button id="chooseComplete" 
						class="btn btn-sm" style="background-color: #0071ce; color:white;">채택하기</button>
				</c:if>
				<c:if test="${askDrBoardDetail.chooseStatus eq 'Y' }">
				</c:if>
				</div>
			</div>	
			
			<div id="replyCountArea">
				<div class="form-group form-inline">
				<c:if test="${empty replys }">
					<label class="col-lg-4" style="font-size: 25px; color:black;">선생님들을 기다립니다!</label>
				</c:if>
				<c:if test="${!empty replys }">
					<label class="col-lg-4" style="font-size: 25px; color:black;">선생님들의 의견 (${fn:length(replys) })</label>
				</c:if>
				</div>
			</div>
			
			<div class="form-group form-inline">
				<div class="col-lg-12 col-sm-12 control-label">
					<table id="replyTable" class="table">
						<thead>
							<tr>
								<th colspan="2" style="width: 23%">선생님</th>
								<th style="width: 44%">내용</th>
								<th style="width: 15%">작성날짜</th>
								<th style="width: 18%; text-align:center;">채택상태</th>
							</tr>
						</thead>
						<c:if test="${!empty replys}">
						<tbody>
							<c:forEach var="replys" items="${replys}" varStatus="i">
							<tr>
								<td>
								<!-- 프사가 없을경우와 있을경우 조건 처리하기 -->
								<c:if test="${empty replys.profileRename }">
									<i class="fas fa-user-md fa-5x" style="color: #45668e;"></i>
								</c:if>
								<c:if test="${!empty replys.profileRename }">
									<c:set var="fullPath" value="/projectFiles/${replys.profileRename }" />
									<img class="rounded-circle" src="${fullPath }" style="width: 70px; height: 80px;" />
								</c:if>
								</td>
								<td class="nameTd">
									<input type="hidden" class="drNo" value="${replys.drClientNo }" />
									<div data-toggle="popover"
											data-html="true"
											title="
												<span>상세정보</span> 
												<a id='popoverHide'>
													<i class='fas fa-times fa-1x'></i>
												</a>"
											data-content="
												<a href='checkDrProfile.do?replyDrNo=${replys.drClientNo }'>선생님 프로필</a>
												<br>
												<a href='mainHpReviewDetail.do?hpNo=${replys.hpNo }'>${replys.hpName }</a>">
									${replys.drName}
									</div>
								</td>
								<td>
									${replys.content }
								</td>
								<td>
									${replys.replyDate}
								</td>
								<td style="text-align:center;" >
								<c:choose>
									<c:when test="${askDrBoardDetail.chooseStatus eq 'Y' && replys.chooseStatus eq 'Y' }">
										<i class="fas fa-check fa-3x" style="color: #4EC54B;"></i>
									</c:when>
									<c:when test="${askDrBoardDetail.chooseStatus eq 'Y' && replys.chooseStatus eq 'N' }">
									<!-- 공란 -->
									</c:when>
									<c:when test="${askDrBoardDetail.chooseStatus eq 'N' && loginClient.nickName eq askDrBoardDetail.nickname }">
										<input type="hidden" name="drClientNo" value="${replys.drClientNo }" />
										<input type="radio" class="chooseAnswer" name="chooseAnswer" value="${replys.adrNo }" />	
									</c:when>
									<c:when test="${askDrBoardDetail.chooseStatus eq 'N' && loginClient.nickName ne askDrBoardDetail.nickname && loginDrClient.drNo eq replys.drClientNo }">
										<button class="btn btn-sm updateReplyForm" type="button">
											수정
										<input type="hidden" name="adrNo" value="${replys.adrNo }" />
										</button>
										<button class="btn btn-sm deleteReply" type="button">
											삭제
											<input type="hidden" name="adrNo" value="${replys.adrNo }" />
										</button>
									</c:when>
									<c:when test="${askDrBoardDetail.chooseStatus eq 'N' && loginClient.nickName ne askDrBoardDetail.nickname && loginDrClient.drNo ne replys.drClientNo }">
									<!-- 공란 -->
									</c:when>
								</c:choose>
								</td>
							</tr>
							</c:forEach>
						</tbody>
						</c:if>
						
						<c:if test="${empty replys}">
						<tbody>
							<tr>
								<td colspan="5" style="text-align: center;">
									선생님들의 답변이 없습니다!
								</td>
							</tr>
						</tbody>
						</c:if>
					</table>
				</div>
			</div>
			<c:choose>
			<c:when test="${!empty loginDrClient && askDrBoardDetail.chooseStatus eq 'N'}">
			<div class="form-group form-inline">
				<div class="col-lg-12 col-sm-12 control-label">
					<form>
						<textarea id="content" rows="2" style="width: 100%;"></textarea>
						<div align="right">
							<button id="insertReply" class="btn btn-sm" type="button"
							style="background-color: #0071ce; color:white;">작성하기</button>
						</div>
					</form>
				</div>
			</div>
			</c:when>
			<c:otherwise>
			</c:otherwise>
			</c:choose>
		</div>
	</section>
	<!-- detailAskDoctor end -->

	<!-- Footer section -->
	<%@ include file="../static/footer.jsp"%>
	<!-- Footer section end -->
	<!--====== Javascripts & Jquery ======-->
	<script src="http://code.jquery.com/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/jquery.slicknav.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/mixitup.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>
	<script>
		$(function(){
			$(document).on('click', 'td div', function(){
				$("[data-toggle='popover']").popover();				
			});
			
			$(document).on("click", "#popoverHide", function(){
				$("[data-toggle='popover']").popover('hide');
			});
			
			$("#deleteAskDrBoard").on("click", function(){
				if(confirm("해당 게시글을 삭제하시겠습니까? 채택된 게시글은 삭제할 수 없습니다.")){
					var $bNo = $("#AskDrBoardNo").val();
					var $deleteForm = $("<form></form>");
					$deleteForm.attr("action", "askDrBoardDelete.do");
					$deleteForm.attr("method", "post");
					$deleteForm.append($("<input/>", {type: "hidden", name: "bNo", value: $bNo}));
					$(document.body).append($deleteForm);
					$deleteForm.submit();
				}
				else{
					return false;
				}
			});
			
			$("#updateAskDrBoard").on("click", function(){
				var $bNo = $("#AskDrBoardNo").val();
				var $updateForm = $("<form></form>");
				$updateForm.attr("action", "askDrBoardUpdateForm.do");
				$updateForm.attr("method", "post");
				$updateForm.append($("<input/>", {type: "hidden", name: "bNo", value: $bNo}));
				$(document.body).append($updateForm);
				$updateForm.submit();
			});
		
			$(document).on("click", '#chooseComplete', function(){
				if( $("#replyTable tbody tr").length === 1 && $('input[name="chooseAnswer"]').length === 0){
					alert("아직 답변이 없습니다.");
				}
				else if($('input[name="chooseAnswer"]:checked').length === 0 ){
					alert("채택할 답변을 선택해주세요!");
				}
				else{
					if(confirm("해당 답변을 채택하시겠습니까?")){
			        	var bNo = $("#AskDrBoardNo").val();
						var adrNo = $('input[name="chooseAnswer"]:checked').val();
						var cNo = "${loginClient.cNo}";
						var drNo = $('input[name="chooseAnswer"]:checked').prev().val();
						
						$.ajax({
							type : 'POST',
							data : {
								bNo : bNo,
								adrNo : adrNo,
								cNo : cNo,
								drNo : drNo
							},
							url : 'chooseAnswer.do',
							error:function(request, status, errorData){
			                    alert("error code: " + request.status + "\n"
			                            +"message: " + request.responseText
			                            +"error: " + errorData);
			               	},           
						    success: function(data) {
						    	if(data === "success"){
						    		alert("채택 완료되었습니다. 회원님과 답변이 채택된 의원님께 50포인트 지급되었습니다.");
						    		getReplyList();
						    	}
							}
						});
			        }
			        else{
			        	return false;
			        }	
				}
			});  /*end of chooseComplete*/
			
			$(document).on("click", "#insertReply", function(){
				var drArray = new Array();
				$(".drNo").each(function(){
					drArray.push($(this).val());
				});
				
				if(confirm("답변을 등록하시겠습니까?")){
					var flag = true;
					for(var i in drArray){
						if(drArray[i] === "${loginDrClient.drNo}"){
							flag = false;
							break;
						}
					}
					
					if(!flag){
						$("#content").val('');
						alert("선생님은 이미 답변을 작성하셨습니다. 수정 및 삭제를 이용해주세요.");
					}
					else{
						var insertForm = {
							drClientNo : "${loginDrClient.drNo}",
							content : $("#content").val(),
							bNo : "${askDrBoardDetail.bNo}"
						};
							
						if(insertForm.content !== ""){
							$.ajax({
							    type: 'POST',
							    data:  insertForm,
							    url:  'insertAskDrBoardReply.do',
							    error:function(request, status, errorData){
				                    alert("error code: " + request.status + "\n"
				                            +"message: " + request.responseText
				                            +"error: " + errorData);
				               	},           
							    success: function(data) {
							    	if(data === "success"){
							    		getReplyList();
							    	}
								}    
							});
						}
						else{
							alert("답변을 입력해주세요!");
							return false;
						}
					}
				}
				else{
					return false;
				}
				
			});
			
			function getReplyList(){
				var bNo = ${askDrBoardDetail.bNo};
				$.ajax({
				    type: 'GET',
				    dataType: 'JSON',
				    data:  {bNo : bNo},
				    url:  'selectAskDrBoardReply.do',
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
				var $replyCountArea = $("#replyCountArea");
				$replyCountArea.html('');
				var $divClassOne = $("<div class='form-group form-inline'></div>");
				var $labelOne;
				
				if(list.length === 0){
					$labelOne = $("<label class='col-lg-4' style='font-size: 25px; color:black;'>선생님들을 기다립니다!</label>");
				}
				else{
					$labelOne = $('<label class="col-lg-4" style="font-size: 25px; color:black;"></label>');
					var countList = list.length;
					$labelOne.text("선생님들의 의견 (" + countList + ")");
				}
				
				$divClassOne.append($labelOne);
				$replyCountArea.append($divClassOne);
				
				var $tableBody = $("#replyTable tbody");
				$tableBody.html("");
				
				if(list.length === 0){
					var $emptyTr = $("<tr></tr>");
					var $emptyTd = $("<td colspan='5' style='text-align: center;'></td>");
					$emptyTd.text("선생님들의 답변이 없습니다!");
					$emptyTr.append($emptyTd);
					$tableBody.append($emptyTr);
				}
				else{
					for(var i = 0; i < list.length; i++){
						var $tr = $("<tr></tr>");
						var $tdOne = $("<td></td>");
						if(list[i].profileRename === undefined){
							var $icon = ('<i class="fas fa-user-md fa-5x" style="color: #45668e;"></i>');
							$tdOne.append($icon);
						}
						else{
							var $profile = ('<img class="rounded-circle" src="/projectFiles/' + list[i].profileRename + '" style="width: 70px; height: 80px;" />');
							$tdOne.append($profile);
						}
						var $tdTwo = $("<td class='nameTd'></td>");
						var $inputDrno = $('<input type="hidden" class="drNo" />');
						$inputDrno.val(list[i].drClientNo);
						var $tdTwoInDiv = $('<div data-toggle="popover" data-html="true"></div>');
						$tdTwoInDiv.attr("title", "<span>상세정보</span><a id='popoverHide'><i class='fas fa-times fa-1x'></i></a>");
						$tdTwoInDiv.attr("data-content", "<a href='checkDrProfile.do?replyDrNo=" + list[i].drClientNo + "'>선생님 프로필</a><br><a href='mainHpReviewDetail.do?hpNo=" + list[i].hpNo + "'>" + list[i].hpName + "</a>");
						
						$tdTwoInDiv.text(list[i].drName);
						$tdTwo.append($inputDrno);
						$tdTwo.append($tdTwoInDiv);
						
						var $tdThree = $("<td></td>");
						$tdThree.text(list[i].content);
						
						var $tdFour = $("<td></td>");
						$tdFour.text(list[i].replyDate);
						
						var $tdFive = $("<td style='text-align:center;'></td>");
						if(list[i].chooseStatus === 'N' && list[i].drClientNo !== "${loginDrClient.drNo}"){
							//$tdFive.text("채택대기");
						}
						else if(list[i].chooseStatus === 'N' && list[i].drClientNo === "${loginDrClient.drNo}"){
							var $btnOne = $('<button class="btn btn-sm updateReplyForm" type="button"></button>');
							$btnOne.text('수정');
							var $inputOne = $('<input type="hidden" name="adrNo" />');
							$inputOne.val(list[i].adrNo);
							$btnOne.append($inputOne);
							
							var $btnTwo = $('<button class="btn btn-sm deleteReply" type="button"><input type="hidden" name="adrNo" value="list[i].adrNo" />삭제</button>');
							$btnTwo.text('삭제');
							var $inputTwo = $('<input type="hidden" name="adrNo" />');
							$inputTwo.val(list[i].adrNo);							
							$btnTwo.append($inputTwo);
							
							$tdFive.append($btnOne);
							$tdFive.append($btnTwo);
						}
						
						else if(list[i].chooseStatus === 'Y'){
							var $icon = $('<i class="fas fa-check fa-3x" style="color: #4EC54B;"></i>');
							$tdFive.append($icon);
							$("#btns").html('');
						}
						
						$tr.append($tdOne);
						$tr.append($tdTwo);
						$tr.append($tdThree);
						$tr.append($tdFour);
						$tr.append($tdFive);
						$tableBody.append($tr);
					}
				}
				$("#content").val('');
			}
						
			$(document).on("click", ".updateReplyForm", function(){
				var $replyText = $(this).parent().prev().prev().text().trim();
				var $adrNo = $(this).children("input[type='hidden']").val();
				
				$(this).parent().prev().prev().text('');
				var $updateTextarea = $('<textarea></textarea>');
				$updateTextarea.val($replyText);
				$(this).parent().prev().prev().append($updateTextarea);
				
				$(this).parent().children('button').hide();
				var $updateCompleteBtn = $('<button class="btn btn-sm updateReply" type="button"></button>');
				var $inputNo = $('<input type="hidden" />');
				var $inputText = $('<input type="hidden" class="returnText" />');
				$inputNo.attr("value", $adrNo);
				$inputText.attr("value", $replyText);
				$updateCompleteBtn.text("완료");
				$updateCompleteBtn.append($inputNo);
				$updateCompleteBtn.append($inputText);
				
				var $updateCancelBtn = $('<button class="btn btn-sm updateCancelReply" type="button"></button>');
				$updateCancelBtn.text("취소");
				$(this).parent().append($updateCompleteBtn);
				$(this).parent().append($updateCancelBtn);
			});
			
			$(document).on("click", ".updateCancelReply", function(){
				$returnText = $(this).prev().children('.returnText').val();
				$(this).parent().prev().prev().children().remove('textarea');
				$(this).parent().prev().prev().text($returnText);
				$(this).parent().children('button').toggle();
				$(this).parent().children('.updateReply').remove();
				$(this).parent().children('.updateCancelReply').remove();
			});

			$(document).on("click", ".updateReply", function(){
				var adrNo = $(this).children("input[type='hidden']").val();
				var content = $(this).parent().prev().prev().children('textarea').val();
				
				var updateForm = {
					adrNo : adrNo,
					content : content
				};
				
				if(confirm("해당 답변을 수정하시겠습니까?")){
					if(updateForm.content !== ""){
						$.ajax({
						    type: 'POST',
						    data:  updateForm,
						    url:  'updateAskDrBoardReply.do',
						    error:function(request, status, errorData){
			                    alert("error code: " + request.status + "\n"
			                            +"message: " + request.responseText
			                            +"error: " + errorData);
			               	},                    
						    success: function(data) {
						    	if(data === "success"){
						    		getReplyList();
						    	}
							}    
						});
					}
					else{
						alert("내용을 입력해주세요!");
						return false;
					}
				}
				else{
					return false;
				}
			});
			
			$(document).on("click", ".deleteReply", function(){
				var adrNo = $(this).children("input[type='hidden']").val();
				if(confirm("해당 답변을 삭제하시겠습니까?")){
					$.ajax({
						type: 'POST',
					    data: {adrNo : adrNo},
					    url:  'deleteAskDrBoardReply.do',
					    error:function(request, status, errorData){
		                    alert("error code: " + request.status + "\n"
		                            +"message: " + request.responseText
		                            +"error: " + errorData);
		               	},                    
					    success: function(data) {
					    	if(data === "success"){
					    		getReplyList();
					    	}
						}    
					});
				}
				else{
					return false;
				}
			});

		});	//end of jquery
	</script>
</body>
</html>
















