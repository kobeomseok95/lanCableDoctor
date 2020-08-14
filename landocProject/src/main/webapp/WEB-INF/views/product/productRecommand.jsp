<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

    #productTb th{text-align: left;}
    #productTb td{text-align: left;}

/*-------------------------------------------------------------*/
/*범석 상품 navibar*/
.product-menu {
   width: 100%;
   float: left;
   margin: 0 0 1em 0;
   padding: 0;
   border-bottom: 1px solid #ccc;
   border-top: 1px solid #ccc; 
   background-color: white;
   border: none;
}
.product-menu ul {
   list-style: none;
   width: 100%;
   margin: 0 auto;
   padding: 0; 
}
.product-menu li {
   float: left; 
   width: 14.28%;
}
.product-menu li a {
   text-align: center;
   display: block;
   text-decoration: none;
   font-size: 18px;
   font-weight: bold;
   color: #0071ce;
   border-right: 1px solid #ccc; 
}
.product-menu li:first-child a {
   border-left: 1px solid #ccc; 
}
.product-menu li a:hover {
   color: #c00;
   background-color: #fff; 
}

/*--------------------------------------------------------------*/   
.proImg{width: 130px; height: 130px;}
.textarea{ width: 77%; float: right;}
.span{font-size:14px;text-align:right;color:#494949;letter-spacing: -0.6px;}
</style>
</head>
<body>
   <!-- Page Preloder -->
   <div id="preloder">
      <div class="loader"></div>
   </div>

   <%@ include file="../static/header.jsp"%>
      
   
   <link rel="stylesheet" type="text/css" href="https://d23zwvh2kbhdec.cloudfront.net/static_20_07_08/mdd_event/style.css">
   
   <!--범석 상품 navibar-->
   <!-- menu -->
    <div class="product-menu" >
        <div class="pt-4 pb-5 pl-50" style="text-align: center;">
           
        

        <div class="container">
                <ul>
                    <li><a href="recommandView.do?categoryNo=7">전체보기</a></li>
                    <li><a href="recommandView.do?categoryNo=1">종합건강</a></li>
                    <li><a href="recommandView.do?categoryNo=2">눈건강</a></li>
                    <li><a href="recommandView.do?categoryNo=4">장건강</a></li>
                    <li><a href="recommandView.do?categoryNo=5">피로개선</a></li>
                    <li><a href="recommandView.do?categoryNo=6">피부건강</a></li>
                    <li><a href="recommandView.do?categoryNo=3">뼈&관절건강</a></li>
                </ul>
        </div>

        </div>
    </div>
        

   
   
   <!--form 태그 시작-->
   <form id="register-submit-form" action="recommand.do">
      <input type="hidden" name="csrfmiddlewaretoken" value="7EYyK9n8kkbHp3Y3zYlR8e1LSwhuubipViDL0KoRy7LwZOtyK80JuVWhaIcpapZA">
      
      <div class="container-fluid mt-0 pt-5 pb-5" style="background-color: #e5f2fc;text-align: center">
         <div style="width: 1000px; display: inline-block">
            <!--추천 상품 리스트 선택-->
         <div class="summit-content-box mx-auto p-5 mt-4">
            <div class="row mb-5">
               <div class="col-sm-1">
                  <div class="content-box-numbering align-middle mx-auto">1</div>
               </div>
               <div class="col-sm-11 content-box-title">
                        추천 상품을 선택해주세요!
               </div>
            </div>
            <div class="row" style="height: 300px; overflow: auto;">
            <input type="hidden" name="drNo" value=${drNo }>
               <c:forEach var="pro" items="${proReco }" varStatus="status">
                    <!--상품 리스트 나오는 부분-->
	               <div style="position: relative; margin-top: 10px;margin-bottom:20px; margin-left:30px; margin-right: 35px;">
	                        &nbsp;
	                        <div style="position: absolute; left: 0; top: 0; padding:10px;">
	                            <input type="checkbox" id="product1${status.index }" name="product1" value="${pro.pdNo }">
	                        </div>
	                        <label for="product1" style="padding-left: 40px; padding-top: 6px;">
	                            <img src="/projectFiles/${pro.pdpRename }" style="width: 150px; height: 150px;">
	                            <input type="hidden" id="rename${status.index}" value="${pro.pdpRename }">
	                            <div style="float: right; margin-left: 7px;">
	                            <table id="productTb">
	                                <tr>
	                                    <th>상품이름 : </th>
	                                    <td>${pro.pdName }</td>
	                                </tr>
	                                <tr>
	                                    <th>용량 : </th>
	                                    <td>${pro.volume }</td>
	                                </tr>
	                                <tr>
	                                    <th>원가 : </th>
	                                    <td>${pro.originPrice }</td>
	                                </tr>
	                                <tr>
	                                    <th>세일 : ${pro.discount }</th>
	                                    <td></td>
	                                </tr>
	                                <tr>
	                                    <th>판매가 : </th>
	                                    <td>${pro.sellPrice }</td>
	                                </tr>
	                            </table>
	                            </div>
	                        </label>
	                    </div>
                    </c:forEach>
         </div>
   

   

         <!--추천 이유 작성 부분-->
         <div class="summit-content-box mx-auto p-5 mt-4" id="row">
            <div class="row mb-4">
               <div class="col-sm-1">
                  <div class="content-box-numbering align-middle mx-auto">2</div>
               </div>
               <div class="col-sm-11 content-box-title">
                  추천 이유를 작성해주세요!
               </div>
            </div>
            <div class="row text-left">
               <div class="col-sm-10 offset-sm-1 p-3 rounded-lg" style="background-color: #f8f8f8;">
                  <b style="color: #494949;">좋은 추천은?</b>
                  <b style="color: #494949; font-weight:300;">1. 성분 중심의 추천  /  2. 효과 중심의 추천  /  3. 타 제품과의 비교 중심의 추천</b>
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
   
            
         </div>
                     <script>
                        function textCounter(field,field2,maxlimit)
                        {
                           $('#' + field2).text(field.value.length);
                        }
                     </script>
   

         <div class="row mt-5 mb-5 pt-3">
            <div class="col-sm-6 offset-sm-3 p-0 align-top">
               <button class="btn btn-mdd w-100 p-4" type="submit" style="font-size:21px; color: white; background-color: #0071ce;">
                  추천 등록하기
               </button>
            </div>
         </div>
   
      </div>
      </div>
   </form>
   

	<script>
		$(function(){
			var listPro = new Array();
			var listImg = new Array();
			<c:forEach var="list" items="${proReco }">
				listPro.push("${list.pdNo}");
				listImg.push("${list.pdpRename}");
			</c:forEach>
			
		
			
			
			listPro.forEach(function(pdNo,index){
				$("#product1"+index).click(function(){
					
						if($("#product1" + index).is(":checked") == true){
						
						
						var row = document.getElementById('row');
						
						var p = document.createElement("div");
						p.className="row div";
						p.setAttribute("id","pdDiv");
						row.appendChild(p);
						
						var p1 = document.createElement('div');
						p1.className='col-sm-10 offset-sm-1 p-0 mt-1';
						
						p.appendChild(p1);
						
						var p2 = document.createElement('img');
						p2.className='proImg';
						p2.setAttribute('src', '/projectFiles/' + listImg[index]);
						p1.appendChild(p2);
						
						var hidden = document.createElement('input');
						hidden.setAttribute('type','hidden');
						hidden.setAttribute('name','pdNo');
						hidden.setAttribute('value', listPro[index]);
						p1.appendChild(hidden);
						
						var p3 = document.createElement('textarea');
						p3.className='form-controll textarea';
						p3.setAttribute('rows',"5");
						p3.setAttribute("id","comment");
						p3.setAttribute("name", "drComment");
						p3.setAttribute("placeholder", "병원에 대해 간략한 소개를 적어주세요. (200자 이상)" );	
						p3.setAttribute("onkeyup", "textCounter(this, 'counter"+index+" ' "+", 200);");
						p1.appendChild(p3);
						
					
						
						var p4 = document.createElement('div');
						p4.className='mt-1 span';
						p4.innerHTML="(";
						p1.appendChild(p4);
					
						var p5 = document.createElement('span');
						p5.setAttribute('id', 'counter'+index);
						p4.appendChild(p5);
						p5.innerHTML="0"
						
						var p6 = document.createElement("span");
						p4.appendChild(p6);
					
						p6.innerHTML="자, 최소 200자 이상)"
					
						
						
						}else{
							$("#pdDiv").remove();
							
						}
					
					
			
		
			});
			
			});
		
		});
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