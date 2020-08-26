<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>의사 회원가입</title>
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
<!--===============================================================================================-->
<script src="<%=request.getContextPath()%>/resources/login_vendor/jquery/jquery-3.2.1.min.js"></script>

<!-- Main Stylesheets -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/style.css" />
<script
	src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs/dist/tf.min.js"> </script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="<%=request.getContextPath()%>/resources/login_images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/login_vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/login_fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/login_fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/login_vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/login_vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/login_vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/login_vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/login_vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/login_css/util.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/login_css/main.css">
<!--===============================================================================================-->
<style>
.logoDiv {
	background-color: #007ee5;
	width: 100px;
	height: 100px;
	margin: auto;
	border-radius: 7px;
}

.logoDiv .logo {
	width: 100px;
	height: 100px;
}

.radiobtn {
	padding-left: 150px;
	height: 50px;
}

.doc {
	margin-left: 30px;
}

.doctorForm {
	padding-top: 50px;
	padding-bottom: 50px;
}

.nextBox {
	width: 100px;
	height: 100px;
	display: inline-block;
	border-radius: 10px;
	background-color: lightgrey;
	color: white;
}

.nextBox1 {
	width: 100px;
	height: 100px;
	display: inline-block;
	border-radius: 10px;
	background-color: #0071ce;
	color: white;
}

.img {
	width: 18px;
	height: 20px;
	padding-left: 5px;
}

.label1 {
	padding-top: 40px;
	padding-left: 15px;
}

.label2 {
	padding-top: 40px;
	padding-left: 7px;
}

.checkBox {
	background-color: lightgrey;
	height: 70px;
	padding-left: 10px;
}

.container-login100-form-btn {
	padding-top: 50px;
}

#ask {
	padding-top: 30px;
}

.searchDiv {
	display: inline-block;
	margin-bottom: 0px;
}

.searchBtn {
	background-color: #007ee5;
	width: 140px;
	height: 40px;
	border-radius: 5px;
	border: 0px;
	color: white;
}

.wrap-input1001 {
	display: inline-block;
}
</style>
</head>
<script type="text/javascript">
 window.history.forward();
 function noBack(){window.history.forward();}
