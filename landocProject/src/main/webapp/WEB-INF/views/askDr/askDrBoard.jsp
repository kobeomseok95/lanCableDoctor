<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>의사에게 물어봐</title>
<meta charset="UTF-8">
<meta name="description" content="SolMusic HTML Template">
<meta name="keywords" content="music, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Favicon -->
<link href="<%=request.getContextPath()%>/resources/img/favicon.ico"
	rel="shortcut icon" />

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap"
	rel="stylesheet">
<!-- Stylesheets -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/slicknav.min.css" />

<!-- Main Stylesheets -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/style.css" />


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

	<!-- Playlist section -->
	<section class="premium-section spad" style="padding-bottom: 150px;">
		<div class="container">
			<c:if test="${boardStatus eq 1}">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="mb-5" style="font-size: 50px; text-align: center;">
						${subject }</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<form id="askDrSearchForm" 
					action="askDrBoardSearch.do" method="get">
						<input type="hidden" name="category" value="${categoryNo }" />
						<input type="hidden" name="pageNo" value="1" />
						<div class="form-row">
							<div class="col-lg-1 col-sm-1"></div>
							<div class="col-lg-3 col-sm-3">
								<select name="searchBoardOption"
									class="form-control form-control-sm"
									style="width: 100%;">
									<option value="0">제목</option>
									<option value="1">내용</option>
									<option value="2">작성자</option>
								</select>
							</div>
							<div class="col-lg-5 col-sm-5">
								<input name="searchBoardContent" type="text" class="form-control form-control-sm">
							</div>
							<div class="col-lg-1 col-sm-1">
								<button type="submit" class="btn btn-block btn-sm btn-primary"
									style="background-color: #0071ce;">검색</button>
							</div>
							<div class="col-lg-1 col-sm-1">
								<button type="button" class="btn btn-block btn-sm btn-primary goInsertAskDr"
									style="background-color: #0071ce;">글쓰기</button>
							</div>
							<div class="col-lg-1 col-sm-1"></div>
						</div>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-1 col-sm-1"></div>
				<div class="col-lg-8 col-sm-8">
					<c:if test="${choosed eq 'Y'}">
					<input id="choose" type="checkbox" checked="checked" /> 채택완료된 글만 보기
					</c:if>
					<c:if test="${choosed eq 'N'}">
					<input id="choose" type="checkbox" /> 채택완료된 글만 보기
					</c:if>
					
				</div>
				<div class="col-lg-2 col-sm-2">
					<button type="button" class="btn btn-block btn-sm btn-primary"
						style="background-color: #0071ce;"
						onclick="location.href='askDr.do'">목록으로</button>
				</div>
				<div class="col-lg-1 col-sm-1"></div>
			</div>
			<div class="row">
				<div class="col-lg-1 col-sm-1"></div>
				<div class="col-lg-10 col-sm-10">
					<table class="table table-hover">
						<thead>
							<tr>
								<th style="width: 10%">번호</th>
								<th style="width: 40%">제목</th>
								<th style="width: 15%">닉네임</th>
								<th style="width: 20%">날짜</th>
								<th style="width: 15%">채택여부</th>
							</tr>
						</thead>
						<tbody>
						
						<c:if test="${empty askDrBoardList}" >
							<tr>
								<td colspan='5' style="text-align: center;">게시글이 없습니다.</td>
							</tr>
						</c:if>
						<c:if test="${!empty askDrBoardList}" >
							<c:forEach items="${askDrBoardList}" var="item">
							<tr class="goAskDrDetail">
								<input type="hidden" value="${item.bNo }" />
								<td>${item.rNo }</td>
								<td>		<!-- 제목을 누르면 해당 게시글로 가게끔 할것 -->
									${item.bTitle }
								</td>
								<td class="nickname">${item.nickname }</td>
								<td>${item.submitDate }</td>
								<td>
								<c:if test="${item.chooseStatus eq 'Y' }">
								채택완료
								</c:if>
								<c:if test="${item.chooseStatus eq 'N' }">
								채택대기
								</c:if>
								</td>
							</tr>
							</c:forEach>
						</c:if>
						
						</tbody>
					</table>
				</div>
				<div class="col-lg-1 col-sm-1"></div>
			</div>
			<div class="row">
				<div class="col-lg-1 col-sm-1"></div>
				<div class="col-lg-10 col-sm-10" style="text-align: center;">
					<div class="pagination">
		                <div style="float:none; margin:0 auto">
		                    <nav aria-label="Page navigation example">
		                        <ul class="pagination">       
		                        	<!-- Prev -->
		                        	<c:if test="${page.currentPage ne 1 && page.endPage ne 0 }" >
		                        	<li class="page-item">
										<c:url var="blistBack" value="askDrBoard.do">
											<c:param name="category" value="${categoryNo }" />
											<c:param name="pageNo" value="${page.currentPage -1  }" />
											<c:if test="${choosed eq 'Y' }">
											<c:param name="choosed" value="${choosed }" />
											</c:if>
										</c:url>
		                        		<a class="page-link" aria-label="Prev" href="${blistBack }">
			                                <span aria-hidden="true">Prev</span>
			                            </a>
		                        	</li>
		                             </c:if>
		                             
		                         	<!-- Numbers -->
		                            <c:forEach var="p" begin="${page.startPage }" end="${page.endPage }">
		                            	<c:if test="${p eq page.currentPage }">
		                            	<li class="page-item">
		                            		<a class="page-link" style="color: #a82400;" href="#">${p }</a>
		                            	</li>
		                            	</c:if>
		                            	<c:if test="${p ne page.currentPage }">
		                            	<li class="page-item">
											<c:url var="askDrBoardPages" value="askDrBoard.do">
												<c:param name="category" value="${categoryNo }" />
												<c:param name="pageNo" value="${p}" />
												<c:if test="${choosed eq 'Y' }">
												<c:param name="choosed" value="${choosed }" />
												</c:if>
											</c:url>
		                            		<a class="page-link" href="${askDrBoardPages }">${p }</a>
		                            	</li>
		                            	</c:if>
		                            </c:forEach>
		                             
		                            <!-- Next --> 
	                             	<c:if test="${page.currentPage ne page.maxPage && page.maxPage ne 0 }" >
		                            <li class="page-item">
										<c:url var="blistFront" value="askDrBoard.do">
											<c:param name="category" value="${categoryNo }" />
											<c:param name="pageNo" value="${page.currentPage + 1 }" />
											<c:if test="${choosed eq 'Y' }">
											<c:param name="choosed" value="${choosed }" />
											</c:if>
										</c:url>
		                        		<a class="page-link" aria-label="Prev" href="${blistFront }">
			                                <span aria-hidden="true">Next</span>
		                            	</a>
		                        	</li>
	                             	</c:if>
		                        </ul>
		                    </nav>
		                </div>
		            </div>
				</div>
				<div class="col-lg-1 col-sm-1"></div>
			</div>
			</c:if>
			
			<c:if test="${boardStatus eq 2 }">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="mb-5" style="font-size: 50px; text-align: center;">
						'${searchBoardContent }' 검색 결과</h1>
				</div>
			</div>				
			<div class="row">
				<div class="col-lg-12">
					<form id="askDrSearchForm" 
					action="askDrBoardSearch.do" method="get">
						<input type="hidden" name="category" value="${categoryNo }" />
						<input type="hidden" name="pageNo" value="1" />
						<div class="form-row">
							<div class="col-lg-1 col-sm-1"></div>
							<div class="col-lg-3 col-sm-3">
								<select name="searchBoardOption"
									class="form-control form-control-sm"
									style="width: 100%;">
									<option value="0"
									<c:if test="${searchBoardOption == 0 }">selected</c:if>>제목</option>
									<option value="1"
									<c:if test="${searchBoardOption == 1 }">selected</c:if>>내용</option>
									<option value="2"
									<c:if test="${searchBoardOption == 2 }">selected</c:if>>작성자</option>
								</select>
							</div>
							<div class="col-lg-5 col-sm-5">
								<input name="searchBoardContent" type="text" class="form-control form-control-sm" 
								value="${searchBoardContent}" />
							</div>
							<div class="col-lg-1 col-sm-1">
								<button type="submit" class="btn btn-block btn-sm btn-primary"
									style="background-color: #0071ce;">검색</button>
							</div>
							<div class="col-lg-1 col-sm-1">
								<button type="button" class="btn btn-block btn-sm btn-primary goInsertAskDr"
									style="background-color: #0071ce;">글쓰기</button>
							</div>
							<div class="col-lg-1 col-sm-1"></div>
						</div>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-1 col-sm-1"></div>
				<div class="col-lg-6 col-sm-6">
					<c:if test="${choosed eq 'Y'}">
					<input id="choose" type="checkbox" checked="checked" /> 채택완료된 글만 보기
					</c:if>
					<c:if test="${choosed eq 'N'}">
					<input id="choose" type="checkbox"> 채택완료된 글만 보기
					</c:if>
				</div>
				<div class="col-lg-2 col-sm-2">
					<button type="button" class="btn btn-block btn-sm btn-primary"
						style="background-color: #0071ce;"
						onclick="location.href='askDrBoard.do?category=${categoryNo}&pageNo=1'">검색조건 초기화</button>
				</div>
				<div class="col-lg-2 col-sm-2">
					<button type="button" class="btn btn-block btn-sm btn-primary"
							style="background-color: #0071ce;"
							onclick="location.href='askDr.do'">목록으로</button>
				</div>
				<div class="col-lg-1 col-sm-1"></div>
			</div>
			<div class="row">
				<div class="col-lg-1 col-sm-1"></div>
				<div class="col-lg-10 col-sm-10">
					<table class="table table-hover">
						<thead>
							<tr>
								<th style="width: 10%">번호</th>
								<th style="width: 40%">제목</th>
								<th style="width: 15%">닉네임</th>
								<th style="width: 20%">날짜</th>
								<th style="width: 15%">채택여부</th>
							</tr>
						</thead>
						<tbody>
						
						<c:if test="${empty askDrBoardSearchList}" >
							<tr>
								<td colspan='5' style="text-align: center;">검색된 게시글이 없습니다.</td>
							</tr>
						</c:if>
						<c:if test="${!empty askDrBoardSearchList}" >
							<c:forEach items="${askDrBoardSearchList}" var="item">
							<tr class="goAskDrDetail">
								<input type="hidden" value="${item.bNo }" />
								<td>${item.rNo }</td>
								<td>	
									${item.bTitle }
								</td>
								<td class="nickname">${item.nickname }</td>
								<td>${item.submitDate }</td>
								<td>
								<c:if test="${item.chooseStatus eq 'Y' }">
									채택완료
								</c:if>
								<c:if test="${item.chooseStatus eq 'N' }">
									채택대기
								</c:if>
								</td>
							</tr>
							</c:forEach>
						</c:if>
						
						</tbody>
					</table>
				</div>
				<div class="col-lg-1 col-sm-1"></div>
			</div>			
			<div class="row">
				<div class="col-lg-1 col-sm-1"></div>
				<div class="col-lg-10 col-sm-10" style="text-align: center;">
					<div class="pagination">
		                <div style="float:none; margin:0 auto">
		                    <nav aria-label="Page navigation example">
		                        <ul class="pagination">       
		                        	<!-- Prev -->
		                        	<c:if test="${page.currentPage ne 1 && page.endPage ne 0 }" >
		                        	<li class="page-item">
		                        		<c:url var="blistBack" value="askDrBoardSearch.do">
											<c:param name="category" value="${categoryNo }" />
											<c:param name="pageNo" value="${page.currentPage -1  }" />
											<c:param name="searchBoardOption" value="${searchBoardOption }" />
											<c:param name="searchBoardContent" value="${searchBoardContent}" />
											<c:if test="${choosed eq 'Y' }">
											<c:param name="choosed" value="${choosed }" />
											</c:if>
										</c:url>
		                        		<a class="page-link" aria-label="Prev" href="${blistBack }">
			                                <span aria-hidden="true">Prev</span>
			                            </a>
		                        	</li>
		                             </c:if>
		                             
		                         	<!-- Numbers -->
		                            <c:forEach var="p" begin="${page.startPage }" end="${page.endPage }">
		                            	<c:if test="${p eq page.currentPage }">
		                            	<li class="page-item">
		                            		<a class="page-link" style="color: #a82400;" href="#">${p }</a>
		                            	</li>
		                            	</c:if>
		                            	<c:if test="${p ne page.currentPage }">
		                            	<li class="page-item">
		                            		<c:url var="askDrBoardPages" value="askDrBoardSearch.do">
												<c:param name="category" value="${categoryNo }" />
												<c:param name="pageNo" value="${p}" />
												<c:param name="searchBoardOption" value="${searchBoardOption }" />
												<c:param name="searchBoardContent" value="${searchBoardContent}" />
												<c:if test="${choosed eq 'Y' }">
												<c:param name="choosed" value="${choosed }" />
												</c:if>
											</c:url>
		                            		<a class="page-link" href="${askDrBoardPages }">${p }</a>
		                            	</li>
		                            	</c:if>
		                            </c:forEach>
		                             
		                            <!-- Next --> 
	                             	<c:if test="${page.currentPage ne page.maxPage && page.maxPage ne 0 }" >
		                            <li class="page-item">
		                        		<c:url var="blistFront" value="askDrBoardSearch.do">
											<c:param name="category" value="${categoryNo }" />
											<c:param name="pageNo" value="${page.currentPage + 1 }" />
											<c:param name="searchBoardOption" value="${searchBoardOption }" />
											<c:param name="searchBoardContent" value="${searchBoardContent}" />
											<c:if test="${choosed eq 'Y' }">
											<c:param name="choosed" value="${choosed }" />
											</c:if>
										</c:url>
		                        		<a class="page-link" aria-label="Prev" href="${blistFront }">
			                                <span aria-hidden="true">Next</span>
		                            	</a>
		                        	</li>
	                             	</c:if>
		                        </ul>
		                    </nav>
		                </div>
		            </div>
				</div>
				<div class="col-lg-1 col-sm-1"></div>
			</div>
			</c:if>
		</div>
		
	</section>

	<!-- Footer section -->
	<%@ include file="../static/footer.jsp"%>
	<!-- Footer section end -->
	<!--====== Javascripts & Jquery ======-->
	<script src="http://code.jquery.com/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery.slicknav.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/mixitup.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>
	<script>
	$(function(){
		//로그인 회원만 접근 가능
		
		$(".goAskDrDetail").on("click", function(){
			var bNo = $(this).children("input[type=hidden]").val();
			
			var searchBoardOption = "${searchBoardOption}";
			var searchBoardContent = "${searchBoardContent}";
			
			var url = "category=" + ${categoryNo} + "&bNo=" + bNo;
			
			if(searchBoardOption !== "" && searchBoardContent !== ""){
				url += "&searchBoardOption=" + searchBoardOption + 
					"&searchBoardContent=" + searchBoardContent;
			}
			location.href="askDrDetail.do?" + url;
		});//end of goBoardDetail
		 
		$(".goInsertAskDr").on("click", function(){
			var client = "${loginClient.nickName}";
			var drClient = "${loginDrClient.userName}";
			
			if (client !== "" && drClient === "") {
				location.href = "askDrBoardInsertForm.do";
			} 
			else if (client === "" && drClient === "") {
				if (confirm("해당 게시글은 회원만 작성할 수 있습니다. 로그인하시겠습니까?")) {
					location.href = "loginView.do";
				} else {
					return false;
				}
			}
			else if(client === "" && drClient !== ""){
				alert("해당 게시글 작성은 일반 회원만 작성할 수 있습니다.")
			}
		});
		
 		$("#choose").on("click", function(){
 			var boardStatus = ${boardStatus};
 			var category = ${categoryNo};
 			//var searchBoardOption = ${searchBoardOption};
 			//var searchBoardContent = '${searchBoardContent}';
 			
			if( $("#choose").is(':checked') == true && boardStatus === 1 ){
				location.href='askDrBoard.do?category=' + category + '&pageNo=1&choosed=Y';
			}
			else if( $("#choose").is(':checked') == true && boardStatus === 2 ){
				var searchBoardOption = '${searchBoardOption}';
	 			var searchBoardContent = '${searchBoardContent}';
				
				location.href='askDrBoardSearch.do?category=' + category + 
						'&pageNo=1&searchBoardOption=' + searchBoardOption + 
						'&searchBoardContent=' + searchBoardContent + 
						'&choosed=Y';
			}
			else if( $("#choose").is(':checked') == false && boardStatus === 1 ){
				location.href='askDrBoard.do?category=' + category + '&pageNo=1';
			}
			else if( $("#choose").is(':checked') == false && boardStatus === 2 ){
				var searchBoardOption = '${searchBoardOption}';
	 			var searchBoardContent = '${searchBoardContent}';
				
				location.href='askDrBoardSearch.do?category=' + category + 
				'&pageNo=1&searchBoardOption=' + searchBoardOption + 
				'&searchBoardContent=' + searchBoardContent;
			}
		});
	});	//end of jquery $(function)
	</script>
	
	
</body>
</html>







