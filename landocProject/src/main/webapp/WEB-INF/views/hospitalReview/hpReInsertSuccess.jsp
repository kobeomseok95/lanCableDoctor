<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


   <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   <![endif]-->
<style>


   
</style>
</head>
<body>
   <!-- Page Preloder -->
   <div id="preloder">
      <div class="loader"></div>
   </div>

    <%@ include file="../static/header.jsp" %>
    
    <link rel="stylesheet" type="text/css" href="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_05/mdd_event/style.css">
   
    <div class="d-flex justify-content-center mt-5">
        <div class="content-title1 mt-5 mb-5" style=" text-align: center;">
            <p class="m-0" style="font-size: 52px; color: rgba(0, 0, 0, 0.89);">병원 리뷰를 남겨주셔서</p>
            <p class="m-0" style="font-size: 52px; color: rgba(0, 0, 0, 0.89);">정말 감사합니다!</p>
        </div>
    </div>
    
    <div class="d-flex justify-content-center mb-3 content-box-text1" style="font-weight:300; text-align: center;">
        <div>
            <p class="m-0">작성하신 리뷰는 병의원을 찾는 다른 사람들에게 큰 도움이 됩니다.</p>
            <p class="m-0">환자들이 안심하고 의사를 찾을 수 있는 환경을 만들어 가겠습니다 :)</p>
        </div>
    </div>
    
    <div class="mx-auto mt-5 mb-3 pl-4 pr-4 pt-2 shadow-sm step5box">
            <ul class="list-group m-4 list-text">
              <li class="list-group-item border-0">
                  <div class="row">
                      <div class="col-sm-1 p-0">
                        <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_05/img/mdd_event/check.svg" class="img-fluid" alt="Responsive image">
                      </div>
                      <div class="col-sm-11">
    
                        24시간 이내 포인트가 지급될 예정입니다. <br>(1영업일 이내)
                      </div>
                  </div>
              </li>
              <li class="list-group-item border-0">
                  <div class="row">
                      <div class="col-sm-1 p-0">
                        <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_05/img/mdd_event/check.svg" class="img-fluid" alt="Responsive image">
                      </div>
                      <div class="col-sm-11">
                          <p class="m-0">카톡에서 <strong>랜선닥터 채널</strong> 추가 후 번호를 남기시면,</p>
    
                          <p class="m-0" style="font-weight:bold; color:#b00020;">포인트를 2배 빨리 지급해드립니다.</p>
                      </div>
                  </div>
              </li>
              <li class="list-group-item border-0 mt-2">
                    <a href="https://pf.kakao.com/_VAryxb" target="_blank">
                      <button class="w-100 rounded-pill shadow-sm border-0 p-3 step5button">
                          <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_05/img/mdd_event/katalkicon_color.svg" class="img-fluid" alt="Responsive image">
                          랜선닥터 채널 추가하기
                      </button>
                  </a>
              </li>
            </ul>
    </div>
    
    <div class="mx-auto mt-5 mb-3 pl-4 pr-4 pt-4 registerinfo_box">
        <div class="row pt-2">
            <div class="col-sm-8 pt-1">
                <p class="content-box-text1" style="font-size: 18px;font-weight: bold;">리뷰 등록 안내</p>
                <p class="m-0" style="color: #494949;font-size: 14px;">제출된 리뷰는 수 일 내에 모두닥 앱과 웹사이트에 등록되며 </p>
                <p class="m-0" style="color: #494949;font-size: 14px;">리뷰 작성자에게 카카오톡 알람톡을 통해 알려드립니다. </p>
            </div>
            <div class="col-sm-4">
                <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_05/img/mdd_event/register_info.svg" class="img-fluid" alt="Responsive image">
            </div>
        </div>
    </div>
    
    
    <div class="mx-auto mb-5 step5button-bottom">
        <div class="card-deck w-100 m-0">
            <div class="card border-0 ml-0">
                <div class="card-body">
                    <button data-clipboard-text="https://www.modoodoc.com/mdd_event" type="button" class="btn btn-blackcontent w-100 p-3 copy-link" style="font-size:16px; color:#FFFFFF">
                        친구에게도 모두닥 알려주기
                    </button>
                </div>
            </div>
            <div class="card border-0 mr-0">
                <a href="/mdd_event/" target="_self">
                    <div class="card-body">
                        <button type="button" class="btn btn-blackcontent w-100 h-100 p-3" style="font-size:16px; background-color: transparent;border: solid 1px #9b9b9b; color:#494949;">
    
                            포인트 더 받기
                        </button>
                    </div>
                </a>
            </div>
        </div>
    </div>
    
  
    
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
    