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
   
   
   <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   <![endif]-->


   <script src= 'http://code.jquery.com/jquery-latest.js'></script>

   <!--  <script src="https://kit.fontawesome.com/02aa01148e.js" crossorigin="anonymous"></script> -->
   
   <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

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
   

.material-icons.md-18 { font-size: 18px; }
.material-icons.md-24 { font-size: 24px; }
.material-icons.md-36 { font-size: 36px; }
.material-icons.md-48 { font-size: 48px; }
.material-icons.md-180 { font-size: 180px; }


/*-------------------------------------------------------------*/
   body {
     background-color: lightblue;
   }
   
   .rating {
     text-align: center;
     /* margin-top: 120px; */
     position: relative;
     width: 50%;
     float: left;
   }
   
   .hidden {
     opacity: 0;
   }
   
   .star {
     display: inline-block;
     margin: 5px;
     font-size: 30px;
     color: whitesmoke;
     position: relative;
   }
   .star.animate {
     -webkit-animation: stretch-bounce .5s ease-in-out;
   }
   .star.hidden {
     opacity: 0;
   }
   
   .full:before {
     font-family: fontAwesome;
     display: inline-block;
     content: "\f005";
     position: relative;
     float: right;
     z-index: 2;
   }
   
   .half:before {
     font-family: fontAwesome;
     content: "\f089";
     position: absolute;
     float: left;
     z-index: 3;
   }
   
   .star-colour {
     color: #ffd700;
   }
   
   @-webkit-keyframes stretch-bounce {
     0% {
       -webkit-transform: scale(1);
     }
     25% {
       -webkit-transform: scale(1.5);
     }
     50% {
       -webkit-transform: scale(0.9);
     }
     75% {
       -webkit-transform: scale(1.2);
     }
     100% {
       -webkit-transform: scale(1);
     }
   }
   .selected:before {
     font-family: fontAwesome;
     display: inline-block;
     content: "\f005";
     position: absolute;
     top: 0;
     left: 0;
     -webkit-transform: scale(1);
     opacity: 1;
     z-index: 1;
   }
   .selected.pulse:before {
     -webkit-transform: scale(3);
     opacity: 0;
   }
   .selected.is-animated:before {
     transition: 1s ease-out;
   }
   
   .score {
     font-family: arial;
     font-size: 20px;
     color: green;
     margin-top: 10px;
     margin-left: 0px;
   }
   
   .score-rating {
     vertical-align: sup;
     top: -5px;
     position: relative;
     font-size: 150%;
   }
   
   .total {
     vertical-align: sub;
     top: 0px;
     position: relative;
     font-size: 100%;
   }
   
   .average {
     font-family: arial;
     font-size: 20px;
     color: indianred;
     position: absolute;
     top: 50%;
     left: 50%;
     transform: translate(-50%, -50%);
     text-align: center;
   }
   .average .score-average {
     padding-top: 30px;
   }
   
   /*--------------------------------------------------------------*/   
   .hpCate{line-height:35px; width:470px;}
   



