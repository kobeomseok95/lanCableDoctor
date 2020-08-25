<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <title>의사회원 병원수정</title>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
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
<!--===============================================================================================-->   
<link rel="icon" type="image/png" href="<%=request.getContextPath()%>/resources/login_images/icons/favicon.ico"/>
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_vendor/animate/animate.css">
<!--===============================================================================================-->   
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_vendor/select2/select2.min.css">
<!--===============================================================================================-->   
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_css/util.css">
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/login_css/main.css">
<!--===============================================================================================-->
<style>
   .logoDiv{background-color: #007ee5; width: 100px; height: 100px; margin: auto; border-radius: 7px;}
   .logoDiv .logo{width: 100px; height: 100px;}
   .radiobtn{padding-left: 150px; height: 50px;}
   .doc{margin-left: 30px;}
   .doctorForm{padding-top: 50px; padding-bottom: 50px; text-align:center;}
   .nextBox{width: 100px; height: 100px; display: inline-block; border-radius: 10px; background-color: lightgrey; color: white;}
   .nextBox1{width: 100px; height: 100px; display: inline-block; border-radius: 10px; background-color: #007ee5; color: white;}
   .img{width:18px; height:20px; padding-left: 5px;}
   .label1{padding-top: 40px; padding-left: 0px;}
   .label2{padding-top: 40px; padding-left: 7px;}
   .file1{padding-bottom: 10px;}
   .file2{padding-top: 20px; padding-bottom: 10px;}
   .fileBtn{float: right; width: 250px;}
   .fileBox{width: 100%; height: 700px; border: 1px solid black; border-radius: 7px;}
   .fileImg{border-radius: 5px; width :100%; height: 700px;  border: 1px solid black;}
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
<body>
<body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
   <%@ include file="../static/header.jsp"%>
   <div class="limiter" id="login">
      <div class="container-login100">
         <div class="wrap-login100">
            <form class="login100-form validate-form" action="drClientHpModify.do?drNo=${drClientHp1.drNo }" method="post" enctype="multipart/form-data" onsubmit="return validate();">
            <%-- <input type="hidden" value="${drClientHp1.hpNo}" name="hpNo"> --%>
             <input type="hidden" value="${drClientHp1.drhpOrigin}" name="drhpOrigin1">
        	<input type="hidden" value="${drClientHp1.drhpRename}" name="drhpRename1">
        	<input type="hidden" value="${drClientHp2.drhpOrigin}" name="drhpOrigin2">
        	<input type="hidden" value="${drClientHp2.drhpRename}" name="drhpRename2">
        	<input type="hidden" value="${drClientHp3.drhpOrigin}" name="drhpOrigin3">
        	<input type="hidden" value="${drClientHp3.drhpRename}" name="drhpRename3">
               <span class="login100-form-title p-b-48" >
                  <div class="logoDiv"> 
                     <img src="<%=request.getContextPath()%>/resources/login_image/KakaoTalk_20200702_150917241.png" class="logo">
                  </div>
               </span>
               <div id="doctorJoin1">
                  <span class="login100-form-title p-b-26">
                     병원 변경
                  </span>
               </div>

               <div class="doctorForm">
                  <div class="nextBox1">
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
					<%-- <div class="wrap-input100 validate-input" data-validate="병원을 선택해 주세요">
						<span class="focus-input100" data-placeholder="병원"></span> 
						<select class="input100" name="hpNo" id="hpNo" style="border: none;">
						<option value="0">병원을 선택해 주세요</option>
							<c:forEach var="hp" items="${list }">
							<option value="${hp.hpNo }">${hp.hpName }</option>
							</c:forEach>
						</select>
					</div> --%>
					
					
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
         $(document).on('click', '#open-hospital-search-modal', function(e) {
            e.preventDefault();
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
               <div>
               
               <button id="empPicUpload1" class="btn btn-sm" type="button" style="background-color:#007ee5;">
					<h4 style="color:white; padding-bottom : 5px;">+</h4>
				</button>
                  <label class="file1">재직 증명서 또는 사업자 등록증</label>
                  <input class="fileBtn" type="file" id="uploadImage1" name="uploadFile1" style="display:none" required="required">
                  <div class="fileBox">
                     <img class="fileImg" id="imagePreview1" src="/projectFiles/${drClientHp1.drhpRename }"/>
                  </div>

				<button id="empPicUpload2" class="btn btn-sm" type="button" style="background-color:#007ee5;" >
					<h4 style="color:white; padding-bottom : 5px;">+</h4>
				</button>
                  <label class="file2">신분증</label>
                  <input type="file" id="uploadImage2" name="uploadFile2" style="display:none" required="required">
                  <div class="fileBox">
                     <img class="fileImg" id="imagePreview2" src="/projectFiles/${drClientHp2.drhpRename }"/>
                  </div>

				<button id="empPicUpload3" class="btn btn-sm" type="button" style="background-color:#007ee5;">
					<h4 style="color:white; padding-bottom : 5px;">+</h4>
				</button>
                  <label class="file2">의사 면허증</label>
                  <input type="file" id="uploadImage3" name="uploadFile3" style="display:none" required="required">
                  <div class="fileBox">
                     <img class="fileImg" id="imagePreview3" src="/projectFiles/${drClientHp3.drhpRename }"/>
                  </div>
               </div>

               <div class="container-login100-form-btn" style="padding-top: 50px;">
                  <div class="wrap-login100-form-btn">
                     <div class="login100-form-bgbtn"></div>
                     <button class="login100-form-btn" id="sub">
                        서류 제출
                     </button>
                  </div>
               </div>
            </form>
         </div>
      </div>
   </div>
   

   <div id="dropDownSelect1"></div>
     <%@ include file="../static/footer.jsp"%>
<!--===============================================================================================-->
<script src="<%=request.getContextPath()%>/resources/login_vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
   <script src="<%=request.getContextPath()%>/resources/login_vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
   <script src="<%=request.getContextPath()%>/resources/login_vendor/bootstrap/js/popper.js"></script>
   <script src="<%=request.getContextPath()%>/resources/login_vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
   <script src="<%=request.getContextPath()%>/resources/login_vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
   <script src="<%=request.getContextPath()%>/resources/login_vendor/daterangepicker/moment.min.js"></script>
   <script src="<%=request.getContextPath()%>/resources/login_vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
   <script src="<%=request.getContextPath()%>/resources/login_vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
   <script src="<%=request.getContextPath()%>/resources/login_js/main.js"></script>
</body>

<script>

		$(function(){
			$("#empPicUpload1").on("click",function(e){
				e.preventDefault();
				$("#uploadImage1").click();
			});
		})
		$(function(){
			$("#empPicUpload2").on("click",function(e){
				e.preventDefault();
				$("#uploadImage2").click();
			});
		})
		$(function(){
			$("#empPicUpload3").on("click",function(e){
				e.preventDefault();
				$("#uploadImage3").click();
			});
		})

         function readUploadImage1(inputObject){
             if(inputObject.files && inputObject.files[0]){
                if(!(/image/i).test(inputObject.files[0].type)){
                   alert("이미지 파일을 선택해 주세요");
                   return false;
                }
                
                var reader = new FileReader();
                
                reader.onload = function(e){
                   $("#imagePreview1").attr("src", e.target.result);
                }
                reader.readAsDataURL(inputObject.files[0]);
             }        
        }
                  
        $("#uploadImage1").change(function(){
           readUploadImage1(this);
        }) 
         function readUploadImage2(inputObject){
             if(inputObject.files && inputObject.files[0]){
                if(!(/image/i).test(inputObject.files[0].type)){
                   alert("이미지 파일을 선택해 주세요");
                   return false;
                }
                
                var reader = new FileReader();
                
                reader.onload = function(e){
                   $("#imagePreview2").attr("src", e.target.result);
                }
                reader.readAsDataURL(inputObject.files[0]);
             }        
        }
                  
        $("#uploadImage2").change(function(){
           readUploadImage2(this);
        })   
         function readUploadImage3(inputObject){
             if(inputObject.files && inputObject.files[0]){
                if(!(/image/i).test(inputObject.files[0].type)){
                   alert("이미지 파일을 선택해 주세요");
                   return false;
                }
                
                var reader = new FileReader();
                
                reader.onload = function(e){
                   $("#imagePreview3").attr("src", e.target.result);
                }
                reader.readAsDataURL(inputObject.files[0]);
             }        
        }
                  
        $("#uploadImage3").change(function(){
           readUploadImage3(this);
        })    
      
   </script>

   <script>
    	$(function(){
    		$("#sub").click(function(){
    		var fileCheck1 = $("#uploadImage1").val();
    		var fileCheck2 = $("#uploadImage2").val();
    		var fileCheck3 = $("#uploadImage3").val();
    		if(!fileCheck1 || !fileCheck2 || !fileCheck3){
    			alert("새로운 파일을 제출해 주세요.");
    			return false;
    		}
    		
    		})
    	})
    </script> 
    
    <script>
	 function validate(){
 		if($("#hpNo").val() == "0"){
			alert("병원을 선택해 주세요.")
			return false;
		}
		return true;
			
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
   	
   
   
   
   
   
   
   
   
</html>