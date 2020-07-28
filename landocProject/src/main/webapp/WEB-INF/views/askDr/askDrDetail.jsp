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
					<c:url var="askDrBoard" value="askDrBoard.do">
						<c:param name="category" value="${askDrBoardDetail.categoryNo }" />
						<c:param name="pageNo" value="1" />					
					</c:url>
					<a href="${askDrBoard}">${subject }</a> 					
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
					'해당 게시글에는 사진이 없습니다.'
				</c:if>
				</div>
			</div>
			<div class="form-group form-inline">
				<label class="col-lg-3 col-sm-3 control-label"></label>
				<div class="col-lg-9 col-sm-9 control-label my-3" align="right">
				<c:if test="${askDrBoardDetail.chooseStatus eq 'N' }">
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
			
			<div class="form-group form-inline">
			<c:if test="${empty replys }">
				<label class="col-lg-4" style="font-size: 25px; color:black;">선생님들을 기다립니다!</label>
			</c:if>
			<c:if test="${!empty replys }">
				<label class="col-lg-4" style="font-size: 25px; color:black;">선생님들의 의견 (${fn:length(replys) })</label>
			</c:if>
			</div>
			<div class="comment">
				<div class="form-group form-inline">
					<div class="col-lg-12 col-sm-12 control-label">
						<table class="table">
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
										<img class="rounded-circle" src="#" style="width: 70px; height: 80px;" />
									</c:if>
									</td>
									<td>
										<div data-toggle="popover" data-html="true" title="선생님 정보" data-content="<a href='#'>프로필</a> <br> <a href='#'>여기는 병원이름</a>">
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
									<c:if test="${replys.chooseStatus eq 'N' && !empty loginDrClient && empty loginClient }">
										채택대기
									</c:if>
									<c:if test="${replys.chooseStatus eq 'N' && empty loginDrClient && !empty loginClient && askDrBoardDetail.chooseStatus eq 'N'}">
										<input type="hidden" name="drClientNo" value="${replys.drClientNo }" />
										<input type="radio" class="chooseAnswer" name="chooseAnswer" value="${replys.adrNo }" />
									</c:if>
									<!-- 게시글의 답변완료 상태에 따라 수정해줘야함 -->
									<c:if test="${replys.chooseStatus eq 'Y' && askDrBoardDetail.chooseStatus eq 'Y'}">
										<i class="fas fa-check fa-3x" style="color: #4EC54B;"></i>
									</c:if>
									<c:if test="${replys.chooseStatus eq 'N' && askDrBoardDetail.chooseStatus eq 'Y'}"></c:if>
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
				<div class="form-group form-inline">
					<!--login-->
					<div class="col-lg-12 col-sm-12 control-label">
						<form action="">
							<textarea rows="2" style="width: 100%;"></textarea>
							<div align="right">
								<button class="btn btn-sm" type="submit"
									style="background-color: #0071ce; color:white;">작성하기</button>
							</div>
						</form>
					</div>
				</div>
			</div>
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
			$("[data-toggle='popover']").popover();
			
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
		
			$("#chooseComplete").on("click", function(){
				if(confirm("해당 답변을 채택하시겠습니까?")){
		        	var $bNo = $("#AskDrBoardNo").val();
					var $adrNo = $('input[name="chooseAnswer"]:checked').val();
					var $chooseForm = $("<form></form>");
					$chooseForm.attr("action", "chooseAnswer.do");
					$chooseForm.attr("method", "post");
					$chooseForm.append($("<input/>", {type: "hidden", name: "bNo", value: $bNo}));
					$chooseForm.append($("<input/>", {type: "hidden", name: "adrNo", value: $adrNo}));
					$(document.body).append($chooseForm);
					$chooseForm.submit();
		        }
		        else{
		        	return false;
		        }
			});
		});	//end of jquery
	</script>
</body>

</html>