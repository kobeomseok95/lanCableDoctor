<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String drNo = (String)session.getAttribute("drNo");
	String hpName = (String)session.getAttribute("hpName");
	int hpNo = (Integer)(session.getAttribute("hpNo"));
	int hpCateCode = (Integer)(session.getAttribute("hpCateCode"));
	String msg = (String)request.getAttribute("msg");
	String basicHpInfoMsg = (String)request.getAttribute("basicHpInfoMsg");
	String hpTimeMsg = (String)request.getAttribute("hpTimeMsg");
	String hpCommentMsg = (String)request.getAttribute("hpCommentMsg");
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
    .basic select{width: 500px; border:2px solid #9b9b9b; height: 40px; border-radius: 5px;}
    
    .modify_time{width:500px; border:1px solid #9b9b9b; border-radius: 5px;}

/*-------------------------------------------------------------*/
	body {
	  background-color: lightblue;
	}

	#searchAdd:hover{background-color:#007ee5; border:none; color:white;}
	
	#preview img{width:100px; height:100px;}
	#preview p{text-overflow:ellopsis; overflow:hidden;}
	.preview-box{border:1px solid #9b9b9b; padding: 5px; border-radius:2px; margin-bottom:10px;}
	
	
	
	
	
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
	<!-- ******************************************************************************************************************* -->
	<!--1. 병원 기본 정보 수정-->
		<form id="basicInfo" action="basicInfoHpEdit.do" method="POST" enctype="multipart/form-data" onsubmit="return checkBasicInfo();">
			<div class="summit-content-box mx-auto p-5 mt-4">
				<div class="row mb-5">
					<div class="col-sm-1">
						<div class="content-box-numbering align-middle mx-auto">1</div>
					</div>
					<div class="col-sm-11 content-box-title">${hpBasic.hpName } 기본 정보 수정</div>
					
					<c:if test="${hpBasic.hpStatus eq 'N' }">
					<div class="col-sm-11 content-box-title mt-5 p-2" id="waitingApproval" style="background-color:#007ee5; text-align:center; margin-left:5%;">
                     <b class="align-middle" style="font-size: 21px; letter-spacing: -0.7px;color: white;">기본 정보 수정 신청 승인 대기 중 </b>
					</div>
					</c:if>
					
					<c:if test="${hpBasic.hpStatus eq 'X' }">
					<div class="col-sm-11 content-box-title mt-5 p-2" id="waitingApproval" style="background-color:#b00020; text-align:center; margin-left:5%;">
                     <b class="align-middle" style="font-size: 21px; letter-spacing: -0.7px;color: white;">미 승인 처리되셨습니다. 재 신청 해주세요. </b>
					</div>
					</c:if>
					
					
					
					
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
                        <input type="text" id="hospital_name" name="hospital_name" value="${hpBasic.hpName }"><br><br>

						<%--  <label style="letter-spacing: 1.5px;">진료과목</label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="text" id="hospital_cateName" name="hospital_cateName" value="${hpBasic.hpCateName }">
                        
                       
						<select class="input100" name="hospital_cateCode" id="hospital_cateCode">
							<c:set var="cateCode" value="${hpBasic.hpCateCode }"/>
							
							<option value="400" <c:if test="${cateCode eq 400 }">selected="selected"</c:if>>치과</option>
							<option value="114" <c:if test="${cateCode eq 114 }">selected="selected"</c:if>>피부과</option>
							<option value="108" <c:if test="${cateCode eq 108 }">selected="selected"</c:if>>성형외과</option>
							<option value="112" <c:if test="${cateCode eq 112 }">selected="selected"</c:if>>안과</option>
							<option value="110" <c:if test="${cateCode eq 110 }">selected="selected"</c:if>>산부인과</option>
							<option value="115" <c:if test="${cateCode eq 115 }">selected="selected"</c:if>>비뇨기과</option>
							<option value="103" <c:if test="${cateCode eq 103 }">selected="selected"</c:if>>정신건강의학과</option>
							<option value="105" <c:if test="${cateCode eq 105 }">selected="selected"</c:if>>정형외과</option>
							<option value="116" <c:if test="${cateCode eq 116 }">selected="selected"</c:if>>마취통증의학과</option>
							<option value="106" <c:if test="${cateCode eq 106 }">selected="selected"</c:if>>신경외과</option>
							<option value="120" <c:if test="${cateCode eq 120 }">selected="selected"</c:if>>재활의학과</option>
							<option value="109" <c:if test="${cateCode eq 109 }">selected="selected"</c:if>>영상의학과</option>
							<option value="104" <c:if test="${cateCode eq 104 }">selected="selected"</c:if>>외과</option>
							<option value="102" <c:if test="${cateCode eq 102 }">selected="selected"</c:if>>신경과</option>
							<option value="111" <c:if test="${cateCode eq 111 }">selected="selected"</c:if>>소아과</option>
							<option value="101" <c:if test="${cateCode eq 101 }">selected="selected"</c:if>>내과</option>
							<option value="113" <c:if test="${cateCode eq 113 }">selected="selected"</c:if>>이비인후과</option>
							<option value="122" <c:if test="${cateCode eq 122 }">selected="selected"</c:if>>가정의학과</option>
							<option value="300" <c:if test="${cateCode eq 300 }">selected="selected"</c:if>>한의원</option>
						</select>
						<br><br> --%>

                        <label style="letter-spacing: 10px;">연락처</label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="text" id="hospital_phone" name="hospital_phone" value="${hpBasic.hpPhone}"><br><br>

                        <label style="letter-spacing: 25px;">주소</label>&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="text" id="sample4_postcode" name="postCode" style="width:31%; height:13%;" value="${hpBasic.hpPostCode}">
                        <input type="button" id="searchAdd" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" style="width:25%; height:13%;"><br><br>
                        <input type="text" id="sample4_roadAddress" name="address1" style="margin-left:13%;" value="${hpBasic.hpAddress }"><br><br>
                       
                       
						<span id="guide" style="color:#999;display:none"></span>
						<input type="text" id="sample4_detailAddress" name="address2" style="margin-left:13%;" placeholder="상세주소">
						
						
						<!-- ----------------------- -->
						<input type="text" id="sample4_jibunAddress" style="display:none;"placeholder="지번주소">
						<input type="text" id="sample4_extraAddress" style="display:none;" placeholder="참고항목">
						<!-- ----------------------- -->
						
						
						<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
						<script>
						    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
						    function sample4_execDaumPostcode() {
						        new daum.Postcode({
						            oncomplete: function(data) {
						                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
						
						                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
						                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						                var roadAddr = data.roadAddress; // 도로명 주소 변수
						                var extraRoadAddr = ''; // 참고 항목 변수
						
						                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
						                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
						                    extraRoadAddr += data.bname;
						                }
						                // 건물명이 있고, 공동주택일 경우 추가한다.
						                if(data.buildingName !== '' && data.apartment === 'Y'){
						                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
						                }
						                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						                if(extraRoadAddr !== ''){
						                    extraRoadAddr = ' (' + extraRoadAddr + ')';
						                }
						
						                // 우편번호와 주소 정보를 해당 필드에 넣는다.
						                document.getElementById('sample4_postcode').value = data.zonecode;
						                document.getElementById("sample4_roadAddress").value = roadAddr;
						                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
						                
						                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
						                if(roadAddr !== ''){
						                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
						                } else {
						                    document.getElementById("sample4_extraAddress").value = '';
						                }
						
						                var guideTextBox = document.getElementById("guide");
						                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						                if(data.autoRoadAddress) {
						                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
						                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
						                    guideTextBox.style.display = 'block';
						
						                } else if(data.autoJibunAddress) {
						                    var expJibunAddr = data.autoJibunAddress;
						                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
						                    guideTextBox.style.display = 'block';
						                } else {
						                    guideTextBox.innerHTML = '';
						                    guideTextBox.style.display = 'none';
						                }
						            }
						        }).open();
						    }
						</script>
						                        
                        
                        <!-- ----------------------- -->
                        <input type="hidden" id="hpNo" name="hpNo" value="${hpBasic.hpNo }">
						<%-- <input type="hidden" id="hpCateCode" name="hpCateCode" value="${hpBasic.hpCateCode }"> --%>
					</div>
				</div>
				
				<div class="row pt-4">
					<button type="submit" id="basicInfoSubmit" class="col-sm-10 offset-sm-1 btn btn-blackcontent w-100 h-100 p-3 mt-4" style="font-size:18px; background-color: #007ee5; color: white;" data-toggle="modal" data-target="#hospitalSearchModal">
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



		<!-- ******************************************************************************************************************* -->
		<!--2. 병원사진 업로드 부분-->
		<form action="hpPicEdit.do" method="post" enctype="multipart/form-data" onsubmit="return checkHpPics();">
			<div class="summit-content-box mx-auto p-5 mt-4" id="here">
				<div class="row mb-3">
					<div class="col-sm-1">
						<div class="content-box-numbering align-middle mx-auto">2</div>
					</div>
					<div class="col-sm-11 content-box-title">
						병원 사진 수정
					</div>
				</div>
				
				
				<div class="row pt-4">
					<div class="p-3 border rounded-lg" style="font-size: 10px;color: #494949; width:90%; height:90%; text-align:left; margin-left:45px;">
					<label class="col-sm-3 control-label" style="font-size:18px; color:#494949; font-weight:800; margin-top:1%;">기존 등록 사진</label>
					
						<!-- 기존 등록사진 불러오기 -->
						<div id="" style="width:100%; height:100%; margin-top:2%; margin-bottom:2%;">
								<c:forEach var="hpPics" items="${hpPhoto }">
									<c:set var="fullPath" value="/projectFiles/${hpPics.renameFileName }"/>
									<img src="${fullPath}" style="width: 33%; height: 33%;"/>
								</c:forEach>
						</div>
					</div>
				</div>

				
            
                 <div class="form-group form-inline pt-4">
                 	<button id="hpPicsUpload" class="btn btn-sm" type="button" style="background-color:#007ee5; margin-left:5%;">
						<h4 style="color:white;">+</h4>
					</button>
					<label class="col-sm-2 control-label" style="font-size:18px; color:#007ee5; font-weight:800; padding:0;">신규 사진 등록</label>
					<input id="hpPics" name="hpPics" type="file" style="display: none;" multiple/>
				</div>
				
				<div class="row pt-4">
					<label class="col-sm-3 control-label"></label>
					<div id="preview"></div>
				</div>
              
                <div class="row pt-4">
                	 <input type="hidden" id="hpNo" name="hpNo" value="${hpBasic.hpNo }">
					<button type="submit" id="" class="col-sm-10 offset-sm-1 btn btn-blackcontent w-100 h-100 p-3 mt-4" style="font-size:18px; background-color: #007ee5; color: white;" data-toggle="modal" data-target="#hospitalSearchModal">
						병원 사진 수정하기
					</button>
				</div>
                
                
			</div>
		</form>

		<script>
		
			$(document).ready(function(e){
				$("#hpPicsUpload").on("click", function(e){
					e.preventDefault();
					$("#hpPics").click();
				})
			});
			
		</script>


		<script>
			var files = {};
			var previewIndex = 0;
			
			function addPreview(input){
				if(input[0].files){
					
					// 파일 선택이 여러개였을 시의 대응
					for(var fileIndex = 0; fileIndex < input[0].files.length; fileIndex++){
						$("#preview").html("");
						var file = input[0].files[fileIndex];
						
						if(validation(file.name))
							continue;
						
						var reader = new FileReader();
						reader.onload = function(img){
							var imgNum = previewIndex++;
							$("#preview").append(
								"<div class=\"preview-box\" value=\"" + imgNum  +"\">"
										+ "<img class=\"thumbnail\" src=\"" + img.target.result + "\"\/>"
										+ "<p>"
										+ file.name
										+ "</p>"
										+ "<a href=\"#here\" value=\""
										+ imgNum
										+ "\" onclick=\"deletePreview(this)\">"
										+ "삭제" + "</a>" + "</div>");
							
							files[imgNum] = file;
						};
						reader.readAsDataURL(file);
					}
					
				}else
					alert("invalid file input");
				
				
			}
		
			// preview 영역에서 삭제 버튼 클릭 시 해당 미리보기 이미지 영역 삭제
			function deletePreview(obj){
				var imgNum = obj.attributes['value'].value;
				delete files[imgNum];
				$("#preview .preview-box[value=" + imgNum + "]").remove();
				/* resizeHeight();	 */
			}
		
			function validation(fileName){
				fileName = fileName + "";
				var fileNameExtensionIndex = fileName.lastIndexOf('.') + 1;
				var fileNameExtension = fileName.toLowerCase().substring(
						fileNameExtensionIndex, fileName.length);
				
				if(!((fileNameExtension === 'jpg')
					|| (fileNameExtension === 'gif') || (fileNameExtension === 'png'))){
					alert('jpg, gif, png 확장자만 업로드 가능합니다.');
					return true;	
				}else{
					return false;
				}
			}
			$("#hpPics").change(function(){
				addPreview($(this));
			})
			
			
			/* function addInput(){
				$(this).append("<input type='file' class='hpPics'></input>");
			} */
			
			
			
			
			
		
		</script>

          <!-- ******************************************************************************************************************* -->  
          <!--3. 병원 영업시간 수정-->
          <form action="hpTimeEdit.do" method="post" commandName="HpTime">
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
							<b class="align-middle" style="font-size: 21px; letter-spacing: -0.7px;color: #b00020;">휴무일 경우에는 -- : -- ~ -- : --으로 설정해주세요.</b>
							<span><img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/redstar.svg" class="img-fluid" alt="Responsive image"></span>
							
						</div>
						<ul class="list-group list-group-flush content-box-text1">
						  
						  
						  <li class="list-group-item pl-0 pr-0 pt-3">
							  <div class="row">
								  <div class="col-sm-11 pr-0">
									  <div class="d-flex justify-content-between align-items-center">
                                     		     월요일
										
										<div class="pull-right">
											<input type="hidden" name="hpTimeList[0].day" value="월요일">
											<input type="hidden" name="hpTimeList[0].hpNo" value="${hpBasic.hpNo }">
											<input type="time" id="mon_open_time" name="hpTimeList[0].openTime" value="${hpTime[0].hpOpenTime }">
											~
											<input type="time" id="mon_close_time" name="hpTimeList[0].closeTime" value="${hpTime[0].hpCloseTime }">
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
										  	<input type="hidden" name="hpTimeList[1].day" value="화요일">
											<input type="hidden" name="hpTimeList[1].hpNo" value="${hpBasic.hpNo }">
											<input type="time" id="tues_open_time" name="hpTimeList[1].openTime" value="${hpTime[1].hpOpenTime }">
											~
											<input type="time" id="tues_close_time" name="hpTimeList[1].closeTime" value="${hpTime[1].hpCloseTime }">
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
										  	<input type="hidden" name="hpTimeList[2].day" value="수요일">
											<input type="hidden" name="hpTimeList[2].hpNo" value="${hpBasic.hpNo }">
											<input type="time" id="wed_open_time" name="hpTimeList[2].openTime" value="${hpTime[2].hpOpenTime }">
											~
											<input type="time" id="wed_close_time" name="hpTimeList[2].closeTime" value="${hpTime[2].hpCloseTime }">
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
										  	<input type="hidden" name="hpTimeList[3].day" value="목요일">
											<input type="hidden" name="hpTimeList[3].hpNo" value="${hpBasic.hpNo }">
											<input type="time" id="thurs_open_time" name="hpTimeList[3].openTime" value="${hpTime[3].hpOpenTime }">
											~
											<input type="time" id="thurs_close_time" name="hpTimeList[3].closeTime" value="${hpTime[3].hpCloseTime }">
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
										  	<input type="hidden" name="hpTimeList[4].day" value="금요일">
											<input type="hidden" name="hpTimeList[4].hpNo" value="${hpBasic.hpNo }">
											<input type="time" id="fri_open_time" name="hpTimeList[4].openTime" value="${hpTime[4].hpOpenTime }">
											~
											<input type="time" id="fri_close_time" name="hpTimeList[4].closeTime" value="${hpTime[4].hpCloseTime }">
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
										  	<input type="hidden" name="hpTimeList[5].day" value="토요일">
											<input type="hidden" name="hpTimeList[5].hpNo" value="${hpBasic.hpNo }">
											<input type="time" id="sat_open_time" name="hpTimeList[5].openTime" value="${hpTime[5].hpOpenTime }">
											~
											<input type="time" id="sat_close_time" name="hpTimeList[5].closeTime" value="${hpTime[5].hpCloseTime }">
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
                                        	<input type="hidden" name="hpTimeList[6].day" value="일요일">
											<input type="hidden" name="hpTimeList[6].hpNo" value="${hpBasic.hpNo }">
											<input type="time" id="sun_open_time" name="hpTimeList[6].openTime" value="${hpTime[6].hpOpenTime }">
											~
											<input type="time" id="sun_close_time" name="hpTimeList[6].closeTime" value="${hpTime[6].hpCloseTime }">
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
			
			
			<!-- ******************************************************************************************************************* -->  
			<!-- 4. 간단 병원 소개-->
			<form action="introHpEdit.do" method="post">
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
							<textarea class="form-control" rows="5" id="comment" name="comment" placeholder="병원에 대해 간략한 소개를 적어주세요. (200자 이상)" onkeyup="textCounter(this, 'counter', 200);">${hpBasic.hpComment }</textarea>
							<div class="mt-1" style="font-size:14px;text-align:right;color:#494949;letter-spacing: -0.6px;">
								(<span id="counter">0</span>자)
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
					<input type="hidden" name="hpNo" value="${hpBasic.hpNo }">
					<button type="submit" id="" class="col-sm-10 offset-sm-1 btn btn-blackcontent w-100 h-100 p-3 mt-4" style="font-size:18px; background-color: #007ee5; color: white;" data-toggle="modal" data-target="#hospitalSearchModal">
						병원 소개 수정하기
					</button>
				</div>
			</div>
			</form>
		</div>
	</div>

	
	<script>
		$(function(){
			<%if(msg != null){%>
				alert("병원 사진 수정에 성공했습니다.");
			<%}%>
		})
			
		$(function(){
			<%if(basicHpInfoMsg != null){%>
				alert("병원 기본 정보 수정 신청에 성공했습니다.");
				
			<%}%>
		})
		
		$(function(){
			<%if(hpTimeMsg != null){%>
				alert("병원 영업시간 수정에 성공했습니다.");
				
			<%}%>
		})
		
		$(function(){
			<%if(hpCommentMsg != null){%>
				alert("병원 간단 소개 수정에 성공했습니다.");
		
			<%}%>
		})
		
		
			
		// 기본정보 수정 항목 체크
		function checkBasicInfo(){
			if($("#empPic").val() == ""){
				alert("재직증명서 또는 사업자 등록증을 업로드 해주세요.");
				return false;
			}
			
			if($("#idPic").val() == ""){
			 	alert("신분증 사진을 업로드 해주세요.");
			 	return false;
			}
			if($("#drPic").val() == ""){
				alert("의사 면허증을 업로드 해주세요.");
				return false;
			}
			
		}
		
		// 병원 소개 사진 항목 체크
		function checkHpPics(){
			if($("#hpPics").val() == ""){
				alert("병원 소개 사진을 1장 이상 등록해주세요.");
				return false;
			}
		}
		
		
		
		
		

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
    