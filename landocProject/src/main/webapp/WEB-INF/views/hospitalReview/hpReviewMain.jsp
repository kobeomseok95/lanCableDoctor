<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>SolMusic | HTML Template</title>
	<meta charset="UTF-8">
	<meta name="description" content="SolMusic HTML Template">
	<meta name="keywords" content="music, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
   
	<!-- Favicon -->
	<link href="img/favicon.ico" rel="shortcut icon"/>
    
	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap" rel="stylesheet">
    
	<!-- Stylesheets -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css"/>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/slicknav.min.css"/>
    
	<!-- Main Stylesheets -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css"/>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    
    
    <script src= 'http://code.jquery.com/jquery-latest.js'></script>


    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    

	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
<style>
    .star-image {
    width: 16px;
    height: 16px;
}
.star-image2 {
    width: 16px;
    height: 16px;
}
img {
    vertical-align: middle;
    border-style: none;
}
.middle-tab {
    position: sticky;
    z-index: 999;
    top: 72px;
    background-color: white;
}
.page-item.active .page-link {
    z-index: 1;
    color: #fff;
    background-color: #007ee5;
    border-color: #007ee5#007ee5;
}

#map_canvas{
     width: 100%;
     height: 100%;
	}


</style>
</head>
<body>

	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	
 	<%@ include file="../static/header.jsp" %>

   
    <div style="text-align: center;">
        <div style="width: 960px; display: inline-block">
    
            
            <div class="hospital-images-box d-flex" style="overflow-x:auto;">
                
                
                <div class="hospital-image-box" style="width: auto; height: 231px;">
                    <img src="https://d23zwvh2kbhdec.cloudfront.net/media/public/hospitals/photos/%EC%9D%B4%EB%AF%B8%EC%A7%801.JPG" style="width:auto; height: 100%;" alt="이미지치과의원의 내부 사진 - 1">
                </div>
                
                <div class="hospital-image-box" style="width: auto; height: 231px;">
                    <img src="https://d23zwvh2kbhdec.cloudfront.net/media/public/hospitals/photos/%EC%9D%B4%EB%AF%B8%EC%A7%802.JPG" style="width:auto; height: 100%;" alt="이미지치과의원의 내부 사진 - 2">
                </div>
                
                
                <div class="hospital-image-box" style="width: auto; height: 231px;">
                    <img src="https://d23zwvh2kbhdec.cloudfront.net/media/public/hospitals/photos/%EC%9D%B4%EB%AF%B8%EC%A7%803.JPG" style="width:auto; height: 100%;" alt="이미지치과의원의 내부 사진 - 3">
                </div>
                
                <div class="hospital-image-box" style="width: auto; height: 231px;">
                    <img src="https://d23zwvh2kbhdec.cloudfront.net/media/public/hospitals/photos/%EC%9D%B4%EB%AF%B8%EC%A7%804.JPG" style="width:auto; height: 100%;" alt="이미지치과의원의 내부 사진 - 4">
                </div>
                

                <div class="hospital-image-box" style="width: auto; height: 231px;">
                    <img src="https://d23zwvh2kbhdec.cloudfront.net/media/public/hospitals/photos/%EC%9D%B4%EB%AF%B8%EC%A7%805.JPG" style="width:auto; height: 100%;" alt="이미지치과의원의 내부 사진 - 5">
                </div>
                

                <div class="hospital-image-box" style="width: auto; height: 231px;">
                    <img src="https://d23zwvh2kbhdec.cloudfront.net/media/public/hospitals/photos/%EC%9D%B4%EB%AF%B8%EC%A7%806.JPG" style="width:auto; height: 100%;" alt="이미지치과의원의 내부 사진 - 6">
                </div>
                
            </div>
            
            <div class="row p-3">
    
                <div class="doctor-in-detail-doctor-box col-8 border-0">
                    <div class="row p-3">
                        <div class="image-box col-2 p-0">
                            <div style="width: 100%;">
                                <img alt="강남역 병원, 이미지치과의원의 김수광 (서울특별시 서초구 사평대로 360 2층 (서초동, 양지빌딩))" title="강남역 병원, 이미지치과의원의 김수광 (서울특별시 서초구 사평대로 360 2층 (서초동, 양지빌딩))" src="https://d23zwvh2kbhdec.cloudfront.net/media/public/doctors/photos/ndl03u8sAA.jpg" style="width:100%; height:auto;">
                            </div>
                            
                            <div class="mt-2">
                                <i class="fas fa-bookmark" style="color:#9b9b9b;"></i>
                                <span style="color:#9b9b9b;"><b>177</b></span>
                            </div>
                            
                        </div>
    
                        <div class="col-9 text-left pt-2">
                            <div style="font-weight: 300;">
                                <a href="/q/?search_query=서울 치과" style="color: #1d458d;font-weight: 600;text-decoration: underline;">
                                    서울
                                </a>
                                &gt;
                                
                                
                                <a href="/q/?search_query=서초구 치과" style="color: #1d458d;font-weight: 600;text-decoration: underline;">
                                    서초구
                                </a>
                                &gt;
                                
                                <a href="/q/?search_query=이미지치과의원" style="color: #1d458d;font-weight: 600;text-decoration: underline;s">
                                    이미지치과의원
                                </a>
                            </div>
    
                            <div class="hospital-doctor-name-box d-flex align-items-center">
                            
                            김수광
    
                            </div>
    
                            <div class="d-flex align-items-start color49 border-bottom pb-3">
                            
                                        <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" class="star-image2">
                                    
                                
                                        <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" class="star-image2">
                                    
                                        <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" class="star-image2">
                                    
                                        <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" class="star-image2">
                                    
                                        <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" class="star-image2">
                                    
                                <div class="ml-1" style="letter-spacing: -0.5px;">
                                
                                    9.5
                                    (리뷰 107)
                                
                                </div>
                            </div>
    
    <!-- 메세지형 광고 -->
                            
    
                            <div class="color49 mt-2" style="font-size: 14px;font-weight: 300;letter-spacing: -0.6px;">
                                <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mapmarkerShape.svg" class="mb-1 mr-1" alt="Responsive image">
                                서울특별시 서초구 사평대로 360 2층 (서초동, 양지빌딩) (신논현역 7번 출구로부터 140m)
                               
                            </div>
    
                            
                            <div style="font-size: 14px;font-weight: 300;letter-spacing: -0.6px;" class="mt-2">
                                <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/homepage.svg" class="mb-1 mr-1" alt="Responsive image">
                                <a class="website-link-click" href="https://blog.naver.com/drsu312" target="_blank" rel="noopener" style="color: #4c1192;" onclick="ga('send', 'event', {'eventCategory' : 'website-link-click', 'eventLabel': '김수광, 이미지치과의원'})">
                                    병원 홈페이지 가기</a>
                            </div>
                            
    
                            <div class="color49 mt-2" style="font-size: 14px;font-weight: 300;letter-spacing: -0.2px;">
                                <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/phoneicon.svg" class="mb-1 mr-1" alt="Responsive image">
                                
                                    02-3454-0543
                                
                            </div>
    
    
                        </div>
    
                        <div class="col-1 p-0">
                            <div class="mt-1 mb-2">
                            
                                <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/bookmark_grey.svg" class="create-bookmark img-fluid" alt="Responsive image">
                            
                            </div>
                        </div>
                    </div>
                </div>
    
                <div class="col-4">
                <div class="review-preview-box border">
                    <div class="d-flex justify-content-between align-items-center m-3">
                        <div style="font-weight: bold;letter-spacing: -0.4px;">
                            인증된 리뷰 <b style="color: #007ee5;">107</b>
                        </div>
                        <div>
                            <a href="#reviewdetailinfo" style="color: #494949;font-size: 12px;">
                                전체보기
                                <i class="fas fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
    
                    <div class="text-left mx-3 py-3 border-top">
                        <div class="row my-1">
                            
                            <div class="d-flex align-items-start col-6">
                                
                                    
                                            <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="img-fluid" style="width:14.5px; height:auto;">
                                    
                                            <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="img-fluid" style="width:14.5px; height:auto;">
                                    
                                            <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="img-fluid" style="width:14.5px; height:auto;">
                                    
                                            <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="img-fluid" style="width:14.5px; height:auto;">
                                    
                                            <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="img-fluid" style="width:14.5px; height:auto;">
                                    
                                <div style="letter-spacing: -0.7px; color: #494949;font-size: 14px;" class="ml-1">9.8</div>
                            </div>
                            <div class="d-flex align-items-center col-6">
                                <div style="color: #9b9b9b;font-size: 10px;">5월 19일, 2020년 등록</div>
                            </div>
                            
    
                        </div>
    
                        
                            <div style="font-size: 12px;letter-spacing: -0.6px;" class="treatment-tag-box my-1">
                                받은 치료 :
                                
                                    
                                        충치치료
                                        
                                    
                                
                            </div>
                        
    
                        
                        <div style="font-size: 12px; font-weight: 300;  letter-spacing: -0.6px;color: #494949;cursor: pointer;" onclick="location.href='#reviewdetailinfo'">
                            데스크 직원분들은 그냥 사무적이였고 간호사분들은 좀 나았고 의사선생님은 진짜 너무 재…
                        </div>
                        
    
                    </div>
                    
                    
    
                </div>
    
                <div class="review-preview-box border mt-2">
                    <div class="d-flex justify-content-between align-items-center m-3">
                        <div style="font-weight: bold;letter-spacing: -0.4px;">
                            Q&amp;A <b style="color: #4c1192;">4</b>
                        </div>
                        <div>
                            <a href="#qnadetailinfo" style="color: #494949;font-size: 12px;">
                                더 보기
                                <i class="fas fa-chevron-right"></i>
                            </a>
                        </div>
                    </div>
    
                    
                    
                    <div class="text-left mx-3 py-3 border-top" style="cursor: pointer;" onclick="location.href='#qnadetailinfo';">
                        <div class="row">
                            <div class="col-2" style="font-weight: bold;letter-spacing: -0.5px;">
                                <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/Q.svg" class="img-fluid mr-1 align-top" alt="Responsive image">
                            </div>
                            <div class="col-10 pl-0 text-left" style="letter-spacing: -0.5px;font-size:14px;">
                                어금니 임플란트 국내산 가격…
                            </div>
                        </div>
    
                        
                        
                        <div class="row mt-2">
                            <div class="col-1 offset-2 pl-0 pr-2">
                                <img style="width:100%; height:auto;" src="https://d23zwvh2kbhdec.cloudfront.net/media/public/customers/photos/animals/hamster.png">
                            </div>
                            <div class="col-9 text-left pl-0" style="font-size: 12px;font-weight: 300;letter-spacing: -0.7px;color:#494949;">
                                
                                국내산이었는지는 모르겠지만 120정…
                                
                                <br>
                                <b style="font-size: 12px;color: #9b9b9b;">2020.06.29</b>
                            </div>
                        </div>
                        
                    </div>
                    
                </div>
    
                </div>
            </div>
    
            <!--semi navi bar-->
            <div class="row border-top border-bottom px-3 middle-tab">
                <div class="col-8 doctorpage-tabbar">
                    <ul id="nav-tabs" class="nav nav-pills nav-fill d-flex" role="tablist">
                        <li role="presentation" class="nav-item">
                            <a class="nav-link active m-0 border-top-0 border-left-0 border-right-0 rounded-0 h-100" 
                            href="#doctordetailinfo" role="tab" style="color: #007ee5; background-color: white; font-weight: 600; border-bottom: 2px solid #007ee5; font-size: 18px;">상세정보</a>
                        </li>
                        <li role="presentation" class="nav-item">
                            <a class="nav-link active m-0 border-top-0 border-left-0 border-right-0 rounded-0 h-100" 
                            href="#pricedetailinfo" role="tab" style="color: #007ee5; background-color: white; font-weight: 600; border-bottom: 2px solid #007ee5; font-size: 18px;">가격정보</a>
                        </li>
                        <li role="presentation" class="nav-item">
                            <a class="nav-link active m-0 border-top-0 border-left-0 border-right-0 rounded-0 h-100" 
                            href="#reviewdetailinfo" role="tab" style="color: #007ee5; background-color: white; font-weight: 600; border-bottom: 2px solid #007ee5; font-size: 18px;">리뷰 (107)</a>
                        </li>
                        <li role="presentation" class="nav-item">
                            <a class="nav-link active m-0 border-top-0 border-left-0 border-right-0 rounded-0 h-100" 
                            href="#qnadetailinfo" role="tab" style="color: #007ee5; background-color: white; font-weight: 600; border-bottom: 2px solid #007ee5; font-size: 18px;">Q&amp;A (4)</a>
                        </li>
                    </ul>
                </div>
            </div>
    
            <a class="anchor" id="doctordetailinfo"></a>
            <div class="row p-3">
                <div class="col-20" id="left-fixed">
                    <div class="my-5 border-top pt-5">
                        <div class="d-flex justify-content-between align-items-center">
                            <div style="font-size: 20px;font-weight: bold;">위치 &amp; 영업시간</div>
                            <button type="button" class="btn-transparent open_request_wrong_info border p-1" style="color: #494949;font-size: 12px;">
                                병원 정보 수정 요청하기
                            </button>
                        </div>
                        
                        <div style="  letter-spacing: -0.7px;color: #b00020;font-size: 14px;" class="text-left">
                            ※주의사항 : 방문 전 전화를 통해 진료시간을 꼭 확인하세요!
                        </div>
    
                        <div class="text-left color49 my-4" style="font-size:14px;">
                            
                                
                                <div class="my-2 row">
                                        
                                        <div style="color:#007ee5" class="col-2">
                                            <i class="far fa-clock"></i>
                                        월요일
                                        </div>
                                        
    
                                        <div class="col-7 p-0">
                                            오전 10:00 - 오후 7:00
                                            
                                            (점심시간 오후 1:00 - 오후 2:00)
                                            
                                        </div>
                                        <div class="col-3" style="color:#9b9b9b; font-size:12px;">
                                        
                                        
                                        
                                        </div>
                                </div>
                                
                                <div class="my-2 row">
                                        
                                        <div style="color:#007ee5" class="col-2">
                                            <i class="far fa-clock"></i>
                                        화요일
                                        </div>
                                        
    
                                        <div class="col-7 p-0">
                                            오전 10:00 - 오후 7:00
                                            
                                            (점심시간 오후 1:00 - 오후 2:00)
                                            
                                        </div>
                                        <div class="col-3" style="color:#9b9b9b; font-size:12px;">
                                        
                                        
                                        
                                        </div>
                                </div>
                                
                                <div class="my-2 row">
                                        
                                        <div style="color:#007ee5" class="col-2">
                                            <i class="far fa-clock"></i>
                                        수요일
                                        </div>
                                        
    
                                        <div class="col-7 p-0">
                                            오전 10:00 - 오후 7:00
                                            
                                            (점심시간 오후 1:00 - 오후 2:00)
                                            
                                        </div>
                                        <div class="col-3" style="color:#9b9b9b; font-size:12px;">
                                        
                                        
                                        
                                        </div>
                                </div>
                                
                                <div class="my-2 row">
                                        
                                        <div style="color:#007ee5" class="col-2">
                                            <i class="far fa-clock"></i>
                                        목요일
                                        </div>
                                        
    
                                        <div class="col-7 p-0">
                                            오후 2:00 - 오후 9:00
                                            
                                            (점심시간 오후 1:00 - 오후 2:00)
                                            
                                        </div>
                                        <div class="col-3" style="color:#9b9b9b; font-size:12px;">
                                        
                                        
                                        
                                        </div>
                                </div>
                                
                                <div class="my-2 row">
                                        
                                        <div style="color:#007ee5" class="col-2">
                                            <i class="far fa-clock"></i>
                                        금요일
                                        </div>
                                        
    
                                        <div class="col-7 p-0">
                                            오전 10:00 - 오후 7:00
                                            
                                            (점심시간 오후 1:00 - 오후 2:00)
                                            
                                        </div>
                                        <div class="col-3" style="color:#9b9b9b; font-size:12px;">
                                        
                                        
                                        
                                        </div>
                                </div>
                                
                                <div class="my-2 row">
                                        
                                        <div style="color:#b00020" class="col-2">
                                            <i class="far fa-clock"></i>
                                        일요일
                                        </div>
                                        
    
                                        <div class="col-7 p-0">
                                            오전 10:00 - 오후 6:00
                                            
                                            (점심시간 오후 1:00 - 오후 2:00)
                                            
                                        </div>
                                        <div class="col-3" style="color:#9b9b9b; font-size:12px;">
                                        
                                        
                                        
                                        </div>
                                </div>
                                
                            
                        </div>
    
                        
                    </div>
    
                    <!--지도 api활용 부분-->
                    <!--location-box -->
                    <div class="location-box">
                        <div class="map_container" style="height:250px;">
                            <div id="map_canvas" style="position: relative; overflow: hidden; background: url(&quot;https://ssl.pstatic.net/static/maps/mantle/1x/pattern_1.png&quot;) 0px 0px repeat transparent;"><div style="position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); z-index: 0; cursor: url(&quot;https://ssl.pstatic.net/static/maps/mantle/1x/openhand.cur&quot;), default;"><div style="position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); z-index: 0;"><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 1;"><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: none; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 0; user-select: none;"></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 1; user-select: none;"><div style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 0px; height: 0px; overflow: visible; box-sizing: content-box !important;"><div draggable="false" unselectable="on" style="position: absolute; top: -238px; left: 376px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1592456906/16/55892/25392.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 274px; left: 120px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1592456906/16/55891/25394.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 18px; left: 376px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1592456906/16/55892/25393.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 18px; left: 120px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1592456906/16/55891/25393.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 274px; left: 376px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1592456906/16/55892/25394.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: -238px; left: 120px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1592456906/16/55891/25392.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: -238px; left: 632px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1592456906/16/55893/25392.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 274px; left: -136px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1592456906/16/55890/25394.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 18px; left: 632px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1592456906/16/55893/25393.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 18px; left: -136px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1592456906/16/55890/25393.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: 274px; left: 632px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1592456906/16/55893/25394.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div draggable="false" unselectable="on" style="position: absolute; top: -238px; left: -136px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img draggable="false" unselectable="on" alt="" width="256" height="256" src="https://nrbe.pstatic.net/styles/basic/1592456906/16/55890/25392.png?mt=bg.ol.sw.ar.lko" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div></div></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 100;"><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 101;"></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 103;"><div title="" style="position: absolute; overflow: hidden; box-sizing: content-box !important; cursor: inherit; width: 28px; height: 40px; left: 291px; top: 85px;"><img draggable="false" unselectable="on" src="https://d23zwvh2kbhdec.cloudfront.net/media/public/marker_selected.png" alt="" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; user-select: none; -webkit-user-drag: none; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; position: absolute; cursor: pointer; width: 28px; height: 40px; left: 0px; top: 0px;"></div></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 106;"></div></div></div><div style="position: absolute; display: none; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); background-color: rgb(255, 255, 255); z-index: 10000; opacity: 0.5;"></div></div></div><div style="position: absolute; z-index: 100; margin: 0px; padding: 0px; pointer-events: none; bottom: 0px; right: 0px;"><div style="border: 0px none; margin: 0px; padding: 0px; pointer-events: none; float: right; height: 21px;"><div style="position: relative; width: 53px; height: 14px; margin: 0px 12px 7px 2px; overflow: hidden; pointer-events: auto;"><span style="display:block;margin:0;padding:0 4px;text-align:center;font-size:10px;line-height:11px;font-family:Helvetica,AppleSDGothicNeo-Light,nanumgothic,NanumGothic,&quot;나눔고딕&quot;,Dotum,&quot;돋움&quot;,sans-serif;font-weight:bold;color:#000;text-shadow:-1px 0 rgba(255, 255, 255, 0.3), 0 1px rgba(255, 255, 255, 0.3), 1px 0 rgba(255, 255, 255, 0.3), 0 -1px rgba(255, 255, 255, 0.3);">100m</span><img src="https://ssl.pstatic.net/static/maps/mantle/1x/scale-normal-b.png" width="45" height="4" alt="" style="position: absolute; left: 4px; bottom: 0px; z-index: 2; display: block; width: 45px; height: 4px; overflow: hidden; margin: 0px; padding: 0px; border: 0px none; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/scale-normal-l.png" width="4" height="10" alt="" style="position:absolute;left:0;bottom:0;z-index:2;display:block;width:4px;height:10px;overflow:hidden;margin:0;padding:0;border:0 none;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/scale-normal-r.png" width="4" height="10" alt="" style="position:absolute;right:0;bottom:0;z-index:2;display:block;width:4px;height:10px;overflow:hidden;margin:0;padding:0;border:0 none;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"></div></div><div style="border: 0px none; margin: -1px 0px 0px; padding: 0px; pointer-events: none; float: right; height: 22px;"><a href="https://ssl.pstatic.net/static/maps/mantle/notice/legal.html" target="_blank" style="display: block; width: 48px; height: 17px; overflow: hidden; margin: 0px 5px 5px 12px; pointer-events: auto;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/naver-normal-new.png" width="48" height="17" alt="NAVER" style="display:block;width:48px;height:17px;overflow:hidden;border:0 none;margin:0;padding:0;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"></a></div></div><div style="position: absolute; z-index: 100; margin: 0px; padding: 0px; pointer-events: none; bottom: 0px; left: 0px;"><div style="border: 0px none; margin: 0px; padding: 0px; pointer-events: none; float: left; height: 19px;"><div class="map_copyright" style="margin: 0px; padding: 0px 0px 2px 10px; height: 19px; line-height: 19px; color: rgb(68, 68, 68); font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; font-size: 11px; clear: both; white-space: nowrap; pointer-events: none;"><div style="float: left;"><span style="white-space: pre; color: rgb(68, 68, 68);">© NAVER Corp.</span></div><a href="#" style="font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; font-size: 11px; line-height: 19px; margin: 0px 0px 0px 5px; padding: 0px; color: rgb(68, 68, 68); float: left; pointer-events: auto; text-decoration: underline; display: none;">더보기</a><div style="float: left;"><a target="_blank" href="http://www.openstreetmap.org/copyright" style="pointer-events: auto; white-space: pre; display: none; color: rgb(68, 68, 68);"> /OpenStreetMap</a></div></div></div></div><div style="border: 1px solid rgb(41, 41, 48); background: rgb(255, 255, 255); padding: 15px; color: rgb(51, 51, 51); position: absolute; font-size: 11px; line-height: 1.5; clear: both; display: none; max-width: 350px !important; max-height: 300px !important;"><h5 style="font-size: 12px; margin-top: 0px; margin-bottom: 10px;">지도 데이터</h5><a href="#" style="position: absolute; top: 8px; right: 8px; width: 14px; height: 14px; font-size: 14px; line-height: 14px; display: block; overflow: hidden; color: rgb(68, 68, 68); text-decoration: none; font-weight: bold; text-align: center;">x</a><div><span style="white-space: pre; color: rgb(68, 68, 68); float: left;">© NAVER Corp.</span><a target="_blank" href="http://www.openstreetmap.org/copyright" style="pointer-events: auto; white-space: pre; color: rgb(68, 68, 68); float: left; display: none;"> /OpenStreetMap</a></div></div><div style="position: absolute; z-index: 100; margin: 0px; padding: 0px; pointer-events: none; top: 0px; left: 0px;"><div style="border: 0px none; margin: 0px; padding: 0px; pointer-events: none; float: left;"><div style="position: relative; z-index: 4; pointer-events: auto;"><div style="position: relative; z-index: 0; width: 28px; margin: 10px; border: 1px solid rgb(68, 68, 68); box-sizing: content-box !important; user-select: none;"><a href="#" style="position: relative; z-index: 2; width: 28px; height: 28px; cursor: pointer; display: block; overflow: hidden; border-bottom: 0px none; box-sizing: content-box !important;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-in-small-normal.png" width="28" height="28" alt="지도 확대" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 28px; height: 28px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"></a><div style="position: relative; width: 28px; height: 156px; overflow: hidden; margin: 0px; padding: 7px 0px; background-color: rgb(255, 255, 255); cursor: pointer; box-sizing: content-box !important; display: none;"><div style="position: absolute; top: 7px; bottom: 7px; left: 12px; width: 4px; height: 156px; display: block; background-color: rgb(47, 135, 236);"></div><div style="position: absolute; top: 7px; bottom: 7px; left: 12px; width: 4px; height: 54px; display: block; background-color: rgb(202, 205, 209);"></div><a href="#" style="position: absolute; left: 4px; width: 18px; height: 10px; top: 54px; border: 1px solid rgb(68, 68, 68); cursor: move; display: block; overflow: hidden; box-sizing: content-box !important;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-handle.png" width="18" height="10" alt="지도 확대/축소 슬라이더" style="margin:0;padding:0;border:solid 0 transparent;display:block;box-sizing:content-box !important;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;width:18px;height:10px;"></a></div><a href="#" style="position: relative; z-index: 2; width: 28px; height: 28px; cursor: pointer; display: block; overflow: hidden; border-top: 1px solid rgb(202, 205, 209); box-sizing: content-box !important;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-out-small-normal.png" width="28" height="28" alt="지도 축소" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 28px; height: 28px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"></a><div style="position: absolute; top: 22px; width: 44px; height: 0px; overflow: visible; display: none; left: 36px;"><div style="display: block; margin: 0px; padding: 0px;"><h4 style="visibility:hidden;width:0;height:0;overflow:hidden;margin:0;padding:0;">지도 컨트롤러 범례</h4><div style="position: absolute; top: 43px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; overflow: hidden; box-sizing: content-box !important; visibility: visible;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-legend-right-on.png" alt="" style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><span style="margin: 0px; border: 0px solid transparent; display: block; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; position: relative; z-index: 2; line-height: 17px; color: rgb(255, 255, 255); font-size: 11px; padding: 0px 0px 0px 4px; text-align: center; letter-spacing: -1px; box-sizing: content-box !important;">부동산</span></div><div style="position: absolute; top: 63px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; overflow: hidden; box-sizing: content-box !important; visibility: visible;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-legend-right-normal.png" alt="" style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><span style="margin: 0px; border: 0px solid transparent; display: block; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; position: relative; z-index: 2; line-height: 17px; color: rgb(255, 255, 255); font-size: 11px; padding: 0px 0px 0px 4px; text-align: center; letter-spacing: -1px; box-sizing: content-box !important;">거리</span></div><div style="position: absolute; top: 83px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; overflow: hidden; box-sizing: content-box !important; visibility: visible;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-legend-right-normal.png" alt="" style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><span style="margin: 0px; border: 0px solid transparent; display: block; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; position: relative; z-index: 2; line-height: 17px; color: rgb(255, 255, 255); font-size: 11px; padding: 0px 0px 0px 4px; text-align: center; letter-spacing: -1px; box-sizing: content-box !important;">읍,면,동</span></div><div style="position: absolute; top: 113px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; overflow: hidden; box-sizing: content-box !important; visibility: visible;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-legend-right-normal.png" alt="" style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><span style="margin: 0px; border: 0px solid transparent; display: block; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; position: relative; z-index: 2; line-height: 17px; color: rgb(255, 255, 255); font-size: 11px; padding: 0px 0px 0px 4px; text-align: center; letter-spacing: -1px; box-sizing: content-box !important;">시,군,구</span></div><div style="position: absolute; top: 143px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; overflow: hidden; box-sizing: content-box !important; visibility: visible;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-legend-right-normal.png" alt="" style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><span style="margin: 0px; border: 0px solid transparent; display: block; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; position: relative; z-index: 2; line-height: 17px; color: rgb(255, 255, 255); font-size: 11px; padding: 0px 0px 0px 4px; text-align: center; letter-spacing: -1px; box-sizing: content-box !important;">시,도</span></div><div style="position: absolute; top: 163px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; overflow: hidden; box-sizing: content-box !important; visibility: hidden;"><img src="https://ssl.pstatic.net/static/maps/mantle/1x/zoom-legend-right-normal.png" alt="" style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 44px; height: 17px; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important;"><span style="margin: 0px; border: 0px solid transparent; display: block; font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; position: relative; z-index: 2; line-height: 17px; color: rgb(255, 255, 255); font-size: 11px; padding: 0px 0px 0px 4px; text-align: center; letter-spacing: -1px; box-sizing: content-box !important;">국가</span></div></div></div></div></div></div></div></div>
                        </div>
                    </div>
                    <div class="p-3" style="background-color: #4a4a4a;">
                        <div class="row">
                            <div class="col-1 d-flex align-items-center">
                                <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mapmarker_white.svg" class="img-fluid" alt="Responsive image">
                            </div>
                            <div class="col-8 text-left p-0">
                                <div style="  letter-spacing: -0.4px;color: #ffffff;font-size: 14px;">
                                    서울특별시 서초구 사평대로 360 2층 (서초동, 양지빌딩)
                                </div>
                                <div style="  letter-spacing: -0.4px;color: #ffffff;font-size: 12px;font-weight: 300;">
                                    (신논현역 7번 출구로부터 140m)
                                </div>
                            </div>
                        </div>
                    </div>
    
                    
                    <a class="anchor" id="pricedetailinfo"></a>
                    
    
                    
                    <a class="anchor" id="reviewdetailinfo"></a>
                    <div class="my-5 border-top pt-5">
                        <div class="text-left mb-2" style="font-size: 20px;">
                            리뷰 <b style="color: #007ee5;">107</b>
                        </div>
    
                        
                        
                        <div class="border">
                        <div class="row px-3">
    
                            <div class="col-4 px-3 pt-3 pb-0" style="border-right:solid 1px #e9e9e9; background-color: #f8f8f8;">
                                <div style="color: #494949;letter-spacing: -0.6px;font-size: 14px;" class="mb-2">
                                    별점 평균
                                </div>
                                <div style="letter-spacing: -1.05px;text-align: center;color: #9b9b9b;font-size: 18px;" class="mb-2">
                                    <b style="letter-spacing:-2.33px; font-size: 40px; font-weight: bold;color: #000000;">
                                        9.5
                                    </b> / 10
                                </div>
                                <div class="row border-top pt-2">
                                    <div class="col d-flex align-items-end justify-content-center" style="color: #4c1192;font-size:14px;font-weight: bold">
                                        <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/goodface_color_small.svg" class="img-fluid mr-2" alt="Responsive image">
                                        43
                                    </div>
                                    <div class="col d-flex align-items-center justify-content-center" style="color: #494949; font-size:14px;font-weight: bold">
                                        <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/wrongface_small.svg" class="img-fluid mr-2" alt="Responsive image">
                                        4
                                    </div>
                                </div>
                            </div>
    
                            <div class="col-4 p-3">
                                <div style="color: #494949;letter-spacing: -0.6px;font-size: 14px;" class="mb-3">
                                    이 의사는…
                                </div>
                                <div class="review-in-detail-score-box">
                                    
                                    
                                    <div class="row my-1">
                                        <div class="col-5 p-0 pl-4 d-flex align-items-center justify-content-start" style="letter-spacing: -0.6px;font-size: 12px">자세한 설명</div>
                                        <div class="col-7 p-0">
                                        
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                        
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                        
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                        
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                        
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                        
                                        </div>
                                    </div>
                                    
                                    
                                    
                                    
                                    
                                    <div class="row my-1">
                                        <div class="col-5 p-0 pl-4 d-flex align-items-center justify-content-start" style="letter-spacing: -0.6px;font-size: 12px">적절한 금액</div>
                                        <div class="col-7 p-0">
                                        
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                        
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                        
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                        
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                        
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                        
                                        </div>
                                    </div>
                                    
                                    
                                    
                                    
                                    
                                    <div class="row my-1">
                                        <div class="col-5 p-0 pl-4 d-flex align-items-center justify-content-start" style="letter-spacing: -0.6px;font-size: 12px">치료후 결과</div>
                                        <div class="col-7 p-0">
                                        
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
    
                            <div class="col-4 p-3">
                                <div style="color: #494949;letter-spacing: -0.6px;font-size: 14px;" class="mb-3">
                                    이 병원은…
                                </div>
                                <div class="review-in-detail-score-box">
                                    
                                    
                                    
                                    
                                    <div class="row my-1">
                                        <div class="col-5 p-0 pl-4 d-flex align-items-center justify-content-start" style="letter-spacing: -0.6px;font-size: 12px">직원의 친절</div>
                                        <div class="col-7 p-0">
                                        
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="" class="star-image">
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="" class="star-image">
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="" class="star-image">
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="" class="star-image">
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="" class="star-image">
                                            
                                        </div>
                                    </div>
                                    
                                    
                                    <div class="row my-1">
                                        <div class="col-5 p-0 pl-4 d-flex align-items-center justify-content-start" style="letter-spacing: -0.6px;font-size: 12px">대기시간</div>
                                        <div class="col-7 p-0">
                                        
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="" class="star-image">
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="" class="star-image">
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="" class="star-image">
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="" class="star-image">
                                            
                                        
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="" class="star-image">
                                            
                                        
                                        </div>
                                    </div>
                                    
                                    <div class="row my-1">
                                        <div class="col-5 p-0 pl-4 d-flex align-items-center justify-content-start" style="letter-spacing: -0.6px;font-size: 12px">청결함</div>
                                        <div class="col-7 p-0">
                                        
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="" class="star-image">
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="" class="star-image">
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="" class="star-image">
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="" class="star-image">
                                            
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="" class="star-image">
                                            
                                        
                                        </div>
                                    </div>
                                    
                                    
                                </div>
                            </div>
    
                        </div>
                        </div>
                        
                        
                    </div>
    
                    
                    <div class="form-group m-0 w-100 mt-4" style="background-color: #FFFFFF;border: solid 2px #494949;">
                        <div class="input-group d-flex align-items-center">
                            <input type="text" id="review_query" class="form-control border-0  p-4 " value="" placeholder="내가 원하는 키워드만 검색해보세요." aria-describedby="landing-search-button" style="font-size: 16px;">
                            <div class="input-group-append">
                                <button type="submit" class="btn-submit-review-query border-0" id="landing-search-button" style="background-color: #494949; padding:12px;">
                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/searchicon_white.svg" alt="Responsive image">
                                </button>
                            </div>
                        </div>
                    </div>
    
                    <!--리뷰 정렬 부분!-->
                    <div class="review-sort-count-box d-flex justify-content-between align-items-center pl-2 py-4">
                        <div style="color: #007ee5;font-size: 14px;">
                            전체 <strong>107</strong>
                        </div>
    
                        <!--------------------------------------->
                        
                        <div class="container mt-3">
                                                                  
                            <div class="dropdown">
                              <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                기본 정렬
                              </button>
                              <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">기본 정렬</a>
                                <a class="dropdown-item" href="#">최신 순서</a>
                                <a class="dropdown-item" href="#">좋아요 많은 순서</a>
                                <a class="dropdown-item" href="#">평점 높은 순서</a>
                                <a class="dropdown-item" href="#">평점 낮은 순서</a>  
                              </div>
                            </div>
                        </div>
                        
                        <!--------------------------------------->
                        
                    </div>
                    

                    <script>
                        $(document).ready(function(){
                        $(".dropdown-toggle").dropdown();
                        });
                    </script>

                    
                    <!-- 리뷰텍스트 -->
                    
                    <div class="review-in-detail-text-box">
                        <!--------------------------------------------------------------->
                       
                        
                        <div class="review-in-detail-text-box-review border-top pt-4 pb-5">
                        <div class="row">
    
                            <div class="review-in-detail-text-box-profile col-4">
                            
                            <a href="/community/about_others/31926/" style="color: inherit;text-decoration: none;">
                            
                            <div class="row ml-1 border-bottom pb-2">
                                <div class="col-5">
                                    <div class="reviewer_profile_avatar" style="width:48px;height:100%;">
                                        <img src="https://d23zwvh2kbhdec.cloudfront.net/media/public/customers/photos/animals/lion.png" style="width:100%;height:auto;">
                                    </div>
                                </div>
    
                                <div class="reviewer_profile_story col-7 text-left pl-0">
                                    
    
                                    <div class="reviewer-name" style="letter-spacing: -0.9px;color: #000000;  font-size: 14px;font-weight: bold;">
                                        신사동멍청이
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <div style="letter-spacing: -0.6px;color: #9b9b9b;font-size: 12px;" class="mr-2">
                                            <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/follower_icon.svg" class="img-fluid" alt="Responsive image">
                                            0
                                        </div>
                                        <div style="letter-spacing: -0.6px;color: #9b9b9b;font-size: 12px;" class="mr-2">
                                            <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/reviewcount.svg" class="img-fluid" alt="Responsive image">
                                            4
                                        </div>
                                        <div style="letter-spacing: -0.6px;color: #9b9b9b;font-size: 12px;">
                                            <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/like.svg" class="img-fluid" alt="Responsive image">
                                            0
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            </a>
                            
    
                            
    
                            <div class="d-flex justify-content-between align-items-center row ml-1 border-bottom pb-2 pt-2 pl-2">
                                <div>
                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon-purple.svg" class="img-fluid" alt="Responsive image">
                                    <span class="h-100 align-bottom" style="font-size: 18px;font-weight: bold;letter-spacing: -0.9px;color: #007ee5;">
                                        9.3
                                    </span>
                                    <span style="letter-spacing: -0.7px;color: #9b9b9b;font-size: 14px;"> / 10 </span>
                                </div>
                                
                                <div>
                                
                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/goodface_color_small.svg" style="width:21px;height:21px;" alt="Responsive image">
                                
                                </div>
                                
                            </div>
    
                            <div class="py-2">
                                
                                <div class="row ml-4 d-flex justify-content-between border-bottom mt-2">
                                    <div style="font-size:12px;font-weight:500;">자세한 설명</div>
                                    <div>
                                        
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                    </div>
                                </div>
                                
                                <div class="row ml-4 d-flex justify-content-between border-bottom mt-2">
                                    <div style="font-size:12px;font-weight:500;">직원의 친절</div>
                                    <div>
                                        
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                         
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                           
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
    
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
    
                                        
                                    </div>
                                </div>
                                
                                <div class="row ml-4 d-flex justify-content-between border-bottom mt-2">
                                    <div style="font-size:12px;font-weight:500;">적절한 금액</div>
                                    <div>
                                        
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
    
                                        
                                    </div>
                                </div>
                                
                                <div class="row ml-4 d-flex justify-content-between border-bottom mt-2">
                                    <div style="font-size:12px;font-weight:500;">대기시간</div>
                                    <div>
                                    
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            
    
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            
    
                                        
                                    </div>
                                </div>
                                
                                <div class="row ml-4 d-flex justify-content-between border-bottom mt-2">
                                    <div style="font-size:12px;font-weight:500;">치료후 결과</div>
                                    <div>
                                        
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
    
                                        
                                    </div>
                                </div>
                                
                                <div class="row ml-4 d-flex justify-content-between border-bottom mt-2">
                                    <div style="font-size:12px;font-weight:500;">청결함</div>
                                    <div>
                                        
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
                                                    <img style="vertical-align:top" src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            
    
                                        
                                    </div>
                                </div>
                                
                            </div>
                            
                            </div>
    
                            <div class="review-in-detail-text-box-content col-8 pl-5">
    
                                
                                <div class="d-flex justify-content-between">
                                     <div class="rounded-pill px-2" style="background-color: #007ee5; color:#FFFFFF;font-size: 10px;">
                                        영수증 인증된 리뷰
                                     </div>
                                    <div style="font-size: 11px;color: #9b9b9b;">
                                        4월 21일, 2020년 등록
                                    </div>
                                </div>
                                
    
                                
                                <div class="text-left mt-2 treatment-tag-box" style="font-weight: bold;letter-spacing: -0.8px;">
                                    받은 치료 :
                                    
                                        
                                            치과검진
                                            
                                        
                                    
                                </div>
                                
    
                                
                                    
                                        <div class="toast-message content-box text-left class49 mb-4" style="font-size: 14px;font-weight: 300;letter-spacing: -0.6px;">
                                            동네에 치과가 많지만 어머니가 친절하면서 과잉진료가 없는곳을 원하셔서 검색하다가 방문했습니다.
    환자분들이 많아서 예약시간보다 30~40분 기달렸지만 그래도 의사분이 꼼꼼히 봐주시고 원인과 다음 치료에 대해 자세히 설명히 해주셔서 어머니가 아주 만족하셨습니다.  그래서 기다림은 상관없을것 같습니다.
    다음 치료를 받으실지 어머니가 결정하셨고 계속 방문 예정입니다
    병원 안에는 소독제와 세면대가 있던데 손도 씼을수 있습니다.
                                        </div>
    
                                        
                                        
                                            <div class="mt-3 text-left" style="font-size: 14px; font-weight: bold;color: #494949;">치료 가격정보</div>
                                            <p class="toast-message price-content-box text-left class49 mt-1" style="font-size: 14px;font-weight: 300;letter-spacing: -0.6px;">치과검진: 23600원 <span style="font-size: 13px;">(스켈링 추가)</span><br></p>
                                            <br>
                                        
    
                                        <div class="d-flex my-2" style="overflow-x:auto;">
                                            
                                        </div>
    
                            </div>
                        </div>
                        </div>
    
                        
                            <nav class="my-3 pt-4" style="text-align:center; border-top: solid 1px #9b9b9b;">
                                <ul class="pagination d-flex justify-content-center">
                                    
    
                                    
                                      
                                        <li class="page-item active">
                                          <span class="page-link">1</span>
                                        </li>
                                      
                                    
                                      
                                        <li class="page-item"><a class="page-link" href="?page=2">2</a></li>
                                      
                                    
                                      
                                        <li class="page-item"><a class="page-link" href="?page=3">3</a></li>
                                      
                                    
                                      
                                    
                                      <li class="page-item">
                                        <a class="page-link" href="?page=11" aria-label="Next">
                                          <span aria-hidden="true"><i class="fas fa-chevron-right"></i></span>
                                          <span class="sr-only">end</span>
                                        </a>
                                      </li>
                                    
                                </ul>
                            </nav>
                        </div>
                </div>
    
    
                <!-- QnA -->
                <div class="row p-3 w-100">
                <div class="col-20 w-100">
                <a class="anchor" id="qnadetailinfo"></a>
                <div class="my-5 border-top pt-5 qna-box">
                    <div class="d-flex justify-content-between">
                        <div class="text-left mb-2" style="font-size: 20px;">
                            Q&amp;A <b style="color: #007ee5;">4</b>
                        </div>
                        <div class="color9b mt-1" style="font-weight: 300;letter-spacing: -0.5px;">
                           병원 관계자에게 질문 할 수 있습니다.
                        </div>
                    </div>
    
                    <div style="border-top: solid 1px #9b9b9b;">
                        
                            
                            <div class="border-bottom">
                                <div class="row px-3 pt-4 pb-3">
                                    <div class="col-1" style="font-weight: bold;letter-spacing: -0.5px;">
                                        <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/Q.svg" class="img-fluid mr-1 align-top" alt="Responsive image">
                                    </div>
                                    <div class="col-11 pl-0 text-left" style="font-weight: bold;letter-spacing: -0.5px;">
                                        어금니 임플란트 국내산 가격이 얼마일까요??
                                    </div>
                                </div>
    
                                
    
                                
                                
                                <div class="row px-3 py-2">
                                    <div class="col-1 offset-1 pl-0 pr-2">
                                        <img style="width:100%; height:auto;" src="https://d23zwvh2kbhdec.cloudfront.net/media/public/customers/photos/animals/hamster.png">
                                    </div>
                                    <div class="col-10 text-left pl-0" style="font-size: 14px;font-weight: 300;letter-spacing: -0.7px;">
                                        
                                        국내산이었는지는 모르겠지만 120정도 나왔습니다!
                                        
                                        <br>
                                        <b style="font-size: 12px;color: #9b9b9b;">2020.06.29</b>
                                    </div>
                                </div>
                                <div class="row px-3 pt-2 pb-4">
                                    <div class="col-11 offset-1 text-left pl-0">
                                        <button style="letter-spacing: -0.6px;color: #007ee5;font-size: 12px;" class="view-qna btn btn-transparent" onclick="location.href=&quot;/community/doctorpage_hospitalquestion_detail/391/6603/&quot;">
                                            답변 모두보기 <i class="fas fa-chevron-right"></i>
                                        </button>
                                    </div>
                                </div>
                                
    
                            </div>
                            
                            
                            <div class="border-bottom">
                                <div class="row px-3 pt-4 pb-3">
                                    <div class="col-1" style="font-weight: bold;letter-spacing: -0.5px;">
                                        <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/Q.svg" class="img-fluid mr-1 align-top" alt="Responsive image">
                                    </div>
                                    <div class="col-11 pl-0 text-left" style="font-weight: bold;letter-spacing: -0.5px;">
                                        크라운 비용은 어느정도 일까요?
                                    </div>
                                </div>
    
                                
                                <div class="row px-3 py-2">
                                    <div class="col-1 offset-1 pl-0 pr-2">
                                        <img style="width:100%; height:auto;" src="https://d23zwvh2kbhdec.cloudfront.net/media/public/customers/photos/animals/hamster.png">
                                    </div>
                                    <div class="col-10 text-left pl-0" style="font-size: 14px;font-weight: 300;letter-spacing: -0.7px;">
                                        
                                        리뷰보면 나와있긴 한데 어떤 걸로 하냐에 따라 좀 다른 것 같네요 ㅠㅠ 기본 25만원 정도일 것 같아요!
                                        
                                        <br>
                                        <b style="font-size: 12px;color: #9b9b9b;">2020.01.28</b>
                                    </div>
                                </div>
                                <div class="row px-3 pt-2 pb-4">
                                    <div class="col-11 offset-1 text-left pl-0">
                                        <button style="letter-spacing: -0.6px;color: #007ee5;font-size: 12px;" class="view-qna btn btn-transparent" onclick="location.href=&quot;/community/doctorpage_hospitalquestion_detail/318/6603/&quot;">
                                            답변 모두보기 <i class="fas fa-chevron-right"></i>
                                        </button>
                                    </div>
                                </div>
                                
    
                                
    
                            </div>
                            
                            
                            <div>
                                <button class="btn btn-blackcontent w-100 mt-3 p-2 view-qna" style="font-size: 18px; background-color: #007ee5; color: white;" 
                                onclick="location.href=&quot;/community/doctorpage_hospitalquestion_list/6603/&quot;">
                                    <strong>4</strong>개의 질문 모두 보기
                                </button>
                            </div>
                            
    
                        
                    </div>
                </div>
                </div>
                </div>
    
    
            </div>
    
    
        </div>
    </div>
    
    
    
    
    <script>

        // tooltip 활성화.
        
            $(function () {
                $('[data-toggle="tooltip"]').tooltip()
            });
        
    
        // 리뷰검색 & 리뷰정렬
        $(function() {
            $(document).on('click', '.btn-submit-review-query', function() {
    
                
                    var query = encodeURI($('#review_query').val());
                    var order_review = $('#sort-select-box').find('option:selected').val();
    
                    // query가 비어있으면 alert.
                    if (!query){
                        alert('검색어를 입력하세요!');
                        return;
                    }
    
                    var url = "/ajax_get_review_list/6603/" + '?q=' + query;
    
                    if (order_review) {
                        url += '&order_review=' + order_review
                    }
    
                    getWithAjax(url, function(data) {
                        $('.review-in-detail-text-box').html(data.html);
    
                        // 검색어 highlight.
                        var review_query = $('#review_query').val();
                        if (review_query) {
                            $('.treatment-tag-box, .price-content-box, .content-box').mark(review_query);
                        }
                    }, function(status) {});
                
    
            });
    
            // form 으로 wrap 되어 있지 않는 input은 엔터키를 쳐도 작동하지 않는 이슈 해결.
            $(document).on('keypress', '#review_query', function(event){
                if(event.keyCode == 13){
                    $('.btn-submit-review-query').click();
                }
            });
    
            // 정렬의 select option 중 하나를 변경할 때.
            $(document).on('change', '#sort-select-box',function() {
    
                
                    var order_review = $(this).find('option:selected').val();
                    var review_query = $('#review_query').val();
    
                    var qs = '';
                    if (review_query) {
                        qs += '&q=' + review_query;
                    }
                    if (order_review){
                        qs += '&order_review=' + order_review;
                    }
                    if (qs){
                        qs = '?' + qs.slice(1);
                    }
    
                    var url = "/ajax_get_review_list/6603/" + qs;
    
                    getWithAjax(url, function(data) {
                        $('.review-in-detail-text-box').html(data.html);
    
                        // 검색어 highlight.
                        var review_query = $('#review_query').val();
                        if (review_query){
                            $('.treatment-tag-box, .price-content-box, .content-box').mark(review_query);
                        }
    
                    }, function(status) {});
                
            });
    
            // 페이지 링크 클릭시.
            $(document).on('click', '.page-link', function(e) {
                e.preventDefault();
    
                var extra_url = $(this).attr('href');
                getWithAjax("/ajax_get_review_list/6603/" + extra_url,
                    function(data) {
                        $('.review-in-detail-text-box').html(data.html);
    
                        // 검색어 highlight.
                        var review_query = $('#review_query').val();
                        if (review_query){
                            $('.treatment-tag-box, .price-content-box, .content-box').mark(review_query);
                        }
                    },function(status) {}
                )
            });
    
            // 리뷰 검색 초기화.
            $(document).on('click', '.reset-search', function(e) {
                // 리뷰 검색어 초기화 및 정렬 초기화
                $('#review_query').val('');
                $('#sort-select-box').val('');
                $('#sort-select-box').selectpicker('refresh');
    
                var url = "/ajax_get_review_list/6603/";
    
                getWithAjax(url, function(data) {
                    $('.review-in-detail-text-box').html(data.html);
    
                }, function(status) {});
            })
    
        });
    
    
        // 자동 완성 모듈 실행
        auto_complete_on_v2_1();
    
        // 자동완성 텍스트 클릭시 검색
        $(document).on('click', '.auto-list-link', function() {
            var search_query = $(this).text();
            $('#query-search-box').val(search_query);
            $('#search-form').submit();
        })
      
    
    
        // 검색창 clear button
        $('#query-search-box').on('input propertychange', function() {
          var $this = $(this);
          var visible = Boolean($this.val());
          $('.form-control-clear').toggleClass('d-none', !visible);
        }).trigger('propertychange');
    
        $('.form-control-clear').click(function() {
          $('#query-search-box').val('')
            .trigger('propertychange').focus();
        });
    
      
    
    
        // 의사/병원 정보 수정요청 버튼 클릭시.
        $('.open_request_wrong_info').on('click', function() {
    
            if(logged_in == 'false' || is_customer == 'false'){
                alert('로그인을 한 후에 가능합니다!');
                $('#registerModal').modal();
            } else {
                // 리뷰 신고 form 비우기.
                $('.request-wrong-info-form textarea[name="comment"]').val('');
    
                $('#requestWrongInfoModal').modal();
            }
        });
        // 의사/병원 정보 form submit.
        $('.request-wrong-info-form').on('submit', function(e) {
            e.preventDefault();
    
            var doctor_id = $('.request-wrong-info-form input[name="doctor_id"]').val();
            var comment = $('.request-wrong-info-form textarea[name="comment"]').val();
    
            var form_data = {doctor_id: doctor_id, comment: comment};
    
            postWithAjax('/ajax_request_wrong_info/', form_data,
                    function(data){
                        var errors_info_request_wrong_info = $('.errors-info-request-wrong-info');
                        if (data.status == 'success'){
                            alert('의사/병원 정보 수정요청 접수되었습니다!');
                            $('#requestWrongInfoModal').modal('toggle');
                        } else if (data.status == 'not_logged_in'){
                            alert('로그인하신 후에 진행해주세요!');
                            $('#requestWrongInfoModal').modal('toggle');
                        } else if (data.status == 'already done'){
                            alert('이미 요청하셨습니다!');
                            $('#requestWrongInfoModal').modal('toggle');
                        } else if (data.status == 'fail'){
                            if (data.errors.comment){
                                errors_info_request_wrong_info.empty()
                                errors_info_request_wrong_info.append(html_error_info.f(data.errors.comment[0]));
                            } else {
                                alert('오류가 났습니다. 다시 시도해 주세요.');
                                $('#requestWrongInfoModal').modal('toggle');
                            }
                        }
                    },
                    function(status){
                        if (status = 403)
                            $('#islimited-popup-modal').modal('show');
                    }
            )
        });
    
        // 리뷰하기 페이지로 이동.
        $(document).on('click', '.open_review_submit', function() {
            ga('send', 'pageview', '/open_review/start/');
            location.href = "/mdd_event/?past_url=https%3A//www.modoodoc.com/doctors/6603/%25EC%259D%25B4%25EB%25AF%25B8%25EC%25A7%2580%25EC%25B9%2598%25EA%25B3%25BC%25EC%259D%2598%25EC%259B%2590-%25EC%2584%259C%25EC%259A%25B8%25EC%258B%259C-%25EC%2584%259C%25EC%25B4%2588%25EA%25B5%25AC/";
        });
        $(document).on('click', '.button_index_open', function() {
            ga('send', 'pageview', '/open_review/start/');
            location.href = "/mdd_event/?past_url=https%3A//www.modoodoc.com/doctors/6603/%25EC%259D%25B4%25EB%25AF%25B8%25EC%25A7%2580%25EC%25B9%2598%25EA%25B3%25BC%25EC%259D%2598%25EC%259B%2590-%25EC%2584%259C%25EC%259A%25B8%25EC%258B%259C-%25EC%2584%259C%25EC%25B4%2588%25EA%25B5%25AC/";
        });
    
        
       
        // 북마크 & QnA
        $(function() {
            $(document).on('click', '.cancel-bookmark', function() {
                postWithAjax('/community/delete/bookmark_doctor/6603/', {},
                    function(data){
                        $('.cancel-bookmark').replaceWith(data.html);
                    }, function(status){}
                )
            });
    
            $(document).on('click', '.create-bookmark', function() {
                
                postWithAjax('/community/create/bookmark_doctor/6603/', {},
                    function(data){
                        $('.create-bookmark').replaceWith(data.html);
                    }, function(status){}
                )
                
            });
    
            $(document).on('click', '.view-qna', function(e) {
                
            })
        });
    
        // 리뷰와 함께 제출된 이미지 클릭시 전체 화면 modal
        $('.cse-image').on('click', function() {
            $('#imageModal img').attr('src', $(this).attr('src'));
            $('#imageModal').modal();
        });
    });
    
    </script>
    
    
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=vpgh2tv6ww&amp;callback=initMapNaver"></script>
    <script>
        function initMapNaver() {
    
            var map = new naver.maps.Map(document.getElementById('map_canvas'), {
                useStyleMap: true,
                center: new naver.maps.LatLng("37.503543123200000", "127.022397327000000"),
                zoom: 16,
                zoomControl: true,
                zoomControlOptions: {
                    style: naver.maps.ZoomControlStyle.SMALL,
                    position: naver.maps.Position.TOP_LEFT
                },
            });
    
            var markerPos = new naver.maps.LatLng("37.503543123200000", "127.022397327000000");
            var marker = new naver.maps.Marker({
                map: map,
                position: markerPos,
                icon: {
                    url: 'https://d23zwvh2kbhdec.cloudfront.net/media/public/marker_selected.png'
                },
            });
    
        }
    </script>


	 <%@ include file="../static/footer.jsp" %>
	
	<!--====== Javascripts & Jquery ======-->
	<script src="<%=request.getContextPath()%>/resources/js/jquery-3.2.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/jquery.slicknav.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/mixitup.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>

	</body>
</html>
    