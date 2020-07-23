<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@ page session="false" %> --%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <title>찜한병원</title>
   <meta charset="UTF-8">
   <meta name="description" content="SolMusic HTML Template">
   <meta name="keywords" content="music, html">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">

   <!-- Favicon -->
   <link href="<%=request.getContextPath()%>/resources/img/favicon.ico" rel="shortcut icon" />

   <!-- Google font -->
   <link
      href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap"
      rel="stylesheet">

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
    .checked{color: orange;}
	
   </style>
   <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
   <link rel="stylesheet" type="text/css" href="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/customer_web/style.css">
   <!-- Page Preloder -->
   <div id="preloder">
      <div class="loader"></div>
   </div>

   <%@ include file="../static/header.jsp" %>

   <div class="container" style="margin-bottom: 80px; text-align: center;">
        <div style="width: 960px; display: inline-block">
    
        <div class="row doctor-list-box">
 
            <!-- doctor list -->
            <div class="col-6 mt-3">
    
                <div class="doctors-title-box pb-2 text-left" style="border-bottom: solid darkgray 1px;">
                    <div style="font-size: 20px;">
          				    찜한 병원 
                        <b class="ml-3" style="color:#0071ce">${likeHpCount}</b>
                    </div>
                </div>
    
                <!-- doctors card list -->
                <div class="doctor-list-section mt-2 ">
                    
                   <c:forEach var="h" items="${likeHplist}">
                   <div class="doctor-total-box border-bottom">

                        <a href="#" style="color: inherit;text-decoration: none;">

                            <div class="doctor-box p-2 pt-3" data-id="35982" data-slug="">
                                <div class="row px-3">


                                    <div class="col-3 profile-doctor-image-box p-0">

                                    
                                        <img src="img/mainlogo.png" class="img-circle profile-doctor-image border" style="width:97px; height:97px;">
                                    
                                    </div>

                                    <div class="col-8 profile-doctor-box  text-left">
    
                                        <div style="font-size:14px;font-weight: 300;overflow: hidden;text-overflow: ellipsis;white-space: nowrap">
                                        
                                        </div>
    
                                        
                                        <div style="font-size: 1.313rem; font-weight:bold" class="d-flex justify-content-start align-items-start">
                               		             ${h.hpName}
                                        </div>
                                        
    
                                        <div class="review-star-box d-flex align-items-start mt-1">
                                           
                                           <c:if test="${h.hpAvgRate eq 0}">
	                                            <span class="fa fa-star"></span>
	                                            <span class="fa fa-star"></span>
	                                            <span class="fa fa-star"></span>
	                                            <span class="fa fa-star"></span>
	                                            <span class="fa fa-star"></span>
                                           </c:if>
                                            <c:if test="${h.hpAvgRate ge 1 && h.hpAvgRate le 3}">
	                                            <span class="fa fa-star checked"></span>
	                                            <span class="fa fa-star"></span>
	                                            <span class="fa fa-star"></span>
	                                            <span class="fa fa-star"></span>
	                                            <span class="fa fa-star"></span>
                                            </c:if>
                                            <c:if test="${h.hpAvgRate ge 4 && h.hpAvgRate le 5}">
	                                            <span class="fa fa-star checked"></span>
	                                            <span class="fa fa-star checked"></span>
	                                            <span class="fa fa-star"></span>
	                                            <span class="fa fa-star"></span>
	                                            <span class="fa fa-star"></span>
                                            </c:if>
                                            <c:if test="${h.hpAvgRate ge 6 && h.hpAvgRate le 7}">
	                                            <span class="fa fa-star checked"></span>
	                                            <span class="fa fa-star checked"></span>
	                                            <span class="fa fa-star checked"></span>
	                                            <span class="fa fa-star"></span>
	                                            <span class="fa fa-star"></span>
                                            </c:if>
                                            <c:if test="${h.hpAvgRate ge 8 && h.hpAvgRate le 9}">
	                                            <span class="fa fa-star checked"></span>
	                                            <span class="fa fa-star checked"></span>
	                                            <span class="fa fa-star checked"></span>
	                                            <span class="fa fa-star checked"></span>
	                                            <span class="fa fa-star"></span>
                                            </c:if>
                                            <c:if test="${h.hpAvgRate ge 10}">
	                                            <span class="fa fa-star checked"></span>
	                                            <span class="fa fa-star checked"></span>
	                                            <span class="fa fa-star checked"></span>
	                                            <span class="fa fa-star checked"></span>
	                                            <span class="fa fa-star checked"></span>
                                            </c:if>
                                            
                                                
                                           <div class="review-count-box ml-1" style="font-size: 12px;">
                                                ${h.hpAvgRate}
                                                (${h.hpReview})
                                            </div>
                                        </div>
    
                                     
    
                                    </div>
                                </div>

                                
                                <div class="row pl-4 pt-3 pb-1">
                                    <div class="col-11 offset-1 p-0" style="border-bottom:solid 1px #f8f8f8"></div>
                                </div>
                                

                                <div class="row px-3 pb-0" style="font-size: 14px;">
                                    <div class="col-4 offset-1 text-left border-right pl-2 pr-1" style="letter-spacing: -0.8px;">
                                        
                                           ${h.hpTime }
                                        
                                    </div>
                                    <div class="col-7 text-left color9b pl-1" style="letter-spacing: -0.8px;">
                                        <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/location_inactive.svg" style="width: 12px;height: 16.5px;" alt="Responsive image">
                                        ${h.hpAddress }
                                        </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    </c:forEach>

    			 </div>

            </div>
    
    
    
    	
           <div id="map" style="width:500px;height:865px;" class="col-6"></div>
        </div>
        
        
    </div>
    

    

   </div>

	
   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d9819f15f70efbcf9c7fa49a48295392"></script>
   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d9819f15f70efbcf9c7fa49a48295392&libraries=LIBRARY"></script>
   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d9819f15f70efbcf9c7fa49a48295392&libraries=services,clusterer,drawing"></script>
   <script>
	   var container = document.getElementById('map');
	   var options = {
		   center: new kakao.maps.LatLng(33.450701, 126.570667),
		   level: 3
	   };

	   var map = new kakao.maps.Map(container, options);
	   
	   
	   var positions = [
		    {
		        content: '<div><a href="#"><img src="<%=request.getContextPath()%>/resources/img/doctor.png" width="80px" height="80px">치과1</a></div>', 
		        latlng: new kakao.maps.LatLng(37.554279, 127.088226)
		    },
		    {
		        content: '<div><a href="#"><img src="<%=request.getContextPath()%>/resources/img/doctor.png" width="80px" height="80px">치과2</a></div>', 
		        latlng: new kakao.maps.LatLng(37.554487, 127.088834)
		    },
		    {
		        content: '<div>텃밭</div>', 
		        latlng: new kakao.maps.LatLng(33.450879, 126.569940)
		    },
		    {
		        content: '<div>근린공원</div>',
		        latlng: new kakao.maps.LatLng(33.451393, 126.570738)
		    }
		];

		for (var i = 0; i < positions.length; i ++) {
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng // 마커의 위치
		    });

		    // 마커에 표시할 인포윈도우를 생성합니다 
		    var infowindow = new kakao.maps.InfoWindow({
		        content: positions[i].content // 인포윈도우에 표시할 내용
		    });

		    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
		    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
		    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
		    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
		 	kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
		}

		// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
		function makeOverListener(map, marker, infowindow) {
		    return function() {
		        infowindow.open(map, marker);
		    };
		}

		// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
		function makeOutListener(infowindow) {
		    return function() {
		        infowindow.close();
		    };
		}
		
		
		// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
		if (navigator.geolocation) {
		    
		    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
		    navigator.geolocation.getCurrentPosition(function(position) {
		        
		        var lat = position.coords.latitude, // 위도
		            lon = position.coords.longitude; // 경도
		        
		        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
		            message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
		        
		        // 마커와 인포윈도우를 표시합니다
		        displayMarker(locPosition, message);
		            
		      });
		    
		} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
		    
		    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),    
		        message = 'geolocation을 사용할수 없어요..'
		        
		    displayMarker(locPosition, message);
		}

		// 지도에 마커와 인포윈도우를 표시하는 함수입니다
		function displayMarker(locPosition, message) {

		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({  
		        map: map, 
		        position: locPosition
		    }); 
		    
		    var iwContent = message, // 인포윈도우에 표시할 내용
		        iwRemoveable = true;

		    // 인포윈도우를 생성합니다
		    var infowindow = new kakao.maps.InfoWindow({
		        content : iwContent,
		        removable : iwRemoveable
		    });
		    
		    // 인포윈도우를 마커위에 표시합니다 
		    infowindow.open(map, marker);
		    
		    // 지도 중심좌표를 접속위치로 변경합니다
		    map.setCenter(locPosition);
		    
		    
		    
		    
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