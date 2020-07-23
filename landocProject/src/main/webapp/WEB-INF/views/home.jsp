<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="ko">
<head>
   <title>SolMusic | HTML Template</title>
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
</head>

<body>
   <!-- Page Preloder -->
   <div id="preloder">
      <div class="loader"></div>
   </div>

   <%@ include file="static/header.jsp" %>

   <!-- Hero section -->
   <section class="hero-section">
      <div class="hero-slider owl-carousel">
         <div class="hs-item">
            <div class="container">
               <div class="row">
                  <div class="col-lg-6">
                     <div class="hs-text">
                        <h2><span>의사</span>에게 바로 물어보세요!</h2>
                        <p>랜선에서 검증 된 의사 선생님에게 물어보세요</p>
                        <a href="#" class="site-btn">의사에게 물어보기</a>
                        <a href="#" class="site-btn sb-c2">게시글 보기</a>
                     </div>
                  </div>
                  <div class="col-lg-6">
                     <div class="hr-img">
                        <img src="<%=request.getContextPath()%>/resources/img/doctor.png" alt="">
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="hs-item">
            <div class="container">
               <div class="row">
                  <div class="col-lg-6">
                     <div class="hs-text">
                        <h2><span style="padding: 10px;">영수증 리뷰</span>로 검증된 병원</h2>
                        <p>영수증 인증으로 믿을 수 있는 '진짜'리뷰! <br>리뷰작성하고 포인트 받아가세요! </p>
                        <a href="#" class="site-btn">리뷰 작성하기</a>
                        <a href="#" class="site-btn sb-c2">병원 보기</a>
                     </div>
                  </div>
                  <div class="col-lg-6">
                     <div class="hr-img">
                        <img src="<%=request.getContextPath()%>/resources/img/hospital3.png" alt="">
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!-- Hero section end -->

   <!-- Intro section -->
   <section class="intro-section spad">
      <div class="row">
         <div class="col-xl-9 mx-auto" align="center">
            <h1 class="mb-5" style="font-size: 50px;">SEARCH!!!</h1>
         </div>
         <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
            <form>
               <div class="form-row">
                  <div class="col-12 col-md-3 mb-2 mb-md-0">
                     <select class="form-control form-control-lg " style="width: 100%;">
                        <option>지역선택</option>
                        <option>서울</option>
                        <option>경기도</option>
                        <option>인천</option>
                        <option>강원도</option>
                        <option>충청남도</option>
                        <option>충청북도</option>
                        <option>경상북도</option>
                        <option>경상남도</option>
                        <option>전라북도</option>
                        <option>전라남도</option>
                        <option>제주도</option>
                     </select>
                  </div>
                  <div class="col-12 col-md-6 mb-2 mb-md-0">
                     <input type="text" class="form-control form-control-lg" placeholder="병원이름을 검색하세요">
                  </div>
                  <div class="col-12 col-md-3">
                     <button type="submit" class="btn btn-block btn-lg btn-primary"
                        style="background-color:  #0071ce;">검색</button>
                  </div>
               </div>
            </form>
         </div>
      </div>
   </section>
   <!-- Intro section end -->
   <!-- Premium section end -->
   <section class="premium-section spad" style="padding-bottom: 150px;">
      <div class="container">
         <!-- <div class="row">
            <div class="col-lg-6">
               <div class="section-title">
                  <h2>Why go Premium</h2>
               </div>
            </div>
            <div class="col-lg-6">
               <p>Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
            </div> 
         </div>-->
         <div class="row">
            <div class="col-lg-2 col-sm-6 ">
               <div class="premium-item">
                  <a href="#">
                     <img src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/가정의학과.png" alt="">
                  </a>
                  <h4>가정의학과 </h4>
               </div>
            </div>
            <div class="col-lg-2 col-sm-6 ">
               <div class="premium-item">
                  <a href="#">
                     <img src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/내과.png" alt="">
                  </a>
                  <h4>내과</h4>
               </div>
            </div>
            <div class="col-lg-2 col-sm-6 ">
               <div class="premium-item">
                  <a href="#">
                     <img src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/마취통증의학과.png" alt="">
                  </a>
                  <h4>통증의학과</h4>
               </div>
            </div>
            <div class="col-lg-2 col-sm-6 ">
               <div class="premium-item">
                  <a href="#">
                     <img src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/비뇨기과.png" alt="">
                  </a>
                  <h4>비뇨기과</h4>
               </div>
            </div>
            <div class="col-lg-2 col-sm-6 ">
               <div class="premium-item">
                  <a href="#">
                     <img src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/산부인과.png" alt="">
                  </a>
                  <h4>산부인과</h4>
               </div>
            </div>
            <div class="col-lg-2 col-sm-6 ">
               <div class="premium-item">
                  <a href="#">
                     <img src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/성형외과.png" alt="">
                  </a>
                  <h4>성형외과</h4>
               </div>
            </div>
            <div class="col-lg-2 col-sm-6 ">
               <div class="premium-item">
                  <a href="#">
                     <img src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/소아과.png" alt="">
                  </a>
                  <h4>소아과</h4>
               </div>
            </div>
            <div class="col-lg-2 col-sm-6 ">
               <div class="premium-item">
                  <a href="#">
                     <img src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/신경과.png" alt="">
                  </a>
                  <h4>신경과</h4>
               </div>
            </div>
            <div class="col-lg-2 col-sm-6 ">
               <div class="premium-item">
                  <a href="#">
                     <img src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/신경외과.png" alt="">
                  </a>
                  <h4>신경외과</h4>
               </div>
            </div>
            <div class="col-lg-2 col-sm-6 ">
               <div class="premium-item">
                  <a href="#">
                     <img src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/안과.png" alt="">
                  </a>
                  <h4>안과</h4>
               </div>
            </div>
            <div class="col-lg-2 col-sm-6 ">
               <div class="premium-item">
                  <a href="#">
                     <img src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/영상의학과.png" alt="">
                  </a>
                  <h4>영상의학과</h4>
               </div>
            </div>
            <div class="col-lg-2 col-sm-6 ">
               <div class="premium-item">
                  <a href="#">
                     <img src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/외과.png" alt="">
                  </a>
                  <h4>외과</h4>
               </div>
            </div>
            <div class="col-lg-2 col-sm-6 ">
               <div class="premium-item">
                  <a href="#">
                     <img src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/이비인후과.png" alt="">
                  </a>
                  <h4>이비인후과</h4>
               </div>
            </div>
            <div class="col-lg-2 col-sm-6 ">
               <div class="premium-item">
                  <a href="#">
                     <img src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/재활의학과.png" alt="">
                  </a>
                  <h4>재활의학과</h4>
               </div>
            </div>
            <div class="col-lg-2 col-sm-6 ">
               <div class="premium-item">
                  <a href="#">
                     <img src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/정신건강의학과.png" alt="">
                  </a>
                  <h4>정신의학과</h4>
               </div>
            </div>
            <div class="col-lg-2 col-sm-6 ">
               <div class="premium-item">
                  <a href="#">
                     <img src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/정형외과.png" alt="">
                  </a>
                  <h4>정형외과</h4>
               </div>
            </div>
            <div class="col-lg-2 col-sm-6 ">
               <div class="premium-item">
                  <a href="#">
                     <img src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/치과.png" alt="">
                  </a>
                  <h4>치과</h4>
               </div>
            </div>
            <div class="col-lg-2 col-sm-6 ">
               <div class="premium-item">
                  <a href="#">
                     <img src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/피부과.png" alt="">
                  </a>
                  <h4>피부과</h4>
               </div>
            </div>
            <div class="col-lg-2 col-sm-6 ">
               <div class="premium-item">
                  <a href="#">
                     <img src="<%=request.getContextPath()%>/resources/img/hospitalicon/icon/한의원.png" alt="">
                  </a>
                  <h4>한의원</h4>
               </div>
            </div>

         </div>
      </div>
   </section>
   <!-- Premium section end -->
   <!-- How section -->
   <section class="how-section spad set-bg" style="padding-bottom: 100px;">
      <div class="container text-white">
         <div class="section-title">
            <h2 style="font-size: 45px;">랜선닥터, 이런 점이 좋아요 !</h2>
         </div>
         <div class="row">
          
            <div class="col-md-4" style="text-align: center;">
               <div class="how-item">
                  <div align="center">
                     <img src="<%=request.getContextPath()%>/resources/img/doctoricon2.png" alt="" style="width: 200px; height: 200px;">
                  </div>
                  <br>
                  <h4>쉽고, 빠르게 찾는 </h4>
                  <h4>나만의 의사</h4>
                  <p>의사 이름을 검색해보세요.</p>
                  <a href="#">의사 검색하기 ></a>
               </div>
            </div>
            <div class="col-md-4" style="text-align: center;">
               <div class="how-item">
                  <div align="center">
                     <img src="<%=request.getContextPath()%>/resources/img/recipeicon.png" alt="" style="width: 200px; height: 200px;">
                  </div>
                  <br>
                  <h4>영수증 인증으로 </h4>
                  <h4>광고 없는 '진짜'리뷰</h4>
                  <p>진료내역을 인증한 실방문자만 리뷰를 쓸 수 있어요.</p>
                  <a href="#">리뷰 쓰러가기 ></a>
               </div>

            </div>

            <div class="col-md-4" style="text-align: center;">
               <div class="how-item">
                  <div align="center">
                     <img src="<%=request.getContextPath()%>/resources/img/questionicon.png" alt="" style="width: 200px; height: 200px;">
                  </div>
                  <br>
                  <h4>병원 대신 </h4>
                  <h4>랜선닥터에게 물어봐!</h4>
                  <p>랜선에서 검증 된 의사 선생님에게 물어보세요</p>
                  <a href="#">의사에게 물어보기 ></a>
               </div>

            </div>
         </div>
      </div>
   </section>
   <!-- How section end -->

  <%@ include file="static/footer.jsp" %>
   <!--====== Javascripts & Jquery ======-->
   <script src="<%=request.getContextPath()%>/resources/js/jquery-3.2.1.min.js"></script>
   <script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
   <script src="<%=request.getContextPath()%>/resources/js/jquery.slicknav.min.js"></script>
   <script src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
   <script src="<%=request.getContextPath()%>/resources/js/mixitup.min.js"></script>
   <script src="<%=request.getContextPath()%>/resources/js/main.js"></script>
</body>
</html>