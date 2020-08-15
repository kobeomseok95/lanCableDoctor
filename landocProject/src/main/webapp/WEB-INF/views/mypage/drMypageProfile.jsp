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

	<!--===============================================================================================-->	
		<link rel="icon" type="image/png" href="<%=request.getContextPath()%>/resources/table_images/icons/favicon.ico"/>
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/table_vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/table_fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/table_vendor/animate/animate.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/table_vendor/select2/select2.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/table_vendor/perfect-scrollbar/perfect-scrollbar.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/table_css/util.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/table_css/main.css">
	<!--===============================================================================================-->

	<script src="https://kit.fontawesome.com/02aa01148e.js" crossorigin="anonymous"></script>

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
               			<div style="float:left;">
  						<span class="title">채택률(${chosenPer }%)</span>
  						</div>
  						<div class="progress" style="width:100%; float:left; margin-top:10px;">
	  						<div " class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" 
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
   <section class="songs-details-section" style="padding-top:50px;">
      <div class="container">
        
            <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
            <!-- 좋아요 누르기====================================================================== -->
            
       
         <script>
         	$(document).ready(function(){
         		var heartval = "${heart}";
         		if(heartval >0){
         			$(".favorite").attr("class", "material-icons favoriteY").text("favorite");
         			$(".heart").prop("name", heartval);
         			
         		}else{
         			$(".favorite").attr("class", "material-icons favorite").text("favorite_border");
         			$(".heart").prop("name", heartval);
         		}
         		
         		$(".back").on("click",function(){
         			var that=$(".heart");
         			var drNo="${dp.drNo}";
         			var cNo="${cNo}";
         			
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
         
       	<div class="row" style="margin:0;">
         	<div class="col-lg-5">
               <p style="font-size:20px;font-color:black;weigth:600;">${dp.drName } 선생님 comments (${commentCount })</p> 
             </div>
       
         
         	<div class="col-lg-7 mb-2"  style="float:left; text-align:right;" onclick="openModal();">
            	<i class="far fa-edit fa-2x" style="color:#007ee5;"></i>
            	<!-- <i class="far fa-plus-square fa-2x"></i> -->
            </div>
            
            
            <button style="display:none;" id="modalBtn" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo"></button>
			
			<!-- 모달창!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
			<div class="modal fade" 
			id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <p class="modal-title" id="exampleModalLabel" style="font-size:15px; font-weight:600;">${dp.drName } 선생님께 코멘트 작성</p>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
			        <form>
			          <div class="form-group">
			            <label for="recipient-name" class="col-form-label">Recipient:</label>
			            <input type="text" class="form-control" id="recipient-name">
			          </div>
			          <div class="form-group">
			            <label for="message-text" class="col-form-label">comment</label>
			            <textarea class="form-control" id="message-text"></textarea>
			          </div>
			        </form>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			        <button type="button" class="btn btn-primary">작성하기</button>
			      </div>
			    </div>
			  </div>
			</div>
			            
            <script>
            	function openModal(){
            		
            		
            		$("#modalBtn").click();
            	}
            	
            	$('#exampleModal').on('show.bs.modal', function (event) {
            		  var button = $(event.relatedTarget) // Button that triggered the modal
            		  var recipient = button.data('whatever') // Extract info from data-* attributes
            		  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
            		  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
            		  var modal = $(this)
            		  modal.find('.modal-title').text('New message to ' + recipient)
            		  modal.find('.modal-body input').val(recipient)
            		})
            </script>
            
            
            
            
         </div>
         
         
         <!--table영역--------------------------------------------------------------------------------------------- -->
         <div class="row">
         <div class="limiter">
		 <div class="container-fluid-table100">
			<div class="wrap-table100">
				<div class="table100 ver1 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">번호</th>
									<th class="cell100 column2">프로필</th>
									<th class="cell100 column3">작성자</th>
									<th class="cell100 column4">내용</th>
									<th class="cell100 column5">작성날짜</th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
								<c:forEach var="cl" items="${commentList }">
								<tr class="row100 body">
									<td class="cell100 column1">${cl.commentRowNum }</td>
									
									<c:if test="${!empty cl.proRename }">
										<td class="cell100 column2">
											<img src="/projectFiles/${cl.proRename }" style="width:30%; height:auto;">
										</td>
									</c:if>
									
									<c:if test="${empty cl.proRename }">
										<td class="cell100 column2">
											<img style="width:30%; height:auto;" src="https://d23zwvh2kbhdec.cloudfront.net/media/public/customers/photos/animals/hamster.png">
										</td>
									</c:if>
									
									<td class="cell100 column3">${cl.cNickName }</td>
									<td class="cell100 column4">${cl.drComment}</td>
									<td class="cell100 column5">${cl.drCommentDate }</td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
         
    </div>     
         
        <!--  <br>
         <div class="row">
            <div class="col-lg-5">
               <h3>선생님께 피드백을!</h3>   ?? = 댓글 수
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
         </div>  -->
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
   
   
   <!--===============================================================================================-->	
	<script src="<%=request.getContextPath()%>/resources/table_vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/table_vendor/bootstrap/js/popper.js"></script>
	<script src="<%=request.getContextPath()%>/resources/table_vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/table_vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/table_vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})
		});
			
		
	</script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/table_js/main.js"></script>
   
   
   </body>
</html>