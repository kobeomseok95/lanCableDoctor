<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.ArrayList,com.kh.landocProject.cmypage.model.vo.LikeHp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>찜한병원</title>
<meta charset="UTF-8">
<meta name="description" content="SolMusic HTML Template">
<meta name="keywords" content="music, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Favicon -->
<link href="<%=request.getContextPath()%>/resources/img/favicon.ico"
	rel="shortcut icon" />
<!-- Font - Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
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
.checked {
	color: orange;
}

.wrap {
	position: absolute;
	left: 0;
	bottom: 40px;
	width: 288px;
	height: 132px;
	margin-left: -144px;
	text-align: left;
	overflow: hidden;
	font-size: 12px;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	line-height: 1.5;
}

.wrap * {
	padding: 0;
	margin: 0;
}

.wrap .info {
	width: 286px;
	height: 120px;
	border-radius: 5px;
	border-bottom: 2px solid #ccc;
	border-right: 1px solid #ccc;
	overflow: hidden;
	background: #fff;
}

.wrap .info:nth-child(1) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.info .title {
	padding: 5px 0 0 10px;
	height: 30px;
	background: rgba(0, 123, 255, .5);
	border-bottom: 1px solid #ddd;
	font-size: 16px;
	font-weight: bold;
	color: white;
}

.info .close {
	position: absolute;
	top: 10px;
	right: 10px;
	color: #888;
	width: 17px;
	height: 17px;
	background:
		url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');
}

.info .close:hover {
	cursor: pointer;
}

.info .body {
	position: relative;
	overflow: hidden;
}

.info .desc {
	position: relative;
	margin: 13px 0 0 90px;
	height: 75px;
}

.desc .ellipsis {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.desc .jibun {
	font-size: 12px;
	color: #888;
	margin-top: -2px;
}

.info .img {
	position: absolute;
	top: 6px;
	left: 5px;
	width: 73px;
	height: 71px;
	border: 1px solid #ddd;
	color: #888;
	overflow: hidden;
}

.info:after {
	content: '';
	position: absolute;
	margin-left: -12px;
	left: 50%;
	bottom: 0;
	width: 22px;
	height: 12px;
	background:
		url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}

.info .link {
	color: #5085BB;
}

#map {
	position: sticky;
	top: 0;
	margin-top: 50px;
}
.goProfile{
	margin-left: 9px;
}
</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://kit.fontawesome.com/02aa01148e.js" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>