</script>
<body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
<%@ include file="../static/header.jsp"%>
	<div class="limiter" id="login">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" action="joinDrClient.do"
					method="post" onsubmit="return validate();">
					<span class="login100-form-title p-b-48">
						<div class="logoDiv">
							<img class="logo"
								src="<%=request.getContextPath()%>/resources/login_image/KakaoTalk_20200702_150917241.png">
						</div>
					</span>
					<div id="doctorJoin1">
						<span class="login100-form-title p-b-26"> 의사 회원가입 </span>
					</div>
					<!-- 의사 회원 start -->

					<div class="doctorForm">
						<div class="nextBox1">
							<label class="label1">정보 입력</label>
						</div>
						<img class="img" src="<%=request.getContextPath()%>/resources/login_image/icon.png">
						<div class="nextBox">
							<label class="label2">이메일 인증</label>
						</div>
						<img class="img" src="<%=request.getContextPath()%>/resources/login_image/icon.png">
						<div class="nextBox">
							<label class="label1">서류 제출</label>
						</div>
						<img class="img" src="<%=request.getContextPath()%>/resources/login_image/icon.png">
						<div class="nextBox">
							<label class="label1">승인 대기</label>
						</div>
					</div>
					<div class="wrap-input1001 validate-input" data-validate="병원을 검색해주세요.">
						<input class="input100 postcodify_postcode5" type="text" name="hpName" value="" id="hpName" />
						<input type="hidden" name="hpNo" id="hpNo" value="" />
						<span class="focus-input100" data-placeholder="병원"></span>
					</div>
					<div class="searchDiv">
						<button type="button" class="searchBtn" id="searchHp" data-toggle="modal" data-target="#hospitalSearchModal">검색</button>
					</div>
					
					
		<!--  Start of Modal  -->		
   <div id="hospitalSearchModal" class="modal fade" tabindex="-1" role="dialog" style="display: none;" aria-hidden="true">
     <div class="modal-dialog w-50" role="document">
      <div class="modal-content">
        <div class="modal-header p-4">
         <h5 class="modal-title">병원명 입력</h5>
         <button type="button" class="close pt-2 pr-3 pb-0 pl-0" data-dismiss="modal" aria-label="Close">
         <span aria-hidden="true">×</span>
         </button>
        </div>
        <div class="modal-body p-4">
           <div>
            <p style="font-size: 12px;color: #b00020;">
               <b style="color: #494949">병원명을 검색하세요</b>
            </p>
           </div>
           <div id="hospital-search-form">
              <div class="input-group mb-3" style="border: solid 2px #007ee5;">
                 <input type="text" id="search_hospital_name" name="search_hospital_name"class="form-control border-0" placeholder="병원이름을 입력하세요." aria-describedby="button-addon-hsearch">
                 <div class="input-group-append pl-2 pr-2" style="background-color: #007ee5">
                  <button class="btn btn-mdd border-0 w-100" type="button" id="button-addon-hsearch" style="background-color: transparent; color: white;">검색</button>
                 </div>
              </div>
           </div>
          
          
   <script>
      // 병원 검색 모달창
      $(function() {
         // 병원 조회하기 버튼 클릭 => modal open.
         $(document).on('click', '#open-hospital-search-modal', function() {
            //e.preventDefault();
            $('#hospitalSearchModal').modal();
            $("#search_hospital_name").text("");
            $("#searchHpNameTb").text("");
            $("#searchHpCateTb").text("");
            
          
         });
         
         // 병원 검색 -> 검색결과 띄우기
         $("#button-addon-hsearch").on("click",function(){
            var hpName = $("#search_hospital_name").val();
            
            $.ajax({
               url:"searchHpName.do",
               data:{hpName:hpName},
               dataType:"json",
               success:function(data){
                  $tableBody = $("#searchHpNameTb");
                  $tableBody.html("");
                  
                  if(data.length>0){   
                     for(var i in data){
                     	var $tr = $('<tr></tr>');
                     	
                     	var $tdOne = $('<td class="listLineName"></td>');
                     	var $inputHpNo = $('<input type="hidden" name="hpNo" />');
                     	$inputHpNo.attr('value', data[i].hpNo);
                     	$tdOne.append($inputHpNo);
                     	$tdOne.append(data[i].hpName);
                     	
                     	var $tdTwo = $('<td class="listLineAdd"></td>');
                     	$tdTwo.append(data[i].hpAddress);
                     	
                     	$tr.append($tdOne);
                     	$tr.append($tdTwo);
                     	$tableBody.append($tr);
                     }
                     
                  }else{
                     $tr = $("<tr>");
                     $td = $("<td>");
                     $hpName = $("<td>").text("등록된 병원이 없습니다.");
                     
                     
                     $tr.append($td);
                     $td.append($hpName);
                     $tableBody.append($tr);
                     
                  }
                  
               },
               error:function(request, status, errorData){
                       alert("error code: " + request.status + "\n"
                             +"message: " + request.responseText
                             +"error: " + errorData);
                    }
            })
         });
         
      });
      
      
   </script>
   <script>
       $(document).on("click",".listLineName",function(){
    	   $("#searchHpNameTb").children('tr').each(function(index, item){
       		$(item).css("background","white");
       		$(item).removeAttr('id', 'selectHp');
          });
          $(this).parent().css({"background" : "#99cbf4", "cursor" : "pointer"}).attr('id', 'selectHp');

          // 진료과목  div hide&show 효과주기
           $(".hpCateArea").css("display","block");
      
	       	var hpName = $(this).text();

          	// 선택한 병원 진료과목 나오게 하는 에이작스
          	$.ajax({
          		url:"searchHpCate.do",
                data:{hopiName:hpName},
                dataType:"json",
                success:function(data){
                	  $tableBody = $("#searchHpCateTb");
                      $tableBody.html("");
                      
                      if(data.length>0){   // 검색결과가 존재할 경우
                         for(var i in data){
                        	var $tr = $('<tr></tr>');
                        	var $td = $('<td class="hpCate"></td>');
                        	var $inputCateCode = $('<input type="hidden" class="hpCateCode" name="hpCateCode" />');
                        	$inputCateCode.attr('value', data[i].hpCateCode);
                        	
                        	$td.append($inputCateCode);
                        	$td.append(data[i].hpCateName);
                        	
                        	$tr.append($td);
                        	$tableBody.append($tr);
                         }
                	}
                },
                error:function(request, status, errorData){
                    alert("error code: " + request.status + "\n"
                          +"message: " + request.responseText
                          +"error: " + errorData);
                 }
                   
          	});//ajax end
          
       
       })
       
		// 진료과목 선택하는 것
        $(document).on("click",".hpCate",function(){
           $("#searchHpCateTb").children('tr').each(function(index, item){
        		$(item).css("background","white");
        		$(item).removeAttr('id', 'selectCategory');
           });
           $(this).parent().css({"background" : "#99cbf4", "cursor" : "pointer"}).attr('id', 'selectCategory');
        });
	    
       	$(document).on('click', "#hospital-search-save-btn", function(){
           var cateName = $("#selectCategory").children().text();
           var cateNo = $("#selectCategory").children().children('.hpCateCode').val();
           var hpName = $("#selectHp").children('.listLineName').text();
           var hpNo = $("#selectHp").children('.listLineName').children('input[name="hpNo"]').val();
           
           
           $("#hospitalSearchModal").modal("hide");
			$("#hpCateName").val(cateName);
			$("#hpCateCode").val(cateNo);
			$("#hpName").val(hpName);
			$("#hpNo").val(hpNo);
       	});
       
     
   </script>
          
           <div class="card border-0">
              <div class="card-body p-0" style="border-top: solid 1px #007ee5;">
                 <div class="small-greybox p-2" style="font-size: 12px; border-bottom:solid 1px #007ee5;">
                    병원 검색결과 (검색결과 중 하나를 선택하세요)
                 </div>

                 <!--병원 검색 결과 나오는 부분-->
                 <div class="border-left-0 hospital-search-result-container">
                 <div style="overflow:hidden; width:450px;">
                  <div class="list-group" style="height: 230px; width:470px; overflow-y: scroll;">
                     
                     <!--검색 결과 나오는 부분-->
                     <table id="searchHpNameTb">
                        <tr>
                           <td></td>
                           <td></td>
                        </tr>
                     </table>
                  </div>
                 </div><!-- -------- -->
                 
                  
              		<!-- 선택한 병원 카테고리 나오는 부분 -->
              		<div style="overflow:hidden; width:450px;">
		              	<div class="list-group hpCateArea" style="height: 100px; width:470px; overflow-y: scroll; display:none;">
			                 <table id="searchHpCateTb">
			                 	<tr>
			                 		<td></td>
			                 	</tr>
			                 </table>
		                 </div>
	                 </div><!-- -------- -->
                </div>
                 <button type="button" id="hospital-search-save-btn" class="btn btn-mdd w-100 p-2 mt-3" style="color: #FFFFFF;background-color: #007ee5;">
                    선택완료
                 </button>
              </div>
           </div>
   
        </div>
      </div>
     </div>
   </div>
	<!--  End of Modal  -->				

					<div class="wrap-input100 validate-input" id="select1"
						data-validate="정해진 진료과목을 선택 및 입력해주세요.">
						<span class="focus-input100" data-placeholder="주분야"></span>
						<input class="input100" name="hpCateName" id="hpCateName" type="text" style="border: none;" />
						<input type="hidden" name="hpCateCode" id="hpCateCode" />
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="영소문,숫자 4~20글자로 입력가능합니다.">
						<input class="input100" type="text" name="userId" id="userId">
						<span class="focus-input100" data-placeholder="아이디"></span>
						<span class="focus-input100 guide NO" id="NO" data-placeholder="사용이 불가능합니다." style="margin-left:70%; width:50%; display:none"></span>
						<span class="focus-input100 guide OK" id="OK"data-placeholder="사용이 가능합니다." style="margin-left:73%; width:50%; display:none"></span>
						<input type="hidden" name="idDuplicateCheck" id="idDuplicateCheck" value="0">
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="영소문,숫자 4~20글자로 입력가능합니다.">
						<span class="btn-show-pass"> <i class="zmdi zmdi-eye"></i>
						</span> <input class="input100" type="password" name="userPwd"
							id="userPwd"> <span class="focus-input100"
							data-placeholder="비밀번호(대문자,특수기호 사용X,4~20자)"></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="비밀번호가 일치하지 않습니다.">
						<span class="btn-show-pass"> <i class="zmdi zmdi-eye"></i>
						</span> <input class="input100" type="password" name="checkPwd"
							id="checkPwd"> <span class="focus-input100"
							data-placeholder="비밀번호 확인"></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="한글로 2~4글자로 입력해주세요.">
						<input class="input100" type="text" name="userName" id="userName">
						<span class="focus-input100" data-placeholder="이름"></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="이메일 양식으로 입력해주세요.">
						<input class="input100" type="email" name="email" id="email">
						<span class="focus-input100"
							data-placeholder="이메일(해당 메일로 인증번호가 발송됩니다.)"></span>
							<span class="focus-input100 emailNO" id="emailNO" data-placeholder="사용이 불가능합니다." style="margin-left:70%; width:50%; display:none"></span>
						<span class="focus-input100 emailOK" id="emailOK"data-placeholder="사용이 가능합니다." style="margin-left:73%; width:50%; display:none"></span>
							<input type="hidden" name="emailDuplicateCheck" id="emailDuplicateCheck" value="0">
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="'-'를 제외한 숫자 11글자로 입력해주세요.">
						<input class="input100" type="tel" name="phone" id="phone">
						<span class="focus-input100" data-placeholder="전화번호('-' 제외)"></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="숫자 6글자로 입력해주세요.">
						<input class="input100" type="text" name="birth" id="birth">
						<span class="focus-input100" data-placeholder="생년월일 ex)970325"></span>
					</div>
					<div class="wrap-input1001 validate-input"
						data-validate="우편번호를 검색해주세요.">
						<input class="input100 postcodify_postcode5" type="text"
							name="post" value="" id="post"> <span
							class="focus-input100" data-placeholder="우편번호"></span>
					</div>
					<div class="searchDiv">
						<button type="button" class="searchBtn"
							id="postcodify_search_button">검색</button>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="도로명 주소를 입력해주세요.">
						<input class="input100 postcodify_address" type="text"
							name="address1" value="" id="address1"> <span
							class="focus-input100" data-placeholder="도로명 주소"></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="상세 주소를 입력해주세요.">
						<input class="input100 postcodify_extra_info" type="text"
							name="address2" value="" id="address2"> <span
							class="focus-input100" data-placeholder="상세주소"></span>
					</div>

					<div class="list_agree">
						<label><input type="checkbox" id="checkAll" class="infoBox">전체동의</label><br>
						<div class="checkBox">
							<input type="checkbox" id="check1" class="infoBox"><a
								href="agree1View.do">서비스 이용 약관</a><a>및</a><a href="agree2View.do">개인정보
								취급 방침</a><a>(필수)</a><br> <input type="checkbox" id="check2"
								class="infoBox"><a href="agree3View.do">위치기반 서비스 이용 약관</a><a>(필수)</a><br>
							<input type="checkbox" id="check3" name="check3" value="Y" class="infoBox"><a>마케팅
								정보수신 동의 (선택)</a>
						</div>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">회원가입</button>
						</div>

					</div>

					<div class="text-center p-t-115" id="ask">
						<span class="txt1"> 회원이라구요? </span> <a class="txt2"
							href="loginView.do"> 로그인 </a>
					</div>

				</form>
				<!-- 의사 회원 end -->
			</div>
		</div>
	</div>



	<div id="dropDownSelect1"></div>
  <%@ include file="../static/footer.jsp"%>
	
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/resources/login_vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/resources/login_vendor/bootstrap/js/popper.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/login_vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/resources/login_vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/resources/login_vendor/daterangepicker/moment.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/login_vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script
		src="<%=request.getContextPath()%>/resources/login_vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/login_js/main.js"></script>

	<!-- 주소 api -->
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<script>
       // 검색 단추를 누르면 팝업 레이어가 열리도록 설정한다.
       $(function(){
          $("#postcodify_search_button").postcodifyPopUp();
          
       });
       
    </script>
    <!-- 아이디 중복 여부 -->
    <script>
	 	$(function(){
	 		$("#userId").on("keyup", function(){
	 			var userId= $(this).val().trim();
	 			
	 			if(userId.length < 4){
	 				$(".OK").hide();
	 				$(".NO").hide();
	 				$("#idDuplicateCheck").val();
	 				
	 				return;
	 			} 
	 			
	 			
	 			$.ajax({
	 				url:"dupid.do",
	 				data:{id:userId},
	 				success:function(data){
	 					if(data == "true"){ 
	 						$(".NO").hide();
	 						$(".OK").show();
	 						$("#idDuplicateCheck").val(1);
	 					}else{
	 						$(".NO").show();
	 						$(".OK").hide();
	 						$("#idDuplicateCheck").val(0);
	 					}
	 				},
	 				error:function(request, status, errorData){
	                     alert("error code: " + request.status + "\n"
	                           +"message: " + request.responseText
	                           +"error: " + errorData);
	                 } 
	 			})
	 			
	 		})
	 	})
	 </script>
	  <!-- 이메일 중복 여부 -->
	 <script>
	 $(function(){
	 		$("#email").on("keyup", function(){
	 			var email= $(this).val().trim();
	 			
	 			if(email.length < 4){
	 				$(".emailOK").hide();
	 				$(".emailNO").hide();
	 				$("#emailDuplicateCheck").val();
	 				
	 				return;
	 			} 
	 			
	 			
	 			$.ajax({
	 				url:"dupEmail.do",
	 				data:{email:email},
	 				success:function(data){
	 					if(data == "true"){ 
	 						$(".emailNO").hide();
	 						$(".emailOK").show();
	 						$("#emailDuplicateCheck").val(1);
	 					}else{
	 						$(".emailNO").show();
	 						$(".emailOK").hide();
	 						$("#emailDuplicateCheck").val(0);
	 					}
	 				},
	 				error:function(request, status, errorData){
	                     alert("error code: " + request.status + "\n"
	                           +"message: " + request.responseText
	                           +"error: " + errorData);
	                 } 
	 			})
	 			
	 		})
	 	})
	 </script>
	 <script>
	 function validate(){
			// 아이디 중복 체크 후 회원가입 버튼 눌렀을 때
			if($("#idDuplicateCheck").val()==0){
				alert("사용 가능한 아이디를 입력해 주세요.");
				return false;
			}else if($("#emailDuplicateCheck").val()==0){
				alert("사용 가능한 이메일을 입력해 주세요.");
				return false;
			}else if($("#hpNo").val() == "0"){
				alert("병원을 선택해 주세요.")
				return false;
			}
			return true;
	 }
	 </script>
	 <script>
	 $(function(){

			//기존 선택된 데이터 받아온다면 설정 
			setCheckAll();
		  
		  //전체 체크박스 선택 시 
		  $('#checkAll').on('change', function () {
		    $(this).parents('.list_agree').find('input:checkbox').prop('checked', $(this).prop('checked'));
		  });
		  
		  //전체 외 체크박스 선택 시
		  $('.list_agree').find('input:checkbox').not('#checkAll').on('change', function () {
		                setCheckAll();
		  });
		});

		//체크된 개수에 따라 전체 체크박스 활성/비활성 
		function setCheckAll() {
		  var checkTotal = $('.list_agree').find('input:checkbox').not('#checkAll').length;
		  var checkCount = 0;
		  $('.list_agree').find('input:checkbox').not('#checkAll').each(function () {
		    if ($(this).prop('checked')) {
		      checkCount++;
		    }
		  });

		  $('#checkAll').prop('checked', checkTotal == checkCount);
		}
	 </script>
	 
	 <script>
		 
	 	$("#hpNo").change(function(){
	 		var hp = $("#hpNo").val();
	 		$.ajax({
 				url:"hpCategory.do",
 				data:{hpNo: hp},
 				dataType:"json",
 				success:function(data){
 					
 					$('#hpCateCode').children('option').remove(); 
 					for(var i = 0; i < data.length; i++){
 					 var s1 = document.getElementById('hpCateCode');
 					 var s2 = document.createElement('option');
 					 s2.setAttribute('value',data[i].hpCateCode);
 					 s2.innerHTML = data[i].hpCateName;
 					 s1.appendChild(s2);		
 					}
 				},
 				error:function(request, status, errorData){
                     alert("error code: " + request.status + "\n"
                           +"message: " + request.responseText
                           +"error: " + errorData);
                 } 
 			})
	 	}) 
	 </script>
</body>
</html>