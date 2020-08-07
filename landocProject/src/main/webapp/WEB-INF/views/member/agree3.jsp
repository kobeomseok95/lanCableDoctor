<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>일반 회원정보</title>
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
		<h2>위치기반서비스 이용약관</h2>
		
		<h4 class="title">1. 목적</h4>
		<div class="di">
			본 이용약관(이하 ’약관’이라 합니다.)은 랜선닥터(이하 ’회사’라 합니다.)과 이용고객(이하 ’회원’이라 합니다.)간에
			회사가 제공하는 “어플리케이션 랜선닥터”(이하 ’서비스’라 합니다.)의 가입조건 및 이용에 관한 제반 사항과 
			기타 필요한 사항을 구체적으로 규정함을 그 목적으로 합니다.
		</div>
		<h4 class="title">2. 약관의 효력 및 변경</h4>
		<div class="di">
			2.1 본 약관은 서비스를 신청한 고객 또는 개인위치정보주체가 본 약관에 동의하고 회사가 정한 소정의 절차에 따라 서비스의 이용자로 등록함으로써 효력이 발생합니다.<br>
			2.2 회사는 본 약관의 내용을 회원이 쉽게 알 수 있도록 서비스 초기 화면에 게시하거나 기타의 방법으로 공지합니다.<br>
			2.3 회사는 필요하다고 인정되면 본 약관을 변경할 수 있으며, 회사가 약관을 개정할 경우에는 기존약관과 개정약관 및 개정약관의 적용일자와 개정사유를 명시하여 현행약관과
			함께 그 적용일자 7일 전부터 적용일 이후 상당한 기간 동안 공지합니다. 다만, 개정 내용이 회원에게 불리한 경우에는 그 적용일자 30일 전부터 적용일 이후 상당한 기간 동안
			각각 이를 서비스 홈페이지에 게시하거나 회원에게 전자적 형태(전자우편, SMS 등)로 약관 개정 사실을 발송하여 고지합니다.<br>
			2.4 회사가 전항에 따라 회원에게 공지하거나 통지하면서 공지 또는 통지ㆍ고지일로부터 개정약관 시행일 7일 후까지 거부의사를 표시하지 아니하면 승인한 것으로 본다는 뜻을
			명확하게 고지하였음에도 불구하고 거부의 의사표시가 없는 경우에는 변경된 약관에 승인한 것으로 봅니다. 회원이 개정약관에 동의하지 않을 경우 회원은 이용계약을 해지할 수 있습니다.
		</div>
		<h4 class="title">3. 약관 외 준칙</h4>
		<div class="di">
			본 약관에 규정되지 않은 사항에 대해서는 위치정보의 보호 및 이용 등에 관한 법률(이하 “위치정보법”이라고 합니다), 전기통신사업법, 정보통신망 이용촉진 및 보호 등에 관한 법률(이하 “정보통신망법”이라고 합니다),
			개인정보보호법 등 관련법령 또는 회사가 정한 서비스의 운영정책 및 규칙 등(이하 “세부지침”이라고 합니다)의 규정에 따릅니다.
		</div>
		<h4 class="title">4. 서비스의 가입</h4>
		<div class="di">
			4.1 회사는 아래와 같은 경우에는 이용자의 가입신청을 승낙하지 않을 수 있습니다.<br>
			4.1.1 실명이 아니거나 다른 사람의 명의를 사용하는 등 허위로 신청하는 경우<br>
			4.1.2 회원 등록 사항을 빠뜨리거나 잘못 기재하여 신청하는 경우<br>
			4.1.3 기타 회사가 정한 이용신청 요건을 충족하지 않았을 경우
		</div>
		<h4 class="title">5. 서비스의 해지</h4>
		<div class="di">
			회원이 서비스 이용을 해지하고자 할 경우 회원은 회사가 정한 절차(서비스 홈페이지 등을 통해 공지합니다)를 통해 서비스 해지를 신청할 수 있으며, 회사는 법령이 정하는 바에 따라 신속히 처리합니다.
		</div>
		<h4> class="title"6. 서비스의 내용</h4>
		<div class="di">
			6.1 서비스의 이용은 연중무휴 1일 24시간을 원칙으로 합니다. 단, 회사의 업무 또는 기술상의 이유로 서비스가 일시 중지될 수 있으며, 운영상의 목적으로 회사가 정한 기간에도 서비스는 일시 중지될 수 있습니다.
			이때 회사는 사전 또는 사후에 이를 공지합니다.<br>
			6.2 회사가 제공하는 서비스는 아래와 같습니다.<br>
			- 지역별 치과 검색
		</div>
		<h4 class="title">7. 서비스 이용요금</h4>
		<div class="di">
			7.1 회사가 제공하는 서비스는 기본적으로 유료 또는 무료입니다. 단, 별도의 유료서비스의 경우 해당 서비스에 명시된 요금을 지불하여야 사용 가능합니다.<br>
			7.2 회사는 유료서비스 이용요금을 회사와 계약한 전자지불업체에서 정한 방법에 의하거나 회사가 정한 청구서에 합산하여 청구할 수 있습니다.<br>
			7.3 유료서비스 이용을 통하여 결제된 대금에 대한 취소 및 환불은 회사의 결제 이용약관 등 관련법령에 따릅니다.<br>
			7.4 회원의 개인정보도용 및 결제사기로 인한 환불요청 또는 결제자의 개인정보 요구는 법률이 정한 경우 외에는 거절될 수 있습니다.<br>
			7.5 무선서비스 이용 시 발생하는 데이터 통신료는 별도이며, 회원이 가입한 각 이동통신사의 정책에 따릅니다.<br>
			7.6 MMS 등으로 게시물을 등록할 경우 발생하는 요금은 회원이 가입한 각 이동통신사의 정책에 따릅니다.
		</div>
		<h4 class="title">8. 서비스의 이용제한 및 중지</h4>
		<div class="di">
			8.1 회사는 아래 각 호의 경우에는 회원의 서비스 이용을 제한하거나 중지시킬 수 있습니다.<br>
			8.1.1 회원이 회사 서비스의 운영을 고의 또는 중과실로 방해하는 경우<br>
			8.1.2 서비스용 설비 점검, 보수 또는 공사로 인하여 부득이한 경우<br>
			8.1.3 전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지했을 경우<br>
			8.1.4 국가비상사태, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 서비스 이용에 지장이 있는 때<br>
			8.1.5 기타 중대한 사유로 인하여 회사가 서비스 제공을 지속하는 것이 부적당하다고 인정하는 경우<br>
			8.2 회사는 전항의 규정에 의하여 서비스의 이용을 제한하거나 중지한 때에는 그 사유 및 제한기간 등을 회원에게 알려야 합니다.
		</div>
		<h4 class="title">9. 서비스내용변경 통지 등</h4>
		<div class="di">
			9.1 회사가 서비스 내용을 변경하거나 종료하는 경우 회사는 회원의 등록된 전자우편 주소로 이메일을 통하여 서비스 내용의 변경 사항 또는 종료를 통지할 수 있습니다.<br>
			9.2 전항의 경우 불특정 다수인을 상대로 통지를 함에 있어서는 서비스 홈페이지 등 기타 회사의 공지사항 페이지를 통하여 회원들에게 통지할 수 있습니다.
			단, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항은 상당한 기간 동안 서비스 홈페이지에 게시하거나 회원에게 전자적 형태(전자우편, SMS 등)로 개별통지 합니다.
		</div>
		<h4 class="title">10. 개인위치정보의 이용 또는 제공</h4>
		<div class="di">
			10.1 회사는 개인위치정보를 이용하여 서비스를 제공하고자 하는 경우에는 미리 약관에 명시한 후 개인위치정보주체의 동의를 얻어야 합니다.<br>
			10.2 회원 및 법정대리인의 권리와 그 행사방법은 제소 당시의 이용자의 주소에 의하며, 주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의 관할법원에 제기합니다.<br>
			10.3 회사는 타사업자 또는 이용 고객과의 요금정산 및 민원처리를 위해 위치정보 이용·제공, 사실 확인자료를 자동 기록·보존하며, 해당 자료는 6개월간 보관합니다.<br>
			10.4 회사는 개인위치정보주체의 동의 없이 개인위치정보를 제3자에게 제공하지 아니하며, 제3자 제공 서비스를 제공하는 경우에는 제공 받는자 및 제공목적을 사전에 개인위치정보주체에게 고지하고 동의를 받습니다. 다만, 다음의 경우는 예외로 하고 있습니다.<br>
			10.4.1 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우<br>
			10.5 회사는 개인위치정보를 회원이 지정하는 제3자에게 제공하는 경우에는 개인위치정보를 수집한 당해 통신 단말장치로 매회 회원에게 제공받는 자, 제공 일시 및 제공목적을 즉시 통보합니다. 단, 아래 각 호의 1에 해당하는 경우에는 회원이 미리 특정하여 지정한 통신 단말장치 또는 전자우편주소로 통보합니다.<br>
			10.5.1 개인위치정보를 수집한 당해 통신단말장치가 문자, 음성 또는 영상의 수신기능을 갖추지 아니한 경우<br>
			10.5.2 회원이 온라인 게시 등의 방법으로 통보할 것을 미리 요청한 경우
		</div>
		<h4 class="title">11. 개인위치정보주체의 권리</h4>
		<div class="di">
			11.1 회원은 회사에 대하여 언제든지 개인위치정보를 이용한 위치기반서비스 제공 및 개인위치정보의 제3자 제공에 대한 동의의 전부 또는 일부를 철회할 수 있습니다. 이 경우 회사는 수집한 개인위치정보 및 위치정보 이용, 제공사실 확인자료를 파기합니다.<br>
			11.2 회원은 회사에 대하여 언제든지 개인위치정보의 수집, 이용 또는 제공의 일시적인 중지를 요구할 수 있으며, 회사는 이를 거절할 수 없고 이를 위한 기술적 수단을 갖추고 있습니다.<br>
			11.3 회원은 회사에 대하여 아래 각 호의 자료에 대한 열람 또는 고지를 요구할 수 있고, 당해 자료에 오류가 있는 경우에는 그 정정을 요구할 수 있습니다. 이 경우 회사는 정당한 사유 없이 회원의 요구를 거절할 수 없습니다.<br>
			11.3.1 본인에 대한 위치정보 수집, 이용, 제공사실 확인자료<br>
			11.3.2 본인의 개인위치정보가 위치정보의 보호 및 이용 등에 관한 법률 또는 다른 법률 규정에 의하여 제3자에게 제공된 이유 및 내용<br>
			11.4 회원은 제1항 내지 제3항의 권리행사를 위해 회사의 소정의 절차를 통해 요구할 수 있습니다.
		</div>
		<h4 class="title">12. 법정대리인의 권리</h4>
		<div class="di">
			12.1 회사는 14세 미만의 회원에 대해서는 개인위치정보를 이용한 위치기반서비스 제공 및 개인위치정보의 제3자 제공에 대한 동의를 당해 회원과 당해 회원의 법정대리인으로부터 동의를 받아야 합니다. 이 경우 법정대리인은 제11조에 의한 회원의 권리를 모두 가집니다.<br>
			12.2 회사는 14세 미만의 아동의 개인위치정보 또는 위치정보 이용, 제공사실 확인자료를 이용약관에 명시 또는 고지한 범위를 넘어 이용하거나 제3자에게 제공하고자 하는 경우에는 14세 미만의 아동과 그 법정대리인의 동의를 받아야 합니다. 단, 아래의 경우는 제외합니다.<br>
			12.2.1 위치정보 및 위치기반서비스 제공에 따른 요금정산을 위하여 위치정보 이용, 제공사실 확인자료가 필요한 경우<br>
			12.2.2 통계작성, 학술연구 또는 시장조사를 위하여 특정 개인을 알아볼 수 없는 형태로 가공하여 제공하는 경우
		</div>
		<h4 class="title">13. 8세 이하의 아동 등의 보호의무자의 권리</h4>
		<div class="di">
			13.1 회사는 아래의 경우에 해당하는 자(이하 “8세 이하의 아동 등”이라고 합니다)의 보호의무자가 8세 이하의 아동 등의 생명 또는 신체보호를 위하여 개인위치정보의 이용 또는 제공에 동의하는 경우에는 본인의 동의가 있는 것으로 봅니다.<br>
			13.1.1 8세 이하의 아동<br>
			13.1.2 피성년후견인<br>
			13.1.3 장애인복지법 제2조 제2항 제2호의 규정에 따른 정신적 장애를 가진 자로서 장애인 고용촉진 및 직업재활법 제2조 제2호의 규정에 따라 중증장애인에 해당하는 자(장애인복지법 제32조의 규정에 따라 장애인등록을 한 자에 한합니다)<br>
			13.2 전항의 규정에 따른 8세 이하 아동 등의 보호의무자는 해당 아동을 사실상 보호하는 자로서 다음 각 호에 해당하는 자를 말합니다.<br>
			13.2.1 8세 이하의 아동의 법정대리인 또는 보호시설에 있는 미성년자의 후견 직무에 관한 법률 제3조의 규정에 따른 후견인<br>
			13.2.2 피성년후견인의 법정대리인<br>
			13.2.3 본 조 제1항 제3호의 자의 법정대리인 또는 장애인복지법 제58조 제1항 제1호의 규정에 따른 장애인생활시설(국가 또는 지방자치단체가 설치·운영하는 시설에 한합니다)의 장, 정신보건법 제3조 제4호의 규정에 따른 정신질환자 사회복귀시설(국가 또는 지방자치단체가 설치·운영하는 시설에 한합니다)의 장, 동법 동조 제5호의 규정에 따른 정신요양시설의 장<br>
			13.3 8세 이하의 아동 등의 생명 또는 신체의 보호를 위하여 개인위치정보의 이용 또는 제공에 동의를 하고자 하는 보호의무자는 서면동의서에 보호의무자임을 증명하는 서면을 첨부하여 회사에 제출하여야 합니다.<br>
			13.4 보호의무자는 8세 이하의 아동 등의 개인위치정보 이용 또는 제공에 동의하는 경우 개인위치정보주체 권리의 전부를 행사할 수 있습니다.
		</div>
		<h4 class="title">14. 회사의 주소 및 연락처 등</h4>
		<div class="di">
			14.1 회사의 상호, 주소 및 연락처는 아래와 같습니다.<br>

			• 상호 : 랜선닥터<br>
			• 대표 : 고범석<br>
			• 주소 : 서울시 관악구 관악로 144<br>
			• 대표이메일 : info@modoodoc.com
		</div>
		<h4 class="title">15. 양도금지</h4>
		<div class="di">
			회원의 서비스 받을 권리는 이를 양도 내지 증여하거나 담보제공 등의 목적으로 처분할 수 없습니다.
		</div>
		<h4 class="title">16. 손해배상</h4>
		<div class="di">
			16.1 회사가 위치정보법 제15조 내지 제26조의 규정을 위반한 행위로 회원에게 손해가 발생한 경우 회원은 회사에 대하여 손해배상 청구를 할 수 있습니다. 이 경우 회사는 고의, 과실이 없음을 입증하지 못하는 경우 책임을 면할 수 없습니다.<br>
			16.2 회원이 본 약관의 규정을 위반하여 회사에 손해가 발생한 경우 회사는 회원에 대하여 손해배상을 청구할 수 있습니다. 이 경우 회원은 고의, 과실이 없음을 입증하지 못하는 경우 책임을 면할 수 없습니다.
		</div>
		<h4 class="title">17. 면책</h4>
		<div class="di">
			17.1 회사는 다음 각 호의 경우로 서비스를 제공할 수 없는 경우 이로 인하여 회원에게 발생한 손해에 대해서는 책임을 부담하지 않습니다.
		</div>
		<h4 class="title">18. 분쟁의 조정 및 기타</h4>
		<div class="di">
			18.1 서비스 이용과 관련하여 회사와 회원 간에 분쟁이 발생하면, 회사는 분쟁의 해결을 위해 회원과 성실히 협의합니다.<br>
			18.2 전항의 협의에서 분쟁이 해결되지 않은 경우 회사와 회원은 위치정보법 제28조에 의한 방송통신위원회에 재정을 신청하거나, 개인정보보호법 제43조에 의한 방송통신위원회 또는 개인정보분쟁조정위원회에 재정 또는 분쟁조정을 신청할 수 있습니다.<br>
			18.3 전항으로도 분쟁이 해결되지 않으면 회사와 회원 양 당사자는 민사소송법상의 관할법원에 소를 제기할 수 있습니다.
		</div>
		<h4 class="title">부칙</h4>
		<div class="dii">
			제1조 (시행일) 본 약관은 2017년 6월 17일부터 시행합니다.
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