<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="java.util.ArrayList,com.kh.landocProject.cmypage.model.vo.LikeHp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>병원</title>
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
.checked {
   color: orange;
}


    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: rgba(0,123,255,.5);border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold; color: white;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 12px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}

	#map{position: sticky;  top:0; margin-top: 50px;}
	#hpInfo:hover{background-color: #007bff1f;}
	.star-image{width:15px; height:15px;}
</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
   <link rel="stylesheet" type="text/css"
      href="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/customer_web/style.css">
   <!-- Page Preloder -->
   <div id="preloder" >
      <div class="loader"></div>
   </div>

   <%@ include file="../static/header.jsp"%>

   <div class="container" style="margin-bottom: 80px; text-align: center;">
      <div style="width: 960px; display: inline-block">

         <div class="row doctor-list-box">

            <!-- doctor list -->
            <div class="col-6 mt-3 scrollspy-example" >

               <div class="doctors-title-box pb-2 text-left"
                  style="border-bottom: solid darkgray 1px;">
                  <c:if test="${empty cateName && not empty hpName }">
	                  <div style="font-size: 20px;">
	                     병원검색 <b class="ml-3" style="color: #0071ce">'${hpName}(${area})'</b>
	                  </div>
                  </c:if>
                  <c:if test="${not empty cateName && empty hpName }">
	                  <div style="font-size: 20px;">
	                     진료과목 검색 <b class="ml-3" style="color: #0071ce">'${cateName}'</b>
	                  </div>
                  </c:if>
               </div>

               <!-- doctors card list -->
               <div class="doctor-list-section mt-2 " >
                  <c:if test="${empty hp}">
                     <div class="doctor-total-box border-bottom">
                        <p class="m-0">검색결과와 일치하는 병원이 없습니다.</p>
                     </div>
                  </c:if>
                  <c:if test="${not empty hp}">
                  <c:forEach var="h" items="${hp}">
                  
                     <div class="doctor-total-box border-bottom detailHpReview" id="hpInfo" onmouseenter="hpover('${h.hpAddress}')" 
                      onmouseleave="hpout('${h.hpAddress}')">

                        <a href="#" style="color: inherit; text-decoration: none;" >

                           <div class="doctor-box p-2 pt-3" data-id="35982" data-slug="">
                              <div class="row px-3">

								<!-- 희지 병원 리뷰 디테일 페이지로 넘어가기 위한 input hidden태그 -->
								<input type="hidden" value="${h.hpNo }" class="hpNo">
                                 <div class="col-3 profile-doctor-image-box p-0">


                                    <img src="/projectFiles/${h.proRename}"
                                       class="img-circle profile-doctor-image border"
                                       style="width: 100%; height: 100%;">

                                 </div>

                                 <div class="col-8 profile-doctor-box  text-left">

                                    <div
                                       style="font-size: 14px; font-weight: 300; overflow: hidden; text-overflow: ellipsis; white-space: nowrap">
									${h.cateName}
                                    </div>


                                    <div style="font-size: 1.313rem; font-weight: bold"
                                       class="d-flex justify-content-start align-items-start">
                                       ${h.hpName}</div>


                                    <div class="review-star-box d-flex align-items-start mt-1">

                                       <c:if test="${h.hpAvgRate eq 0 }">
			                            			<img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
			                            	
			                            	
			                            	</c:if>
                            	 			<c:if test="${h.hpAvgRate ge 0 && h.hpAvgRate lt 1}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            
                                            <c:if test="${h.hpAvgRate eq 1}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${h.hpAvgRate gt 1 && h.hpAvgRate lt 2}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${h.hpAvgRate eq 2}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            
                                            <c:if test="${h.hpAvgRate gt 2 && h.hpAvgRate lt 3}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${h.hpAvgRate eq 3}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${h.hpAvgRate gt 3 && h.hpAvgRate lt 4}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                            <c:if test="${h.hpAvgRate eq 4}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Empty-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                          
                                            <c:if test="${h.hpAvgRate gt 4 && h.hpAvgRate lt 5}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Half-Full-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>
                                            
                                           <c:if test="${h.hpAvgRate eq 5}">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image"> 
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/Star-Full-icon.svg" alt="Responsive image" class="star-image">
                                            </c:if>



                                       <div class="review-count-box ml-1" style="font-size: 12px;">
                                          ${h.hpAvgRate} (${h.reviewCount})</div>
                                    </div>



                                 </div>
                              </div>


                              <div class="row pl-4 pt-3 pb-1">
                                 <div class="col-11 offset-1 p-0"
                                    style="border-bottom: solid 1px #f8f8f8"></div>
                              </div>


                              <div class="row px-3 pb-0" style="font-size: 14px;">
                                 <div class="col-4 offset-1 text-left border-right pl-2 pr-1"
                                    style="letter-spacing: -0.8px;">${h.hpTime }</div>
                                 <div class="col-7 text-left color9b pl-1"
                                    style="letter-spacing: -0.8px;overflow: hidden; text-overflow: ellipsis; white-space: nowrap">
                                    <img
                                       src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/location_inactive.svg"
                                       style="width: 12px; height: 16.5px;" alt="Responsive image">
                                    ${h.hpAddress }
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
   
   
   
   <!-- 희지 병원 리뷰 상세페이지 넘어가는 script -->
   <script>
   		$(".detailHpReview").click(function(){
   			var hpNo = $(this).children().children().children().children('.hpNo').val();
   			var orderBy = "1";
   			var currentPage = "1";
   			
   			location.href="mainHpReviewDetail.do?hpNo=" + hpNo +"&orderBy=" + orderBy +"&currentPage=" + currentPage;
   		})
   
   </script>
   


   <!-- <script type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0dc4c5330fadaa329deb65c826969980"></script>
   <script type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0dc4c5330fadaa329deb65c826969980&libraries=LIBRARY"></script> -->
   <script type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0dc4c5330fadaa329deb65c826969980&libraries=services,clusterer,drawing"></script>
   <script>
   var mapContainer = document.getElementById('map');
   var mapOption = {
       center: new daum.maps.LatLng(37.450701, 126.570667),
       level: 8
   };  

   var map = new daum.maps.Map(mapContainer, mapOption); 

   var geocoder = new daum.maps.services.Geocoder();
   
   /*필요한 병원 정보 리스트*/
   var listTitle = new Array();
   var listAdr = new Array();
   var listAvgRate = new Array();
   var listFile = new Array();
   var listHpNo = new Array();
   <c:forEach var="result" items="${hp}" >
      listTitle.push("${result.hpName}");
      listAdr.push("${result.hpAddress}");
      listAvgRate.push("${result.hpAvgRate}");
      listFile.push("${result.proRename}");
      listHpNo.push("${result.hpNo}");
   </c:forEach>
   
  
   listAdr.forEach(function(addr, index){
         
       geocoder.addressSearch(addr, function(result, status) {
           if (status === daum.maps.services.Status.OK) {
               var coords = new daum.maps.LatLng(result[0].y, result[0].x);

               var marker = new daum.maps.Marker({
                   map: map,
                   position: coords
               });
           
               var content = document.createElement('div'); 
               content.className = 'wrap';
             
               var info = document.createElement('div');
               info.className = 'info';
                content.appendChild(info);
               
               var title = document.createElement('div');
               title.className = 'title';
               title.innerHTML=listTitle[index];
               info.appendChild(title);
               
               var closeBtn = document.createElement('button');
               closeBtn.className = 'close';
               
               title.appendChild(closeBtn);
            
               // 닫기 이벤트 추가
               closeBtn.onclick = function() {
                   overlay.setMap(null);
               };

               
               var body = document.createElement('div');
               body.className='body';
               info.appendChild(body);
               
               var img = document.createElement('div');
               img.className='img';
               body.appendChild(img);
               
               var imgsrc =  document.createElement('img');
               imgsrc.setAttribute( 'src', '/projectFiles/'+listFile[index]);
               imgsrc.setAttribute('width','100%');
               imgsrc.setAttribute('height','100%');
               img.appendChild(imgsrc);
               
               var desc = document.createElement("div");
               desc.className='desc';
               body.appendChild(desc);
               
               var ellipsis = document.createElement('div');
               ellipsis.className ='ellipsis';
               ellipsis.innerHTML=listAdr[index];
               desc.appendChild(ellipsis);
               
               var score = document.createElement('div');
               score.className='jibun ellipsis';
              
               desc.appendChild(score);
               
              
               var star = document.createElement('span')
               star.className='fa fa-star checked';
               score.appendChild(star);
               
               var starscore = document.createElement('span');
               starscore.innerHTML='('+listAvgRate[index]+')';
               score.appendChild(starscore);
               
               var page = document.createElement('div');
               desc.appendChild(page);
               
               var a = document.createElement('a');
               a.setAttribute('href','mainHpReviewDetail.do?hpNo='+listHpNo[index]+'&orderBy=1&currentPage=1');
               a.innerHTML='상세보기';
               page.appendChild(a);
               
               var overlay = new kakao.maps.CustomOverlay({
                    content: content,
                    position:coords
                });
                   
                // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
                kakao.maps.event.addListener(marker, 'click', function() {
                    overlay.setMap(map);
                });
               
              
                 
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