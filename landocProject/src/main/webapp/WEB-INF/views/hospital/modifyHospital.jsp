<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String drNo = (String)session.getAttribute("drNo");
	String hpName = (String)session.getAttribute("hpName");
	int hpNo = (Integer)(session.getAttribute("hpNo"));
	int hpCateCode = (Integer)(session.getAttribute("hpCateCode"));
%>

<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>병원정보 수정</title>
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
	
	<!--star rating-->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->


	<script src= 'http://code.jquery.com/jquery-latest.js'></script>

<style>
	.btn-file input[type=file] {
									top: 0;
									left: 0;
									min-width: 100%;
									min-height: 100%;
									text-align: right;
									opacity: 0;
									background: none repeat scroll 0 0 transparent;
									cursor: inherit;
									display: block;
									position: absolute;} 

	.btn-block{background-color: #007ee5; position: relative;}
	.checked {color: orange;}
	.starRating{width: 50%;}
	
    .basic label{font-size: 23px; font-weight: 600;}
    .basic input{width: 500px; border:2px solid #9b9b9b; line-height: 40px; border-radius: 5px;}
    
    .modify_time{width:500px; border:1px solid #9b9b9b; border-radius: 5px;}

/*-------------------------------------------------------------*/
body {
  background-color: lightblue;
}



/*--------------------------------------------------------------*/	
</style>
</head>
<body>

	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<%@ include file="../static/header.jsp"%>
		
	
	<link rel="stylesheet" type="text/css" href="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/mdd_event/style.css">
	
	
	<input type="hidden" name="csrfmiddlewaretoken" value="7EYyK9n8kkbHp3Y3zYlR8e1LSwhuubipViDL0KoRy7LwZOtyK80JuVWhaIcpapZA">
		
	<div class="container-fluid mt-0 pt-5 pb-5" style="background-color: #e5f2fc;text-align: center">
		<div style="width: 1000px; display: inline-block">
				
				
	<!--form 태그 시작-->
	<!--1. 병원 기본 정보 수정-->
		<form id="basicInfo" action="basicInfoHpEdit.do" enctype="multipart/form-data">
			<div class="summit-content-box mx-auto p-5 mt-4">
				<div class="row mb-5">
					<div class="col-sm-1">
						<div class="content-box-numbering align-middle mx-auto">1</div>
					</div>
					<div class="col-sm-11 content-box-title">${hpName }병원 기본 정보 수정</div>
				</div>
				
				<div class="row">
                 <div class="col-sm-10 offset-sm-1 pt-2 pb-2">
                     <span><img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/redstar.svg" class="img-fluid" alt="Responsive image"></span>
                     <b class="align-middle" style="font-size: 21px; letter-spacing: -0.7px;color: #b00020;">기본 정보 수정을 위해서는 인증 자료를 첨부하셔야 합니다.</b>
                     <span><img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/redstar.svg" class="img-fluid" alt="Responsive image"></span>
                 </div>
                   
					
		            
		       <div class="container">
               <div class="col-sm-11 offset-sm-2 p-0" style="margin-left:60px;">
                  <div class="card-deck mt-5">
                     <div class="card">
                        <div class="card-body">
                           <ul class="list-group m-4 list-text text-left">
                             <li class="list-group-item border-0">
                                <div class="row">
                                   <div class="col-sm-1 p-0">
                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/check.svg" class="img-fluid" alt="Responsive image">
                                   </div>
                                   <div class="col-sm-11" style="color: #494949;">
                                   		재직증명서 또는 사업자 등록증
                                   </div>
                                </div>
                             </li>
                             <li class="list-group-item border-0">
                                <div class="row">
                                   <div class="col-sm-1 p-0">
                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/check.svg" class="img-fluid" alt="Responsive image">
                                   </div>
                                   <div class="col-sm-11" style="color: #494949;">
                                      	  신분증 
                                   </div>
                                </div>
                             </li>
                             <li class="list-group-item border-0">
                                <div class="row">
                                   <div class="col-sm-1 p-0">
                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/check.svg" class="img-fluid" alt="Responsive image">
                                   </div>
                                   <div class="col-sm-11" style="color: #494949;">
                                      	의사면허증
                                   </div>
                                </div>
                             </li>
                            
                           </ul>
                        </div>
                     </div>
                     <div class="card" style="background-color:#f8f8f8;">
                        <div class="card-body" style="margin-top:70px;">
                           <b class="align-center" style="font-size: 18px; letter-spacing: -0.7px;color: #494949;">기본 정보 수정은 영업일 <br>기준 2~3일 이상이 소요됩니다.</b>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
		            
		            
					<div class="col-sm-10 offset-sm-1 p-0 d-flex justify-content-end">
						<button type="button" class="btn btn-link" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample" style="font-size: 14px;font-weight: bold;color: #007ee5;">
							<h4 style="display:inline-block; color:#007ee5;">+</h4> &nbsp;인증자료 첨부하기 
							
						</button>
					</div>
					
					<!-- 인증자료 첨부 부분 -->
					<div class="container collapse mt-2 mb-4 text-left" id="collapseExample">
						<div class="col-sm-11 offset-sm-" style="margin-left:50px;">
							<div class="p-3 border rounded-lg" style="font-size: 10px;color: #494949;">
								<div class="form-group justify-content-center" >
									<button id="empPicUpload" class="btn btn-sm" type="button" style="background-color:#007ee5;">
										<h4 style="color:white;">+</h4>
									</button>
									<label class="col-sm-10 control-label" style="font-size:15px;">재직증명서 또는 사업자 등록증</label>
									<input id="empPic" name="empPic" type="file" style="display: none;" />
								
									<!-- 파일 미리보기 -->
									<div id="empPreview" style="width:50%; height:50%;">
										<span id="removeEmp" style="display: none; font-size:20px;">X</span>
										<img id="empPre" name="empPre">
									</div>
								</div>
								
								<div class="form-group justify-content-center">
									<button id="idPicUpload" class="btn btn-sm" type="button" style="background-color:#007ee5;">
										<h4 style="color:white;">+</h4>
									</button>
									<label class="col-sm-10 control-label" style="font-size:15px;">신분증</label>
									<input id="idPic" name="idPic" type="file" style="display: none;" />
								
								
									<!-- 파일 미리보기 -->
									<div id="idPreview" style="width:50%; height:50%;">
										<span id="removeId" style="display: none; font-size:20px;">X</span>
										<img id="idPre" name="idPre">
									</div>
								</div>
								
								<div class="form-group">
									<button id="drPicUpload" class="btn btn-sm" type="button" style="background-color:#007ee5;">
										<h4 style="color:white;">+</h4>
									</button>
									<label class="col-sm-10 control-label" style="font-size:15px;">의사 면허증</label>
									<input id="drPic" name="drPic" type="file" style="display: none;" />
								
							
									<!-- 파일 미리보기 -->
									<div id="drPreview" style="width:50%; height:50%;">
										<span id="removeDr" style="display: none; font-size:20px;">X</span>
										<img id="drPre" name="drPre">
									</div>
								</div>
								
								<br clear="both">
							
							</div>
						</div>
					</div>
					

					<div class="p-4 basic" style="width:1000px; text-align: center;">
                        <label style="letter-spacing: 10px;">병원명</label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="text" id="hospital_name" name="hospital_name" value="00병원" readonly><br><br>

						 <label style="letter-spacing: 1.5px;">진료과목</label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="text" id="hospital_cateName" name="hospital_cateName" value="내과" readonly><br><br>

                        <label style="letter-spacing: 10px;">연락처</label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="text" id="hospital_phone" name="hospital_phone" value="010-0000-0000" readonly><br><br>

                        <label style="letter-spacing: 10px;">소재지</label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="text" id="hospital_address" name="hospital_address" value="서울시 강남구 역삼동" readonly>
                        
                        
                        <input type="hidden" id="hospital_id" name="hospital_id" value="">
						
					</div>
				</div>
				
				<div class="row pt-4">
					<button type="submit" id="" class="col-sm-10 offset-sm-1 btn btn-blackcontent w-100 h-100 p-3 mt-4" style="font-size:18px; background-color: #007ee5; color: white;" data-toggle="modal" data-target="#hospitalSearchModal">
						기본 정보 수정하기
					</button>
				</div>
				
			</div>
		</form>

		<script>
			$(document).ready(function(e){
				
				// 재직증명서
				$("#empPicUpload").on("click",function(e){
					e.preventDefault();
					$("#empPic").click();
				});
				
				
				function readUploadImage1(inputObject){
					if(inputObject.files && inputObject.files[0]){
						if(!(/image/i).test(inputObject.files[0].type)){
                            alert("이미지 파일을 선택해 주세요");
                            return false;
						}
						var reader = new FileReader();
						reader.onload = function(e){
							$("#empPre").attr("src", e.target.result);
						}
						reader.readAsDataURL(inputObject.files[0]);
					}
				}
				
				
				$("#empPic").change(function(){
					$("#empPre").show();
					$("#removeEmp").show();
					readUploadImage1(this);
				})
				
				
				
				
				// 신분증
				$("#idPicUpload").on("click",function(e){
					e.preventDefault();
					$("#idPic").click();
				});
				
				
				function readUploadImage2(inputObject){
					if(inputObject.files && inputObject.files[0]){
						if(!(/image/i).test(inputObject.files[0].type)){
                            alert("이미지 파일을 선택해 주세요");
                            return false;
						}
						var reader = new FileReader();
						reader.onload = function(e){
							$("#idPre").attr("src", e.target.result);
						}
						reader.readAsDataURL(inputObject.files[0]);
					}
				}
				
				
				$("#idPic").change(function(){
					$("#removeId").show();
					readUploadImage2(this);
				})
				
				
				
				
				// 의사면허증
				$("#drPicUpload").on("click",function(e){
					e.preventDefault();
					$("#drPic").click();
				});
				
				function readUploadImage3(inputObject){
					if(inputObject.files && inputObject.files[0]){
						if(!(/image/i).test(inputObject.files[0].type)){
                            alert("이미지 파일을 선택해 주세요");
                            return false;
						}
						var reader = new FileReader();
						reader.onload = function(e){
							$("#drPre").attr("src", e.target.result);
						}
						reader.readAsDataURL(inputObject.files[0]);
					}
				}
				
				
				$("#drPic").change(function(){
					$("#removeDr").show();
					readUploadImage3(this);
				})
				
				
				// x누르면 파일 없어지는 함수
				$("#removeEmp").on("click",function(){
                    $("#empPre").removeAttr("src");
                    $(this).hide();
                  });
				
				
				$("#removeId").on("click",function(){
                    $("#idPre").removeAttr("src");
                    $(this).hide();
                  });
				
				
				$("#removeDr").on("click",function(){
                    $("#drPre").removeAttr("src");
                    $(this).hide();
                  });
				
			})
				
				
				
			
		
		</script>




		<!--2. 병원사진 업로드 부분-->
		<form id="" enctype="multipart/form-data">
			<div class="summit-content-box mx-auto p-5 mt-4">
				<div class="row mb-3">
					<div class="col-sm-1">
						<div class="content-box-numbering align-middle mx-auto">2</div>
					</div>
					<div class="col-sm-11 content-box-title">
						병원 사진 수정
					</div>
				</div>
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label">기존 등록 사진</label>
					
					
					
				</div>
				
            
                 <div class="form-group form-inline">
					<label class="col-sm-3 control-label">신규 사진 등록</label>
					<button id="fileUpload" class="btn btn-sm" type="button">
						<h3>+</h3>
					</button>
					<input name="hpPics" type="file" multiple="multiple" style="display: none;" />
				</div>
				
				<div class="form-group form-inline">
					<label class="col-sm-3 control-label"></label>
					<div id="preview"></div>
				</div>
              

				<!-- 업로드 된 파일 미리보기 부분-->
				<div class="row mt-4">
                    <div class="col-sm-10 offset-sm-1 p-0 pr-0">
                        <div class="file-input file-input-new">
                            
						<!--파일 미리보기 -->
							<span id="remove" style="display: none;">X</span>
					
						<div class="file-preview" id="thumb-receipt">
						</div>
						
						
						<script> 
						function setThumbnail(event) { 
							var reader = new FileReader(); reader.onload = function(event) { 
								var img = document.createElement("img"); img.setAttribute("src", event.target.result);
								document.querySelector("div#thumb-receipt").appendChild(img); }; 
								reader.readAsDataURL(event.target.files[0]);
							

								if($("#thumb-receipt").find('img')){
										$("#remove").show();
									}
							
								}
								
								
						$(function(){
							$("#remove").on("click",function(){
								$("#thumb-receipt").html("");
								$(this).hide();
								});
						})

						</script>
						</div>
                    </div>
                </div>
                <div class="row pt-4">
					<button type="submit" id="" class="col-sm-10 offset-sm-1 btn btn-blackcontent w-100 h-100 p-3 mt-4" style="font-size:18px; background-color: #007ee5; color: white;" data-toggle="modal" data-target="#hospitalSearchModal">
						병원 사진 수정하기
					</button>
				</div>
                
                
			</div>
		</form>

            
          <!--3. 병원 영업시간 수정-->
          <form id="" enctype="multipart/form-data">
			<div class="summit-content-box mx-auto p-5 mt-4">
				<div class="row mb-5">
					<div class="col-sm-1">
						<div class="content-box-numbering align-middle mx-auto">3</div>
					</div>
					<div class="col-sm-11 content-box-title">
						영업시간 수정   
					</div>
				</div>
				<div class="row">
					
					<div class="col-sm-10 offset-sm-1 p-0">
						<div class="col-sm-10 offset-sm-1 pt-1 pb-5">
							<span><img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/redstar.svg" class="img-fluid" alt="Responsive image"></span>
							<b class="align-middle" style="font-size: 21px; letter-spacing: -0.7px;color: #b00020;">휴무일 경우에는 0:00 ~ 0:00으로 설정해주세요.</b>
							<span><img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/redstar.svg" class="img-fluid" alt="Responsive image"></span>
							
						</div>
						<ul class="list-group list-group-flush content-box-text1">
						  <li class="list-group-item pl-0 pr-0 pt-3">
							  <div class="row">
								  <div class="col-sm-11 pr-0">
									  <div class="d-flex justify-content-between align-items-center">
                                     		     월요일
										
										<div class="pull-right">
											<input type="time" id="mon_open_time" name="mon_open_time">
											~
											<input type="time" id="mon_close_time" name="mon_close_time">
										</div>
                                        
									  </div>
								  </div>
							  </div>
						  </li>
						  <li class="list-group-item pl-0 pr-0 pt-3">
							  <div class="row">
								  <div class="col-sm-11 pr-0">
									  <div class="d-flex justify-content-between align-items-center">
										  화요일
										  <div class="pull-right">
											<input type="time" id="tues_open_time" name="tues_open_time">
											~
											<input type="time" id="tues_close_time" name="tues_close_time">
										</div>
									  </div>
								  </div>
								 
							  </div>
						  </li>
						  <li class="list-group-item pl-0 pr-0 pt-3">
							  <div class="row">
								  <div class="col-sm-11 pr-0">
									  <div class="d-flex justify-content-between align-items-center">
										  수요일
										  <div class="pull-right">
											<input type="time" id="wed_open_time" name="wed_open_time">
											~
											<input type="time" id="wed_close_time" name="wed_close_time">
										</div>
									  </div>
								  </div>
							
							  </div>
						  </li>
						  <li class="list-group-item pl-0 pr-0 pt-3">
							  <div class="row">
								  <div class="col-sm-11 pr-0">
									  <div class="d-flex justify-content-between align-items-center">
										  목요일
										  <div class="pull-right">
											<input type="time" id="thurs_open_time" name="thurs_open_time">
											~
											<input type="time" id="thurs_close_time" name="thurs_close_time">
										</div>
									  </div>
								  </div>
							
							  </div>
						  </li>
						  <li class="list-group-item pl-0 pr-0 pt-3">
							  <div class="row">
								  <div class="col-sm-11 pr-0">
									  <div class="d-flex justify-content-between align-items-center">
										  금요일
										  <div class="pull-right">
											<input type="time" id="fri_open_time" name="fri_open_time">
											~
											<input type="time" id="fri_close_time" name="fri_close_time">
										</div>
									  </div>
								  </div>
								  <div class="col-sm-1 p-0 d-flex align-items-center caption" id="kv-caption-cost" style="color: #9b9b9b;"><span class="badge badge-default"></span></div>
							  </div>
						  </li>
						  <li class="list-group-item pl-0 pr-0 pt-3 border-bottom">
							  <div class="row">
								  <div class="col-sm-11 pr-0">
									  <div class="d-flex justify-content-between align-items-center">
										  토요일
										  <div class="pull-right">
											<input type="time" id="sat_open_time" name="sat_open_time">
											~
											<input type="time" id="sat_close_time" name="sat_close_time">
										</div>
									  </div>
								  </div>
								  <div class="col-sm-1 p-0 d-flex align-items-center caption" id="kv-caption-outcome" style="color: #9b9b9b;"><span class="badge badge-default"></span></div>
							  </div>
                          </li>
                          <li class="list-group-item pl-0 pr-0 pt-3 border-bottom">
                            <div class="row">
                                <div class="col-sm-11 pr-0">
                                    <div class="d-flex justify-content-between align-items-center">
                                       		 일요일
                                        <div class="pull-right">
											<input type="time" id="sun_open_time" name="sun_open_time">
											~
											<input type="time" id="sun_close_time" name="sun_close_time">
										</div>
                                    </div>
                                </div>
                                <div class="col-sm-1 p-0 d-flex align-items-center caption" id="kv-caption-outcome" style="color: #9b9b9b;"><span class="badge badge-default"></span></div>
                            </div>
                        </li>
						</ul>
					</div>
				</div>
				
				<div class="row pt-4">
					<button type="submit" id="" class="col-sm-10 offset-sm-1 btn btn-blackcontent w-100 h-100 p-3 mt-4" style="font-size:18px; background-color: #007ee5; color: white;" data-toggle="modal" data-target="#hospitalSearchModal">
						영업시간 수정하기
					</button>
				</div>
				
				
			</div>
			</form>

		<!--4. 간단 병원 소개-->
		<form id="" enctype="multipart/form-data">
			<div class="summit-content-box mx-auto p-5 mt-4">
				<div class="row mb-4">
					<div class="col-sm-1">
						<div class="content-box-numbering align-middle mx-auto">4</div>
					</div>
					<div class="col-sm-11 content-box-title">
						간단 병원 소개
					</div>
				</div>
				<div class="row text-left">
					<div class="col-sm-10 offset-sm-1 p-3 rounded-lg" style="background-color: #f8f8f8;">
						<b style="color: #494949;">좋은 소개는?</b>
						<b style="color: #494949; font-weight:300;">1. 의사 중심의 소개  /  2. 처치 중심의 소개  /  3. 진료실 내부의 소개</b>
					</div>
				</div>
	
				<div class="row">
					<div class="col-sm-10 offset-sm-1 p-0 d-flex justify-content-end">
						<button type="button" class="btn btn-link" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample" style="font-size: 14px;font-weight: bold;color: #007ee5;">
							예시 보기</button>
					</div>
					<div class="row collapse mt-2 mb-2 text-left" id="collapseExample">
						<div class="col-sm-10 offset-sm-1">
							<div class="p-3 border rounded-lg" style="font-size: 14px;color: #494949;">
								OOO 선생님 좋았습니다. 우선 <b class="text-emphasize-puple">진료실 내부</b>에서 상냥하게 인사해주고,
								<b class="text-emphasize-puple">처치내용</b>에 대해 단계별로 설명해주셨습니다.
								저는 <b class="text-emphasize-puple">OOOO이 아파서 갔는데</b> 왜 아픈지, 앞으로 치료는 어떤식으로 진행될 지,
								평소에 생활습관은 어떻게 가져가야 하는지에 대한 자세한 설명을 들을 수 있었습니다.
								이후 <b class="text-emphasize-puple">처치실에서도</b> 아픈 처치가 이루어지기 전에는 미리 알려주시고 환자를 배려하여 진행해주셨습니다.
								다만 <b class="text-emphasize-puple">단점으로는</b> 대기시간이 길었던 점과, 영업시간이 짧다는 점, 그리고 데스크 직원분들이 불친절했던 것을 꼽을 수 있습니다.
							</div>
						</div>
					</div>
				</div>
	
				<div class="row">
					<div class="col-sm-10 offset-sm-1 p-0 mt-1">
							<textarea class="form-control" rows="5" id="comment" name="comment" placeholder="병원에 대해 간략한 소개를 적어주세요. (200자 이상)" onkeyup="textCounter(this, 'counter', 200);"></textarea>
							<div class="mt-1" style="font-size:14px;text-align:right;color:#494949;letter-spacing: -0.6px;">
								(<span id="counter">0</span>자, 최소 200자 이상)
							</div>
							<script>
								function textCounter(field,field2,maxlimit)
								{
									$('#' + field2).text(field.value.length);
								}
							</script>
					</div>
				</div>
				
				<div class="row pt-4">
					<button type="submit" id="" class="col-sm-10 offset-sm-1 btn btn-blackcontent w-100 h-100 p-3 mt-4" style="font-size:18px; background-color: #007ee5; color: white;" data-toggle="modal" data-target="#hospitalSearchModal">
						병원소개 수정하기
					</button>
				</div>
				
			</div>	
		</form>

		</div>
	</div>

	
	
	
	
	<script>
	

	</script>
	

	<%@ include file="../static/footer.jsp"%>
	
	<!--====== Javascripts & Jquery ======-->
	<script src="<%=request.getContextPath()%>/resources/js/jquery-3.2.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/jquery.slicknav.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/mixitup.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/main.js"></script>

	</body>
</html>
    