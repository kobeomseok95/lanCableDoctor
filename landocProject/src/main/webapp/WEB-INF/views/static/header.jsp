<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>		<!-- 헤더에 이거 추가해줌 오류 생기면 말하기 -범석 -->
<!-- Header section -->
	<header class="header-section clearfix">
		<a href="home.do" class="site-logo">
			<img src="<%=request.getContextPath()%>/resources/img/mainlogo.png" alt="" style="width: 100px; height: 100px;">
		</a>
		<ul class="main-menu">
			<li><a href="#">병원찾기</a></li>
			<li><a href="hpReviewInsert.do">리뷰쓰기</a></li>
			<li><a href="askDr.do">의사에게 물어봐</a></li>
			<li><a href="productIndex.do">의사추천 영양제</a></li>

			<div class="header-right" style="padding-top: 0%; padding-bottom: 0%;">
			<c:if test="${empty loginClient && empty loginDrClient }">
				<div class="user-panel">
					<li>
						<a href="loginView.do">로그인</a>
					</li>
					<!--로그인 성공시 화면 X-->
					<span>|</span>
					<li><a href="joinDrView.do" style="color: #a82400;">의사 회원가입</a></li>		<!-- 일반회원가입인지, 의사인지 굉장히 애매래스 -->
					<span>|</span>
					<li><a href="joinClientView.do" style="color: #a82400;">일반 회원가입</a></li>
					<!--//-->
				</div>
			</c:if>
			<c:if test="${!empty loginClient && empty loginDrClient }">
				<div class="user-panel">
					<li>
						<!--로그인 성공시 닉네임으로 변경, ul 태그 화면뿌리기 -->
						<a href="loginView.do"><c:out value="${loginClient.nickName }님 환영합니다"/></a>
						<ul class="sub-menu" style="left: 0px;">
							<li><a href="clientMypage.do">나의활동</a></li>
							<li><a href="mypagePoint.html">나의 포인트</a></li>
							<li><a href="#">계정설정</a></li>
							<li><a href="logout.do">로그아웃</a></li>
						</ul>
						<!--//-->
					</li>
				</div>
			</c:if>
			<c:if test="${empty loginClient && !empty loginDrClient }">
				<div class="user-panel">
					<li>
						<!--로그인 성공시 닉네임으로 변경, ul 태그 화면뿌리기 -->
						<a href="loginView.do"><c:out value="${loginDrClient.userName }님 환영합니다"/></a>
						<ul class="sub-menu" style="left: 0px;">
							<li><a href="clientMypage.do">나의활동</a></li>
							<li><a href="mypagePoint.html">나의 포인트</a></li>
							<li><a href="#">계정설정</a></li>
							<li><a href="logout.do">로그아웃</a></li>
						</ul>
						<!--//-->
					</li>	
				</div>
			</c:if>
		</div>

		</ul>
	</header>
