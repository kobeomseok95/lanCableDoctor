<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>개인정보취급방침</title>
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

<style>
	.title{padding-top: 20px;}
	.di{padding-top: 20px;}
	.dii{padding-top: 20px; padding-bottom: 20px;}
</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
	<link rel="stylesheet" type="text/css"
		href="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/customer_web/style.css">
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<%@ include file="../static/header.jsp"%>

	<div style="width: 1500px; height: auto; margin: auto; padding-top: 100px; padding-bottom:100px;">
		<h2>개인정보취급방침</h2>
		
		<h4 class="title">랜선닥터에 오신 것을 환영합니다.</h4>
		<div class="di">
			랜선닥터 기업(이하 ‘랜선닥터’)은 여러분의 개인 정보를 매우 중요하게 생각하고 있습니다. 여러분의 개인정보는 서비스의 원활한 제공을 위하여 여러분이 동의한 목적과 범위 내에서만 이용됩니다. 법령에 의하거나
			 여러분이 별도로 동의하지 아니하는 한 랜선닥터가 여러분의 개인정보를 제3자에게 제공하는 일은 결코 없으므로 안심하셔도 됩니다. 랜선닥터는 여러분의 개인정보를 안전하게 처리하기 위해 기울이는 노력이나 더 자세한
			사항을 여러분이 더욱 쉽게 이해할 수 있도록 모든 서비스에 적용될 수 있는 하나의 개인정보 취급방침을 마련하였습니다. 개인정보 취급방침은 항상 공개되어 있으니 지금 당장이 아니더라도 궁금하실 때는 언제든지 읽어보실 수 있습니다.
			 개인정보 취급방침이 바뀐 때에는 여러분이 그 내용과 이유를 쉽게 알 수 있도록 여러분이 가입시에 사용한 이메일을 통해 방침이 적용되기 1개월 전에 알려드리겠습니다.
		</div>
		<h4 class="title">랜선닥터은 왜 개인정보를 수집하나요?</h4>
		<div class="di">
			랜선닥터은 회원가입시에 여러분들의 이메일주소와 비밀번호를 받고 있으며, 진료예약 혹은 리뷰 작성 시에 이름과 휴대전화번호 및 CI값을 추가로 받고 있습니다. CI값은 회원님이 탈퇴하시는 경우에도 영구히 보관하며 재가입 회원의 징계 이력 관리 및 악의적 이용의 재발 방지를 위함입니다.
			 또한 로그인시에는 회원님의 ip 주소와 로그인 시간을 함께 저장하여 3개월간 보관합니다. 여러분의 개인정보는 서비스를 원활하게 제공하고 더욱 향상된 이용자 경험을 드리기 위해 필요합니다. 모두닥을 통해서는 실예약자의 리뷰가 쌓이고 있고 매우 간편한 예약 서비스를 제공하고 있는데
			이를 위해서 여러분들의 소중한 개인정보가 필요합니다. 회원가입 신청과 동시에 모두닥의 ‘개인정보취급방침’, ‘이용약관’ 및 ‘위치기반서비스 이용약관’에 동의한 것으로 봅니다.
			
		</div>
		<h4 class="title">개인정보의 제공 및 위탁에 관하여.</h4>
		<div class="di">
			랜선닥터은 여러분들의 개인정보를 개인정보 수집·이용 목적(바로 위 항목 “랜선닥터은 왜 개인정보를 수집하나요?”)에서 명시한 범위 내에서 사용하며, 원칙적으로 회원의 사전 동의 없이 개인정보 수집·이용 목적 범위를 초과하여 이용하거나 회원의 개인정보를 제공하지 않습니다.
		</div>
		<h4 class="title">개인정보는 어떻게 보관되고 처리되나요?</h4>
		<div class="di">
			여러분의 개인정보는 여러분으로부터 동의를 받은 수집 및 이용목적이 달성된 때에는 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 관계 법령에서 정한 일정한 기간 동안 보관한 다음 파기합니다. 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기하고,
			전자적 파일 형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. 다만, 모두닥 계정 탈퇴 시 안내 메일 발송, CS 문의 대응을 위한 이메일 주소 및 서비스의 부정한 이용으로 인한 분쟁을 방지하기 위한 내부방침에 따라 서비스의 부정이용기록은
			1년간 보존한 다음 위의 방법으로 파기됩니다. 모두닥이 법령에 따라 보관하는 개인정보 및 해당 법령은 아래 표와 같습니다.<br>
			• 보존 항목: 계약 또는 청약철회 등에 관한 기록<br>
			• 근거 법령: 전자상거래 등에서의 소비자보호에 관한 법률<br>
			• 보존 기간: 5년<br>
			• 보존 항목: 대금결제 및 재화 등의 공급에 관한 기록<br>
			• 근거 법령: 전자상거래 등에서의 소비자보호에 관한 법률<br>
			• 보존 기간: 5년<br>
			• 보존 항목: 소비자의 불만 또는 분쟁처리에 관한 기록<br>
			• 근거 법령: 전자상거래 등에서의 소비자보호에 관한 법률<br>
			• 보존 기간: 3년<br>
			• 보존 항목: 표시/광고에 관한 기록<br>
			• 근거 법령: 전자상거래 등에서의 소비자보호에 관한 법률<br>
			• 보존 기간: 6개월<br>
			• 보존 항목: 세법이 규정하는 모든 거래에 관한 장부 및 증빙서류<br>
			• 근거 법령: 국세기본법<br>
			• 보존 기간: 5년<br>
			• 보존 항목: 전자금융 거래에 관한 기록<br>
			• 근거 법령: 전자금융거래법<br>
			• 보존 기간: 5년<br>
			• 보존 항목: 서비스 방문기록<br>
			• 근거 법령: 통신비밀보호법<br>
			• 보존 기간: 5년<br>
			여러분(만 14세 미만인 경우는 법정 대리인)은 언제든지 여러분의 개인정보를 조회하거나 수정할 수 있으며 수집-이용에 대한 동의 철회 또는 가입 해지를 요청할 수도 있습니다. 보다 구체적으로는 서비스 내 설정기능을 통한 변경, 가입해지 (동의 철회)를 위해서는
			서비스 내 ‘회원탈퇴’를 클릭하면 되며, 랜선닥터 이메일(info@modoodoc.com)을 통해 연락하시면 지체 없이 조치하겠습니다.
		</div>
		<h4 class="title">웹기반 서비스의 제공을 위하여 쿠키를 이용하는 경우가 있습니다.</h4>
		<div class="di">
			랜선닥터은 여러분에게 개인화되고 맞춤화된 서비스를 제공하기 위해서 여러분의 정보를 저장하고 수시로 불러오는 '쿠키(cookie)'를 사용합니다. 쿠키란 웹사이트를 운영하는데 이용되는 서버가 여러분의 브라우저에 보내는 작은 텍스트 파일로서 PC의 하드디스크에 저장됩니다.
			여러분이 웹 사이트에 방문할 때 웹 사이트 서버는 쿠키의 내용을 읽어 환경 설정을 유지하도록 함으로써 여러분의 웹 사이트 접속과 편리한 사용을 돕게 됩니다. 아울러 쿠키는 여러분의 웹 사이트 방문 기록, 이용 형태나 관심 분야를 알게 해 줌으로써
			이를 통한 최적화된 맞춤 서비스를 제공하는 것을 가능하도록 해 줍니다. 여러분은 쿠키 설치에 대한 선택권을 가지고 있으며, 웹브라우저의 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다. 
			다만, 쿠키 설치를 거부하였을 경우 로그인이 필요한 일부 서비스를 이용하는 것에는 어려움이 있을 수 있음을 미리 이해해 주시기 바랍니다.
		</div>
		<h4 class="title">궁금하신 점이 있으신 분은 언제든지 연락주세요!</h4>
		<div class="di">
			여러분이 서비스를 이용하면서 발생하는 모든 개인정보보호 관련 문의, 불만, 조언이나 기타 사항은 개인정보 보호책임자 및 담당부서로 연락해 주시기 바랍니다. 모두닥은 여러분의 목소리에 귀 기울이고 신속하고 충분한 답변을 드릴 수 있도록 최선을 다하겠습니다.
		</div>
		<h4 class="title">개인정보보호 책임자</h4>
		<div class="dii">
			- 이름 : 고범석<br>

			- 연락처 : info@modoodoc.com<br>

			랜선닥터는 법률이나 서비스의 변경사항을 반영하기 위한 목적 등으로 개인정보 처리방침을 수정할 수 있습니다. 개인정보 처리방침이 변경되는 경우 모두닥은 변경 사항을 게시하며, 변경된 개인정보 처리방침은 게시한 날로부터 7일 후부터 효력이 발생합니다. 
			하지만, 피치 못하게 여러분의 권리에 중요한 변경이 있을 경우 변경될 내용을 30일 전에 미리 알려 드리겠습니다.<br>

			• 공고일자: 2020년 1월 29일<br>

			• 시행일자: 2020년 2월 28일
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>


	<%@ include file="../static/footer.jsp"%>
	<!--====== Javascripts & Jquery ======-->
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery-3.2.1.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/jquery.slicknav.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/mixitup.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>
	
	
	
</body>


</html>