</style>
</head>
<body>


   <!-- Page Preloder -->
   <div id="preloder">
      <div class="loader"></div>
   </div>

   <%@ include file="../static/header.jsp" %>
      
   
   <link rel="stylesheet" type="text/css" href="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/mdd_event/style.css">
   
   
   <!--병원 검색 모달 창-->
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
               <b style="color: #494949">다녀온 병원명을 검색하세요</b>
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
         $('#open-hospital-search-modal').on('click', function(e) {
            e.preventDefault();
            $('#hospitalSearchModal').modal();
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
                  var $tr;
                  var $hpNo;
                  var $hpName;
                  var $hpAddress;
                  var $hpPhone;
                  
                  if(data.length>0){   // 검색결과가 존재할 경우
                     for(var i in data){
                        $tr = $("<tr>");
                        $td = $("<td>");
                        $hpNo = $("<td>").text(data[i].hpNo).addClass("listHpNo");
                        $hpNoIn = $("<input type='hidden' value='"+$hpNo.text()+"'>").addClass("listHpNoIn");
                        /* console.log($hpNoIn.val()); */
                        $hpName = $("<td>").text(data[i].hpName).addClass("listLineName");
                        $hpNameIn = $("<input type='hidden' value='"+$hpName.text()+"'>").addClass("listLineNameIn");
                        
                        $hpAddress = $("<td>").text(data[i].hpAddress).addClass("listLineAdd");
                        $hpPhone = $("<td>").text(data[i].hpPHone).addClass("listLine");
                        
                        $hpName.append($hpNameIn);
                        $hpNo.append($hpNoIn);
                        $td.append($hpName);
                        $tr.append($td);
                        
                        $tr.append($hpAddress);
                        $tr.append($hpPhone);
                        $tableBody.append($tr);
                     
                     }
                     
                  }else{
                     $tr = $("<tr>");
                     $td = $("<td>");
                     $hpName = $("<td>").text("등록된 병원이 없습니다.");
                     
                     
                     $tr.appent($td);
                     $td.append($hpName);
                     $tableBody.apppend($tr);
                     
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
          $(".listLineName").parent().parent().css("background","white");
          $(this).parent().parent().css({"background":"#cce5f9", "cursor":"pointer"});
          /*  console.log("this: " + $(this).text()); */
          
          // 진료과목  div hide&show 효과주기
           $(".hpCateArea").css("display","block");
      
	       	hopiName = $(this).text();
	       	hpNo = $hpNoIn.val();
          	/* console.log("jsp에서 hopiName : " + hopiName);  */
          	console.log("hpNo?? :"  + hpNo)
           
          	// 선택한 병원 진료과목 나오게 하는 에이작스
          	$.ajax({
          		url:"searchHpCate.do",
                data:{hopiName:hopiName},
                dataType:"json",
                success:function(data){
                	  $tableBody = $("#searchHpCateTb");
                      $tableBody.html("");
              
                      var $tr;
                      var $td;
                      var $hpCateCode;
                      var $hpCateName;
                      
                      if(data.length>0){   // 검색결과가 존재할 경우
                         for(var i in data){
                            $tr = $("<tr>");
                            $td = $("<td>");
                            $hpCateCode = $("<td>").text(data[i].hpCateCode);
                            $hpCateCodeIn = $("<input type='hidden' value='"+$hpCateCode.text()+"'>").addClass("hpCateCodeList");
                            $hpCateName = $("<td>").text(data[i].hpCateName).addClass("hpCate");
                            $hpCateNameIn = $("<input type='hidden' value='"+$hpCateName.text()+"'>").addClass("hpCateNameList");
                            
                         
                            $hpCateCode.append($hpCateCodeIn);
                            $hpCateName.append($hpCateNameIn);
                            $td.append($hpCateName);
                            $tr.append($td);
                            $tableBody.append($tr);
                         
                         }	
                        
                }
                },error:function(request, status, errorData){
                    alert("error code: " + request.status + "\n"
                          +"message: " + request.responseText
                          +"error: " + errorData);
                 }
                   
          	});//ajax end
          
       
       })
       
       // 진료과목 선택하는 것
        $(document).on("click",".hpCate",function(){
        	$(".hpCate").parent().parent().css("background","white");
        	$(this).parent().parent().css({"background" : "#99cbf4", "cursor" : "pointer"});
        	
  	       	var hpCate = $(this).text();
  	       	var hpCateCode2 = $hpCateCodeIn.val();
        	/* console.log(hpCate); */
        	
        	
           $("#hospital-search-save-btn").click(function(){
        	   /* console.log("진료과목 : " + hpCate);
        	   console.log("병원이름 : " + hopiName);
        	   console.log("병원번호 : " + hpNo); */
               
        	   $("#hospitalSearchModal").modal("hide");
                $("#hospital_name").val(hopiName +" ( " + hpCate + " ) ");
                $("#hospital_id").val(hpNo);
                $("#hospital_cateCode").val(hpCateCode2);
                
                
           })
        })
       
       
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
                 <button id="hospital-search-save-btn" class="btn btn-mdd w-100 p-2 mt-3" style="color: #FFFFFF;background-color: #007ee5;">
                    선택완료
                 </button>
              </div>
           </div>
   
        </div>
      </div>
     </div>
   </div>
   
   <!--------------------------------------------------------------------------------------------------------------------------------------->
   <!--form 태그 시작-->
   <form id="register-submit-form" action="hpReInsert.do" method="post" enctype="multipart/form-data" onsubmit="return checkValidate();">
      <input type="hidden" name="csrfmiddlewaretoken" value="7EYyK9n8kkbHp3Y3zYlR8e1LSwhuubipViDL0KoRy7LwZOtyK80JuVWhaIcpapZA">
      
      <div class="container-fluid mt-0 pt-5 pb-5" style="background-color: #e5f2fc;text-align: center">
         <div style="width: 1000px; display: inline-block">
            <!--병원 찾기-->
         <div class="summit-content-box mx-auto p-5 mt-4">
            <div class="row mb-5">
               <div class="col-sm-1">
                  <div class="content-box-numbering align-middle mx-auto">1</div>
               </div>
               <div class="col-sm-11 content-box-title">
                  다녀가신 병원이름을 입력하세요
               </div>
            </div>
            <div class="row">
               <div class="col-sm-10 offset-sm-1 pt-5 pl-0" style="border-bottom: solid 2px #9b9b9b;">
                  <input type="hidden" id="hospital_id" name="hospital_id">
                  <input type="hidden" id="hospital_cateCode" name="hospital_cateCode">
                  <input type="text" class="form-control border-0 pl-0" id="hospital_name" name="hospital_name" disabled="" placeholder="하단의 '병원 조회하기'버튼을 눌러 선택해주세요" style="background-color: transparent; font-size: 21px; font-weight: bold; color: #494949;">
               </div>
            </div>
            <div class="row">
            
               <button type="button" id="open-hospital-search-modal" class="col-sm-10 offset-sm-1 btn btn-blackcontent w-100 h-100 p-3 mt-4" style="font-size:18px; background-color: #007ee5; color: white;" data-toggle="modal" data-target="#hospitalSearchModal">
                  병원 조회하기
               </button>
            </div>
            
         </div>
   

         <!--인증자료 업로드 부분(영수증 부분)-->
         <div class="summit-content-box mx-auto p-5 mt-4">
            <div class="row mb-5">
               <div class="col-sm-1">
                  <div class="content-box-numbering align-middle mx-auto">2</div>
               </div>
               <div class="col-sm-11 content-box-title">
                  진료인증 자료를 업로드해주세요!
               </div>
            </div>
            <div class="row">
               <div class="col-sm-10 offset-sm-1 p-0">
                  <span><img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/redstar.svg" class="img-fluid" alt="Responsive image"></span>
                  <b class="align-middle" style="font-size: 21px; letter-spacing: -0.7px;color: #b00020;">전체화면 캡쳐필수</b>
                  <span><img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/redstar.svg" class="img-fluid" alt="Responsive image"></span>
                  <b class="content-box-text1 align-middle">(병원명 + 회원 성명 포함)</b>
               </div>
            </div>
            <div class="row">
               <div class="col-sm-10 offset-sm-1 p-0">
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
                                    카드 결제 문자
                                   </div>
                                </div>
                             </li>
                             <li class="list-group-item border-0">
                                <div class="row">
                                   <div class="col-sm-1 p-0">
                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/check.svg" class="img-fluid" alt="Responsive image">
                                   </div>
                                   <div class="col-sm-11" style="color: #494949;">
                                      뱅킹 어플 / 인터넷 뱅킹
                                   </div>
                                </div>
                             </li>
                             <li class="list-group-item border-0">
                                <div class="row">
                                   <div class="col-sm-1 p-0">
                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/check.svg" class="img-fluid" alt="Responsive image">
                                   </div>
                                   <div class="col-sm-11" style="color: #494949;">
                                      진료영수증 / 처방전 / 진단서
                                   </div>
                                </div>
                             </li>
                             <li class="list-group-item border-0">
                                <div class="row">
                                   <div class="col-sm-1 p-0">
                                    <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/check.svg" class="img-fluid" alt="Responsive image">
                                   </div>
                                   <div class="col-sm-11" style="color: #494949;">
                                      건강보험공단 / 홈택스 진료내역
                                   </div>
                                </div>
                             </li>
                           </ul>
                        </div>
                     </div>
                     <div class="card">
                        <div class="card-body" style="background-color: #f8f8f8;">
                           <img src="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/img/mdd_event/receipt_example_content.svg" class="img-fluid w-100 h-100" alt="Responsive image">
                        </div>
                     </div>
                  </div>
               </div>
            </div>

            <!-- 업로드 된 파일 미리보기 부분-->
            <div class="row mt-4">
                    <div class="col-sm-10 offset-sm-1 p-0 pr-3">
                        <div class="file-input file-input-new">
                  
                  <!--파일 미리보기 -->
                  
                  
                  <span id="remove" style="display: none;">X</span>
               
                  <div class="file-preview" id="thumb-receipt">
                     <img id="preView" name="preView">
                  </div>
                  
                  <div class="clearfix"></div>
                  
                  <div tabindex="500" class="btn btn-blackcontent btn-block p-3 btn-file" style="background-color:#0071ce" id="test">
                  
                     <span style="font-size: 18px; color: white;">인증자료 첨부하기</span>
                     <input id="receipt_image" name="receipt_image" type="file" style="opacity: 0; " onchange="setThumbnail(event)">
                  </div>
               
                  <script> 
                  /* function setThumbnail(event) { 
                     var reader = new FileReader(); reader.onload = function(event) { 
                        var img = document.createElement("img"); img.setAttribute("src", event.target.result);
                        document.querySelector("div#thumb-receipt").appendChild(img); }; 
                        reader.readAsDataURL(event.target.files[0]);
                     

                        if($("#thumb-receipt").find('img')){
                              $("#remove").show();
                           }
                     
                        }  */
                        
                  // x누르면 파일 사라지는 함수
                  
                  
                  $(function(){
                     $("#remove").on("click",function(){
                        $("#preView").removeAttr("src");
                        $(this).hide();
                        });
                     })

                  
                  // 미리보기 영역에 이미지 하나만 나오게 하는 함수
                    function readUploadImage1(inputObject){
                         if(inputObject.files && inputObject.files[0]){
                            if(!(/image/i).test(inputObject.files[0].type)){
                               alert("이미지 파일을 선택해 주세요");
                               return false;
                            }
                            
                            var reader = new FileReader();
                            
                            reader.onload = function(e){
                               $("#preView").attr("src", e.target.result);
                            }
                            reader.readAsDataURL(inputObject.files[0]);
                         }        
                    }
                              
                    $("#receipt_image").change(function(){
                       $("#remove").show();
                       readUploadImage1(this);
                    }) 
                  
                  </script>
                  </div>
                    </div>
                </div>
         </div>

      <!-------------------------------------------------------------------------------------------------->
      <script>
      // 별점 관련 함수 
      var starClicked = false;

      $(function() {

        $('.star').click(function() {

          $(this).children('.selected').addClass('is-animated');
          $(this).children('.selected').addClass('pulse');

          var target = this;

          setTimeout(function() {
            $(target).children('.selected').removeClass('is-animated');
            $(target).children('.selected').removeClass('pulse');
          }, 1000);

          starClicked = true;
        })

        $('.half').click(function() {
          if (starClicked == true) {
            setHalfStarState(this)
          }
          $(this).closest('.rating').find('.js-score').text($(this).data('value'));

          $(this).closest('.rating').data('vote', $(this).data('value'));
          calculateAverage()
          console.log(parseInt($(this).data('value')));

        })

        $('.full').click(function() {
          if (starClicked == true) {
            setFullStarState(this)
          }
          $(this).closest('.rating').find('.js-score').text($(this).data('value'));

          $(this).find('js-average').text(parseInt($(this).data('value')));

          $(this).closest('.rating').data('vote', $(this).data('value'));
          calculateAverage()

          console.log(parseInt($(this).data('value')));
        })

        $('.half').hover(function() {
          if (starClicked == false) {
            setHalfStarState(this)
          }

        })

        $('.full').hover(function() {
          if (starClicked == false) {
            setFullStarState(this)
          }
        })

      })

      function updateStarState(target) {
        $(target).parent().prevAll().addClass('animate');
        $(target).parent().prevAll().children().addClass('star-colour');

        $(target).parent().nextAll().removeClass('animate');
        $(target).parent().nextAll().children().removeClass('star-colour');
      }

      function setHalfStarState(target) {
        $(target).addClass('star-colour');
        $(target).siblings('.full').removeClass('star-colour');
        updateStarState(target)
      }

      function setFullStarState(target) {
        $(target).addClass('star-colour');
        $(target).parent().addClass('animate');
        $(target).siblings('.half').addClass('star-colour');

        updateStarState(target)
      }

      function calculateAverage() {
        var average = 0

        $('.rating').each(function() {
          average += $(this).data('vote')
        })

        $('.js-average').text((average/ $('.rating').length).toFixed(1))
      }
      </script>

         <!-------------------------------------------------------------------------------------------------->
         <div class="summit-content-box mx-auto p-5 mt-4">
            <div class="row mb-5">
               <div class="col-sm-1">
                  <div class="content-box-numbering align-middle mx-auto">3</div>
               </div>
               <div class="col-sm-11 content-box-title">
                  별점
                  <b class="p-2" style="font-size: 24px;font-weight: 300;">'매우 그렇다'면 5점, '전혀 그렇지 않다'면 0점을 주세요!</b>
               </div>
            </div>
            <div class="row">
               
               <div class="col-sm-10 offset-sm-1 p-0">
                  <ul class="list-group list-group-flush content-box-text1">
                    <li class="list-group-item pl-0 pr-0 pt-3">
                       <div class="row">
                          <div class="col-sm-11 pr-0">
                             <div class="d-flex justify-content-between align-items-center">
                                직원의 친절
                                <div class="rating" data-vote="0" style="width:55%;">
                                 
                                 <div class="star hidden">
                                   <span class="full"data-value="0"></span>
                                   <span class="half"data-value="0"></span>
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="1"></span>
                                   <span class="half" data-value="0.5"></span>
                                   <span class="selected"></span>
                                
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="2"></span>
                                   <span class="half" data-value="1.5"></span>
                                   <span class="selected"></span>
                                
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="3"></span>
                                   <span class="half" data-value="2.5"></span>
                                   <span class="selected"></span>
                                
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="4"></span>
                                   <span class="half" data-value="3.5"></span>
                                   <span class="selected"></span>
                                
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="5"></span>
                                   <span class="half" data-value="4.5"></span>
                                   <span class="selected"></span>
                                   
                                 </div>
                                 
                                 <div class="score" style="float:right;">
                                    <span class="score-rating js-score kind">0</span>
                                    <input type="hidden" id="kindness" name="kindness">
                                    <span>/</span>
                                    <span class="total">5</span>
                                 </div>
                              </div>
                              
                              <script>
                                 $(function(){
                                    $(".star").click(function(){
                                       var kindness = $(".kind").text();
                                       
                                       console.log(kindness);
                                       $("#kindness").val(kindness);
                                    })
                                 })
                              
                              </script>


                             </div>
                          </div>
                          <div class="col-sm-1 p-0 d-flex align-items-center caption" id="kv-caption-kindness" style="color: #9b9b9b;"><span class="badge badge-default"></span></div>
                       </div>
                    </li>
                    <li class="list-group-item pl-0 pr-0 pt-3">
                       <div class="row">
                          <div class="col-sm-11 pr-0">
                             <div class="d-flex justify-content-between align-items-center">
                                짧은 대기시간
                                <div class="rating" data-vote="0" style="width:55%;">
                                 
                                 <div class="star hidden">
                                   <span class="full"data-value="0"></span>
                                   <span class="half"data-value="0"></span>
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="1"></span>
                                   <span class="half" data-value="0.5"></span>
                                   <span class="selected"></span>
                                
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="2"></span>
                                   <span class="half" data-value="1.5"></span>
                                   <span class="selected"></span>
                                
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="3"></span>
                                   <span class="half" data-value="2.5"></span>
                                   <span class="selected"></span>
                                
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="4"></span>
                                   <span class="half" data-value="3.5"></span>
                                   <span class="selected"></span>
                                
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="5"></span>
                                   <span class="half" data-value="4.5"></span>
                                   <span class="selected"></span>
                                   
                                 </div>
                                 
                                 <div class="score" style="float:right;">
                                    <span class="score-rating js-score waitingTm">0</span>
                                    <input type="hidden" id="waitingTm" name="waitingTm">
                                    <span>/</span>
                                    <span class="total">5</span>
                                 </div>
                              </div>
                              
                              <script>
                                 $(function(){
                                    $(".star").click(function(){
                                       var waitingTm = $(".waitingTm").text();
                                       
                                       console.log(waitingTm);
                                       $("#waitingTm").val(waitingTm);
                                    })
                                 })
                              
                              </script>
                                
                                
                                
                                
                                
                                
                             </div>
                          </div>
                          <div class="col-sm-1 p-0 d-flex align-items-center caption" id="kv-caption-waiting" style="color: #9b9b9b;"><span class="badge badge-default"></span></div>
                       </div>
                    </li>
                    <li class="list-group-item pl-0 pr-0 pt-3">
                       <div class="row">
                          <div class="col-sm-11 pr-0">
                             <div class="d-flex justify-content-between align-items-center">
                                청결함
                                <div class="rating" data-vote="0" style="width:55%;">
                                 
                                 <div class="star hidden">
                                   <span class="full"data-value="0"></span>
                                   <span class="half"data-value="0"></span>
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="1"></span>
                                   <span class="half" data-value="0.5"></span>
                                   <span class="selected"></span>
                                
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="2"></span>
                                   <span class="half" data-value="1.5"></span>
                                   <span class="selected"></span>
                                
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="3"></span>
                                   <span class="half" data-value="2.5"></span>
                                   <span class="selected"></span>
                                
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="4"></span>
                                   <span class="half" data-value="3.5"></span>
                                   <span class="selected"></span>
                                
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="5"></span>
                                   <span class="half" data-value="4.5"></span>
                                   <span class="selected"></span>
                                   
                                 </div>
                                 
                                 <div class="score" style="float:right;">
                                    <span class="score-rating js-score sanitary">0</span>
                                    <input type="hidden" id="sanitary" name="sanitary">
                                    <span>/</span>
                                    <span class="total">5</span>
                                 </div>
                              </div>
                              
                              <script>
                                 $(function(){
                                    $(".star").click(function(){
                                       var sanitary = $(".sanitary").text();
                                       
                                       console.log(sanitary);
                                       $("#sanitary").val(sanitary);
                                    })
                                 })
                              
                              </script>
                                
                             </div>
                          </div>
                          <div class="col-sm-1 p-0 d-flex align-items-center caption" id="kv-caption-clarity" style="color: #9b9b9b;"><span class="badge badge-default"></span></div>
                       </div>
                    </li>
                    <li class="list-group-item pl-0 pr-0 pt-3">
                       <div class="row">
                          <div class="col-sm-11 pr-0">
                             <div class="d-flex justify-content-between align-items-center">
                                치료에 대한 자세한 설명
                                
                                <div class="rating" data-vote="0" style="width:55%;">
                                 
                                 <div class="star hidden">
                                   <span class="full"data-value="0"></span>
                                   <span class="half"data-value="0"></span>
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="1"></span>
                                   <span class="half" data-value="0.5"></span>
                                   <span class="selected"></span>
                                
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="2"></span>
                                   <span class="half" data-value="1.5"></span>
                                   <span class="selected"></span>
                                
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="3"></span>
                                   <span class="half" data-value="2.5"></span>
                                   <span class="selected"></span>
                                
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="4"></span>
                                   <span class="half" data-value="3.5"></span>
                                   <span class="selected"></span>
                                
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="5"></span>
                                   <span class="half" data-value="4.5"></span>
                                   <span class="selected"></span>
                                   
                                 </div>
                                 
                                 <div class="score" style="float:right;">
                                    <span class="score-rating js-score explanation">0</span>
                                    <input type="hidden" id="explanation" name="explanation">
                                    <span>/</span>
                                    <span class="total">5</span>
                                 </div>
                              </div>
                              
                              <script>
                                 $(function(){
                                    $(".star").click(function(){
                                       var explanation = $(".explanation").text();
                                       
                                       console.log(explanation);
                                       $("#explanation").val(explanation);
                                    })
                                 })
                              
                              </script>
                                
                                
                                
                             </div>
                          </div>
                          <div class="col-sm-1 p-0 d-flex align-items-center caption" id="kv-caption-explain" style="color: #9b9b9b;"><span class="badge badge-default"></span></div>
                       </div>
                    </li>
                    <li class="list-group-item pl-0 pr-0 pt-3">
                       <div class="row">
                          <div class="col-sm-11 pr-0">
                             <div class="d-flex justify-content-between align-items-center">
                                적절한 금액
                               <div class="rating" data-vote="0" style="width:55%;">
                                 
                                 <div class="star hidden">
                                   <span class="full"data-value="0"></span>
                                   <span class="half"data-value="0"></span>
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="1"></span>
                                   <span class="half" data-value="0.5"></span>
                                   <span class="selected"></span>
                                
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="2"></span>
                                   <span class="half" data-value="1.5"></span>
                                   <span class="selected"></span>
                                
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="3"></span>
                                   <span class="half" data-value="2.5"></span>
                                   <span class="selected"></span>
                                
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="4"></span>
                                   <span class="half" data-value="3.5"></span>
                                   <span class="selected"></span>
                                
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="5"></span>
                                   <span class="half" data-value="4.5"></span>
                                   <span class="selected"></span>
                                   
                                 </div>
                                 
                                 <div class="score" style="float:right;">
                                    <span class="score-rating js-score price">0</span>
                                    <input type="hidden" id="price" name="price">
                                    <span>/</span>
                                    <span class="total">5</span>
                                 </div>
                              </div>
                              
                              <script>
                                 $(function(){
                                    $(".star").click(function(){
                                       var price = $(".price").text();
                                       
                                       console.log(price);
                                       $("#price").val(price);
                                    })
                                 })
                              
                              </script>
                               
                               
                             </div>
                          </div>
                          <div class="col-sm-1 p-0 d-flex align-items-center caption" id="kv-caption-cost" style="color: #9b9b9b;"><span class="badge badge-default"></span></div>
                       </div>
                    </li>
                    <li class="list-group-item pl-0 pr-0 pt-3 border-bottom">
                       <div class="row">
                          <div class="col-sm-11 pr-0">
                             <div class="d-flex justify-content-between align-items-center">
                                치료 후 결과
                                
                                <div class="rating" data-vote="0" style="width:55%;">
                                 
                                 <div class="star hidden">
                                   <span class="full"data-value="0"></span>
                                   <span class="half"data-value="0"></span>
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="1"></span>
                                   <span class="half" data-value="0.5"></span>
                                   <span class="selected"></span>
                                
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="2"></span>
                                   <span class="half" data-value="1.5"></span>
                                   <span class="selected"></span>
                                
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="3"></span>
                                   <span class="half" data-value="2.5"></span>
                                   <span class="selected"></span>
                                
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="4"></span>
                                   <span class="half" data-value="3.5"></span>
                                   <span class="selected"></span>
                                
                                 </div>
                                
                                 <div class="star">
                                
                                   <span class="full" data-value="5"></span>
                                   <span class="half" data-value="4.5"></span>
                                   <span class="selected"></span>
                                   
                                 </div>
                                 
                                 <div class="score" style="float:right;">
                                    <span class="score-rating js-score result">0</span>
                                    <input type="hidden" id="result" name="result">
                                    <span>/</span>
                                    <span class="total">5</span>
                                 </div>
                              </div>
                              
                              <script>
                                 $(function(){
                                    $(".star").click(function(){
                                       var result = $(".result").text();
                                       
                                       console.log(result);
                                       $("#result").val(result);
                                    })
                                 })
                              
                              </script>
                               
                                
                             </div>
                          </div>
                          <div class="col-sm-1 p-0 d-flex align-items-center caption" id="kv-caption-outcome" style="color: #9b9b9b;"><span class="badge badge-default"></span></div>
                       </div>
                    </li>
                  </ul>
               </div>
            </div>
         </div>
   

         <!--텍스트 리뷰-->
         <div class="summit-content-box mx-auto p-5 mt-4">
            <div class="row mb-4">
               <div class="col-sm-1">
                  <div class="content-box-numbering align-middle mx-auto">4</div>
               </div>
               <div class="col-sm-11 content-box-title">
                  텍스트 리뷰
               </div>
            </div>
            <div class="row text-left">
               <div class="col-sm-10 offset-sm-1 p-3 rounded-lg" style="background-color: #f8f8f8;">
                  <b style="color: #494949;">좋은 리뷰는?</b>
                  <b style="color: #494949; font-weight:300;">1. 의사 중심의 리뷰  /  2. 처치 중심의 리뷰  /  3. 진료실 내부의 리뷰</b>
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
                     <textarea class="form-control" rows="5" id="comment" name="comment" placeholder="의사 선생님께 받은 치료 경험을 진솔한 이야기로 풀어주세요. (200자 이상)" onkeyup="textCounter(this, 'counter', 200);"></textarea>
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
         </div>
   
   
         <div class="summit-content-box mx-auto p-5 mt-4">
            <div class="row mb-4">
               <div class="col-sm-1">
                  <div class="content-box-numbering align-middle mx-auto">6</div>
               </div>
               <div class="col-sm-11 content-box-title">
                  이 병원은..?
               </div>
            </div>

            <div class="row">
               <div class="col-sm-10 offset-sm-1">
                  <div class="card-group border-0">
                     <div class="card border-0 d-flex justify-content-center smile">
                        <label for="good_suggest_input"><span class="material-icons md-180">sentiment_satisfied_alt</span></label>
                        <div class="card-body">
                           <input type="radio" name="suggest" value="Y" id="good_suggest_input">
                        </div>
                     </div>
                     <div class="card border-left-0 border-top-0 border-bottom-0 d-flex justify-content-center sad">
                        <label for="wrong_suggest_input"><span class="material-icons md-180">sentiment_dissatisfied</span></label>
                        <div class="card-body">
                           <input type="radio" name="suggest" value="N" id="wrong_suggest_input">
                        </div>
                     </div>
                  </div>
   
               </div>
            </div>
            
            <script>
               $(function(){
                  $(".smile").click(function(){
                     $(this).css({"color" : "#007ee5"});
                     $(".sad").css({"color" : "black"});
                  })
               });
               
               $(function(){
                  $(".sad").click(function(){
                     $(this).css({"color" : "#007ee5"});
                     $(".smile").css({"color" : "black"});
                  })
               })
            
            
            </script>
            
         </div>

         <div class="row mt-5 mb-5 pt-3">
            <div class="col-sm-6 offset-sm-3 p-0 align-top">
               <button class="btn btn-mdd w-100 p-4" type="submit" style="font-size:21px; color: white; background-color: #0071ce;">
                  작성한 리뷰 제출하기
               </button>
            </div>
         </div>
   
      </div>
      </div>
   </form>
   
   
   
   
   <script>
      function checkValidate(){
         
         var comment = $("#comment").val();
         var reg= /^[가-힣ㄱ-ㅎa-zA-Z0-9]{200,10000000}$/;
         
         
         if($("#hospital_name").val()==""){
            alert("병원을 선택해주세요.");
            return false;
         }else if($("#receipt_image").val()==""){
            alert("인증자료를 업로드해주세요.");
            return false;
            
         }else if($("#kindness").val()==0){
            alert("직원의 친절 별점을 입력해주세요.");
            return false;
            
         }else if($("#waitingTm").val()==0){
            alert("짧은 대기시간 별점을 입력해주세요.");
            return false;
            
         }else if($("#sanitary").val()==0){
            alert("청결함 별점을 입력해주세요.");
            return false;
            
         }else if($("#explanation").val()==0){
            alert("치료에 대한 자세한 설명 별점을 입력해주세요.");
            return false;
            
         }else if($("#price").val()==0){
            alert("적절한 금액 별점을 입력해주세요.");
            return false;
            
         }else if($("#result").val()==0){
            alert("치료 후 결과 별점을 입력해주세요.");
            return false;
         }else if(!reg.test(comment)){
            alert("200자 이상의 병원 리뷰를 작성해주세요.");
            return false;
         }else if(!$("#good_suggest_input").prop("checked") && !$("#wrong_suggest_input").prop("checked")){
            alert("좋아요 여부를 선택해주세요.");
            return false;
            
         }
         
         return true;
         
         
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
    