<body>
	<link rel="stylesheet" type="text/css" href="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/customer_web/style.css">
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<%@ include file="../static/header.jsp"%>

	<div class="container" style="margin-bottom: 80px; text-align: center;">
		<div style="width: 960px; display: inline-block">
			<form action="searchDr.do" method="get">
	            <input type="text" id="searchProduct" name="drName" class="mb-4"
	            placeholder="의사선생님 성함을 입력해주세요!" value="${drName }" />
	            <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
           	</form>
           	
			<div class="row doctor-list-box">

				<!-- doctor list -->
				<div class="col-6 mt-3 scrollspy-example">

					<div class="doctors-title-box pb-2 text-left"
						style="border-bottom: solid darkgray 1px;">
						<div style="font-size: 20px;">
							<b class="ml-3">'${drName}' 선생님! 나와주세요!</b>
						</div>
					</div>

					<!-- doctors card list -->
					<div class="doctor-list-section mt-2 ">
						<c:if test="${empty searchList}">
							<div class="doctor-total-box border-bottom">
								<p class="m-0">검색 결과가 없습니다.</p>
							</div>
						</c:if>
						<c:if test="${!empty searchList}">
							<c:forEach var="list" items="${searchList}">
								<div class="doctor-total-box border-bottom">
								<!-- -------------------------------------------------------------------------------- -->
									<a href="checkDrProfile.do?replyDrNo=${list.drNo }" style="color: inherit; text-decoration: none;">
										<div class="doctor-box p-2 pt-3" data-id="35982" data-slug="">
											<div class="row px-3">
												<div class="col-3 profile-doctor-image-box p-0">
													<c:if test="${empty list.profileFileName }">
													<img src="/projectFiles/doctorProfile.png">
													</c:if>
													<c:if test="${!empty list.profileFileName }">
													<img src="/projectFiles/${list.profileFileName}"
														class="img-circle profile-doctor-image border"
														style="width: 97px; height: 97px;">
													</c:if>
												</div>
												<div class="col-8 profile-doctor-box  text-left">
													<div style="font-size: 14px; font-weight: bold; overflow: hidden; text-overflow: ellipsis; white-space: nowrap"
													class="mb-2">
														${list.drName}
													</div>
													<div style="font-size: 16px; font-weight: 300"
														class="d-flex justify-content-start align-items-start mb-2">
														${list.hpName}
													</div>
													<div class="review-star-box d-flex align-items-start mt-1">
														 <span class="mr-4">
															 <span class="material-icons favorite" style="font-size:30px; color:red;">favorite</span>
															 <b>${list.drLike}</b>
														</span>
														<%--  <span>
															 <i class="fas fa-thumbs-down fa-2x"
															 style="color: #a82400;"></i>
															 <b>${list.drDislike}</b>
														</span> --%>
														
														<div class="review-count-box ml-5"
															style="font-size: 16px;">
															<span>채택률</span>
															<span>${list.choosePer}%</span>
														</div>
														
													</div>
												</div>
											</div>
											<div class="row pl-4 pt-3 pb-1">
												<div class="col-11 offset-1 p-0"
													style="border-bottom: solid 1px #f8f8f8"></div>
											</div>
											<div class="row px-3 pb-0" style="font-size: 14px;">
												<div class="col-4 offset-1 text-left border-right pl-2 pr-1"
													style="letter-spacing: -0.8px;">${h.drEmail }</div>
												<div class="col-7 text-left color9b pl-1"
													style="letter-spacing: -0.8px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap">
													<img
														src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/location_inactive.svg"
														style="width: 12px; height: 16.5px;"
														alt="Responsive image"> ${list.hpAddress }
												</div>
											</div>
										</div>
									</a>
								</div>
							</c:forEach>
						</c:if>
					</div>
				</div>
				<div id="map" style="width: 500px; height: 865px;" class="col-6"></div>
			</div>
		</div>
	</div>
	<%@ include file="../static/footer.jsp"%>
	<!--====== Javascripts & Jquery ======-->
	<script src="<%=request.getContextPath()%>/resources/js/jquery-3.2.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/jquery.slicknav.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/mixitup.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0dc4c5330fadaa329deb65c826969980&libraries=services,clusterer,drawing"></script>
	<script>
	function userKeyPress(){
		if(window.event.keyCode == 13){
			window.event.keyCode = 0;
		}
		else{
			return ;
		}
	}
	var mapContainer = document.getElementById('map');
	var mapOption = {
	    center: new daum.maps.LatLng(35.9361525430941, 127.86992756379321),
	    level: 13
	};  
	var map = new daum.maps.Map(mapContainer, mapOption); 
	var geocoder = new daum.maps.services.Geocoder();
	
	var searchList = new Array();
	<c:forEach var="list" items="${searchList}" >
		searchList.push({
			"hpName" : "${list.hpName}",
			"hpAddress" : "${list.hpAddress}",
			"profileFileName" : "${list.profileFileName}",
			"drName" : "${list.drName}",
			"drNo" : "${list.drNo}",
			"hpNo" : "${list.hpNo}",
			"hpCategoryName" : "${list.hpCategoryName}"
		});
	</c:forEach>
	var listAdr = new Array();
	<c:forEach var="list" items="${searchList}" >
		listAdr.push("${list.hpAddress}");
	</c:forEach>
	
	listAdr.forEach(function(addr, index){
	      
	    geocoder.addressSearch(addr, function(result, status) {
	        if (status === daum.maps.services.Status.OK) {
	            var coords = new daum.maps.LatLng(result[0].y, result[0].x);
	
	            var marker = new daum.maps.Marker({
	                map: map,
	                position: coords
	            });
	        
	            var contentDiv = document.createElement('div'); 
	            contentDiv.className = 'wrap';
	          
	            var infoDiv = document.createElement('div');
	            infoDiv.className = 'info';
	            contentDiv.appendChild(infoDiv);
	            
	            var titleDiv = document.createElement('div');
	            titleDiv.className = 'title';
	            for(var i in searchList){
	            	if(listAdr[index] === searchList[i].hpAddress){
			            titleDiv.innerHTML=searchList[i].drName + " 선생님";
	            	}
	            }
	            
	            var goProfile = document.createElement('a');
	            for(var i in searchList){
	            	if(listAdr[index] === searchList[i].hpAddress){
			            goProfile.setAttribute('href', 'checkDrProfile.do?replyDrNo=' + searchList[i].drNo);		//의사 프로필
			            break;
	            	}
	            }
	            goProfile.className = 'goProfile';
	            goProfile.innerHTML = '<i class="far fa-address-card fa-lg"></i>';
	            infoDiv.appendChild(titleDiv);
	            titleDiv.appendChild(goProfile);
	            
	            var closeBtn = document.createElement('button');
	            closeBtn.className = 'close';
	            
	            titleDiv.appendChild(closeBtn);
	         
	            // 닫기 이벤트 추가
	            closeBtn.onclick = function() {
	                overlay.setMap(null);
	            };
				
	            var body = document.createElement('div');
	            body.className='body';
	            infoDiv.appendChild(body);
	            
	            var img = document.createElement('div');
	            img.className='img';
	            body.appendChild(img);
	            
            	//지도에 맞는 의사와, 해당 의사가 프사가 있는지 판별
            	var imgsrc;
            	for(var i in searchList){
            		if(searchList[i].hpAddress === listAdr[index] && 
            				searchList[i].profileFileName === ""){
						imgsrc = document.createElement('img');
						imgsrc.setAttribute('src', '/projectFiles/doctorProfile.png');
						imgsrc.setAttribute('style', 'color: #45668e;');
            		}
            		else if(searchList[i].hpAddress === listAdr[index] && 
            				searchList[i].profileFileName !== ""){
            			imgsrc =  document.createElement('img');
                     	imgsrc.setAttribute( 'src', '/projectFiles/' + searchList[i].profileFileName );
                     	imgsrc.setAttribute( 'style', 'width: 100%; height: 100%;' );
            		}
            	}
            	img.appendChild(imgsrc);
	            
	            var desc = document.createElement("div");
	            desc.className='desc';
	            body.appendChild(desc);
	            
	            var category = document.createElement("div");
	            category.className = 'category';
	            for(var i in searchList){
	            	if(searchList[i].hpAddress === listAdr[index]) {
		            	category.innerHTML = searchList[i].hpCategoryName;
	            	}
	            }
	            desc.appendChild(category);
	            
	            var ellipsis = document.createElement('div');
	            ellipsis.className ='ellipsis';
	            for(var i in searchList){
	            	if(searchList[i].hpAddress === listAdr[index]){
			            ellipsis.innerHTML=searchList[i].hpName;	            		
	            	}
	            }
	            desc.appendChild(ellipsis);
	            
	            /*
	            var score = document.createElement('div');
	            score.className='jibun ellipsis';
	            desc.appendChild(score);
	            
	            var star = document.createElement('span')
	            star.className='fa fa-star checked';
	            score.appendChild(별);
	            
	            var starscore = document.createElement('span');
	            starscore.innerHTML='('+listAvgRate[index]+')';
	            score.appendChild(starscore);
	            */
	            var page = document.createElement('div');
	            desc.appendChild(page);
	            
	            var a = document.createElement('a');
	            for(var i in searchList){
	            	if(searchList[i].hpAddress === listAdr[index]){
			            a.setAttribute('href', 'mainHpReviewDetail.do?hpNo=' + searchList[i].hpNo);
	            	}
	            }
	            a.innerHTML='병원가기';
	            page.appendChild(a);
	            
	            var overlay = new kakao.maps.CustomOverlay({
	                 content: contentDiv,
	                 position: coords
	            });
	                
	             // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
	            kakao.maps.event.addListener(marker, 'click', function() {
	                overlay.setMap(map);
	            });
	            /*
	            kakao.maps.event.addListener(marker, 'mouseover', function() {
	                alert('marker mouseover!');
	            });
	            */
	        } 
	    });
	});
   
   
     // HTML5의 geolocaiton으로 사용할 수 있는지 확인합니다.
    if (navigator.geolocation) {
        // GeoLocation을 이용해서 접속 위치를 얻어옵니다.
        navigator.geolocation.getCurrentPosition(function(position){
            
            var lat = position.coords.latitude, // 위도
                lon = position.coords.longitude; // 경도
                
            var locPostion = new kakao.maps.LatLng(lat, lon), //마커가 표시될 위치를 geolocation 좌표로 생성합니다.
                message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다.

            // 마커와 인포윈도우를 표시합니다.
            displayMarker(locPostion,message);
        });
    } else {   

    }
    
    // 지도에 마커와 인포윈도우를 표시하는 함수입니다.
    function displayMarker(locPostion, message) {
        
    /*     // 마커를 생성합니다.
        var marker = new kakao.maps.Marker({
            map: map,
            position: locPostion
        });

        var iwContent = message, // 인포윈도우에 표시할 내용
            iwRemoveable = true;
        
        // 인포윈도우를 생성합니다.
        var infowindow = new kakao.maps.InfoWindow({
            content : iwContent,
            removable : iwRemoveable
        });

        // 인포윈도우를 마커위에 표시합니다.
        infowindow.open(map,marker); */

        // 지도 중심좌표를 접속위치로 변경합니다.
        map.setCenter(locPostion);
    }
   </script>
</body>
</html>