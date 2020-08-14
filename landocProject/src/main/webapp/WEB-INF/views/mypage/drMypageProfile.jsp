<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <title>의사 선생님 프로필</title>
   <meta charset="UTF-8">
   <meta name="description" content="SolMusic HTML Template">
   <meta name="keywords" content="music, html">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
   
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src= 'http://code.jquery.com/jquery-latest.js'></script>
   <!-- Favicon -->
   <link href="<%=request.getContextPath()%>/resources/img/favicon.ico" rel="shortcut icon"/>

   <!-- Google font -->
   <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i&display=swap" rel="stylesheet">
 
   <!-- Stylesheets -->
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css"/>
   <!-- font awesome -->
   <link rel="stylesheet" type="<%=request.getContextPath()%>/resources/css/text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css"/>
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/slicknav.min.css"/>

   <!-- Main Stylesheets -->
   <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css"/>


   <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   <![endif]-->

   <style>
   	.title{font-size:15px;font-weight:600; position:relative;}
   	.content{font-size:28px; font-weight:600; color:#007ee5;}
   	
   	.favoriteY{color:red;}
   	.favorite{color:black;}
   
   </style>
   
   
   
   
   
</head>
<body>
   <!-- Page Preloder -->
   <div id="preloder">
      <div class="loader"></div>
   </div>

  <%@ include file="../static/header.jsp"%>

   <!-- Player section -->
   <section class="player-section set-bg" style="background-color:#0071ce"> 
      <div class="player-box mx-5" style="width:93%;">
         <div class="tarck-thumb-warp" style="text-align:center;">
            <div class="tarck-thumb">
               <img id="profileImage" src="/projectFiles/doctorProfile.png" style="width:90%; height:90%; margin-top:5%; margin-bottom:5%; margin-left:10%;">
            </div>
         </div>
         <div class="wave-player-warp">
            <div class="row" style="height:18%;">
               <div class="col-lg-12">
                  <div class="wave-player-info" style="display:inline-block;">
                     <span style="font-size:30px; font-weight:600;">${dp.drName } 선생님</span>
                  </div>
                  
                   <div class="col-lg-8 back pl-3" style="display:inline-block;">
		              <a class="btn heart" style="padding:0;">
		              	<span class="material-icons favorite" style="font-size:30px;'">favorite_border</span>
		              	<span class="content" id="drLikeCount" style="font-size:20px; color:#a82400;">${likeCount }</span>
		              </a>
           		 </div>
                  
               </div>
            </div>
     
            
            <div class="row" style="width:90%;height:40%;text-align:center;">
                <div class="col-lg-7 mt-3" style="text-align:left;">
               		<span class="title" style="position:relative;">소속병원</span>&nbsp;&nbsp;
                    <span class="content"><a href="#">${dp.hpName }</a></span>
               </div>
               
               <div class="col-lg-4 mt-3" style="text-align:left;">
                 <span class="title" style="position:relative;">주요분야</span>
                  <span class="content pl-2">${dp.hpCateName }</span>
               </div>
               
               <div class="col-lg-7 mt-3" style="text-align:left;">
               		<span class="title">답변 수</span>
                  <span class="content pl-2">${replyCount }</span>
               </div>
               <div class="col-lg-4 mt-3" style="text-align:left;">
                 <span class="title">채택된 답변 수</span>
                 <span class="content pl-2">${chosenReplyCount }</span>
               </div>
              
            </div>

            <div class="row" style="width:90%;height:40%;text-align:center;">
               <div class="col-lg-12 mt-3">
               		
               		
               		<!-- <div class="progress">
					  <div class="progress-bar" role="progressbar" style="width: 25%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
					</div> -->
               			<div style="float:left;">
  						<span class="title">채택률(${chosenPer }%)</span>
  						</div>
  						<div class="progress" style="height:30px; width:100%; float:left; margin-top:10px;">
	  						<div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" 
	  								aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: ${chosenPer}%;">${chosenPer }%
	  						</div>
						</div>
  					
               </div>
               
            </div>
         </div>
      </div>
   </section>
   <!-- Player section end -->

   <!-- Songs details section -->
   <section class="songs-details-section">
      <div class="container">
        
            <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
            <!-- 좋아요 누르기====================================================================== -->
            
       
         <script>
         	$(document).ready(function(){
         		var heartval = "${heart}";
         		if(heartval >0){
         			console.log(heartval);
         			$(".favorite").attr("class", "material-icons favoriteY").text("favorite");
         			$(".heart").prop("name", heartval);
         			
         		}else{
         			console.log(heartval);
         			$(".favorite").attr("class", "material-icons favorite").text("favorite_border");
         			$(".heart").prop("name", heartval);
         		}
         		
         		$(".back").on("click",function(){
         			var that=$(".heart");
         			var drNo="${dp.drNo}";
         			console.log("drNo:" + drNo);
         			var cNo="${cNo}";
         			console.log("cNo:" + cNo);
         			
         			if(cNo == 'none'){
         				alert("일반 회원 로그인이 필요한 서비스 입니다.");
         				return;
         			}
         			
         			$.ajax({
         				url:"likeDr.do",
         				type:"POST",
         				data:{drNo:drNo, cNo:cNo, heart:that.prop('name')},
         				dataType:'json',
         				success:function(data){
         					that.prop('name',data.heart);
         					
         					if(data.heart ==1){
         						$(".favorite").attr("class","material-icons favoriteY").text("favorite");
         						$("#drLikeCount").html(data.drLikeCount);
         						
         					}else if(data.heart==0){
         						$(".favoriteY").attr("class","material-icons favorite").text("favorite_border");
         						$("#drLikeCount").html(data.drLikeCount);
         					
         					}
                        },error:function(request, status, errorData){
                            alert("error code: " + request.status + "\n"
                                    +"message: " + request.responseText
                                    +"error: " + errorData);
                           }
         					
         				
         				
         			})
         			
         		})
         		
         	})
         
         
         
         </script>
         
         
         
         
         
         
         <br>
         <div class="row">
            <div class="col-lg-5">
               <h3>선생님은 어때? (??)</h3>   <!--?? = 댓글 수-->
            </div>
         </div>
         <br>
         <div class="row">
            <table class="table">
               <thead>
                  <tr>
                     <th colspan="2" style="width:20%">작성자</th>
                     <th style="width:60%">내용</th>
                     <th style="width:20%">작성날짜</th>
                  </tr>
               </thead>
               <tbody>
                  <tr>
                     <td><img class="rounded-circle" src="../images/car.jpg"></td>
                     <td>고범수</td>
                     <td>제가 비만인데요! 의사선생님이 제 배를 자꾸 만지세요ㅠㅠㅠ 이 병원갔다가 천국갈뻔했습니다!</td>
                     <td>2020-07-05</td>
                  </tr>
               </tbody>
            </table>
         </div>
         <br>
         <div class="row">
            <div class="col-lg-4"></div>
            <div class="col-lg-4">   <!--class="col-md-10 col-lg-8 col-xl-7 mx-auto my-3"-->
               <nav>
                  <button class="btn btn-md" onclick="location.href='#'">&laquo;</button>
                  &nbsp;
                  <button class="btn btn-md" onclick="location.href='#'">1</button>
                  &nbsp;
                  <button class="btn btn-md" onclick="location.href='#'">2</button>
                  &nbsp;
                  <button class="btn btn-md" onclick="location.href='#'">3</button>
                  &nbsp;
                  <button class="btn btn-md" onclick="location.href='#'">4</button>
                  &nbsp;
                  <button class="btn btn-md" onclick="location.href='#'">5</button>
                  &nbsp;
                  <button class="btn btn-md" onclick="location.href='#'">&raquo;</button>
               </nav>
            </div>
         </div>
         <br>
         <div class="row">
            <div class="col-lg-5">
               <h3>선생님께 피드백을!</h3>   <!--?? = 댓글 수-->
            </div>
         </div>
         <br>
         <div class="row">
            <div class="col-lg-12 col-sm-12">
               <form action="#">
                  <textarea rows="2" style="width: 100%;"></textarea>
                  <div align="right">
                     <button class="btn btn-sm" type="submit"
                        style="background-color: #0071ce; color:white;">작성하기</button>
                  </div>
               </form>
            </div>
         </div>
      </div>
   </section>
   <!-- Songs details section -->
   
   
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