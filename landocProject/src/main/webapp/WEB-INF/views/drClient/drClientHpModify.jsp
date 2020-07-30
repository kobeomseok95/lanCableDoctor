<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
   <title>병원수정</title>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
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
</style>
</head>
<body>
   
   <div class="limiter" id="login">
      <div class="container-login100">
         <div class="wrap-login100">
            <form class="login100-form validate-form" action="drClientHpModify.do?drNo=${drClientHp1.drNo }" method="post" enctype="multipart/form-data">
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
               <div class="wrap-input100 validate-input"
						data-validate="병원을 선택해 주세요">
						<span class="focus-input100" data-placeholder="병원"></span> <select
							class="input100" name="hpNo" id="hpNo" style="border: none;" >

							<!-- <datalist id="hospitalList" class="focus-input100" data-placeholder="병원 검색"> -->
							<option value="1">소화병원(의료법인 소화병원)</option>
							<option value="2">연세슬기병원</option>
							<option value="3">연세바로척병원</option>
							<option value="4">서울명병원</option>
							<option value="5">도봉병원</option>
							<option value="6">강서필병원</option>
							<option value="7">의료법인 길정의료재단 길정병원</option>
							<option value="8">진병원</option>
							<option value="9">신세계 여성병원</option>
							<option value="10">한그루치과병원</option>
							<option value="11">신촌다인치과병원</option>
							<option value="12">새로난한방병원</option>
							<option value="13">가천대학교부속 길한방병원</option>
							<option value="14">의료법인다나의료재단구로다나병원</option>
							<option value="15">지앤지병원</option>
							<option value="16">메드윌병원</option>
							<option value="17">열경의료재단동부허병원</option>
							<option value="18">서울지구병원</option>
							<option value="19">기쁨병원</option>
							<option value="20">예울병원</option>
							<option value="21">바른유병원</option>
							<option value="22">샤인치과교정과 치과병원</option>
							<option value="23">서울실버한방병원</option>
							<option value="24">재단법인 자생의료재단 해운대자생한방병원</option>
							<option value="25">바른마디병원</option>
							<option value="26">국군강릉병원</option>
							<option value="27">푸른사랑병원</option>
							<option value="28">금강아산병원(재단법인 아산사회복지재단)</option>
							<option value="29">9988병원</option>
							<option value="30">연세무척나은병원</option>
							<option value="31">맑은수병원</option>
							<option value="32">서울현대병원</option>
							<option value="33">의료법인 백천의료재단 바로본병원</option>
							<option value="34">대명의료재단서대구병원</option>
							<option value="35">의료법인장호의료재단녹동현대병원</option>
							<option value="36">해남한국병원</option>
							<option value="37">의료법인삼선의료재단영암병원</option>
							<option value="38">국군고양병원</option>
							<option value="39">마디세상병원</option>
							<option value="40">재단법인한국산업보건환경연구소부설 해상병원</option>
							<option value="41">송파미소병원</option>
							<option value="42">순천센텀병원</option>
							<option value="43">의료법인 현경의료재단 광양서울병원</option>
							<option value="44">잎사귀치과병원</option>
							<option value="45">학교법인대진교육재단 제인병원</option>
							<option value="46">제니스병원</option>
							<option value="47">성신병원</option>
							<option value="48">정병원</option>
							<option value="49">참튼튼병원</option>
							<option value="50">강남을지대학교병원</option>
							<option value="51">에스병원(S병원)</option>
							<option value="52">대동병원</option>
							<option value="53">새동산병원</option>
							<option value="54">전라남도강진의료원</option>
							<option value="55">계명대학교 의과대학 경주 동산병원</option>
							<option value="56">문치과병원</option>
							<option value="57">학교법인연세대학교치과대학치과병원</option>
							<option value="58">네모치과병원</option>
							<option value="59">목동예치과병원</option>
							<option value="60">더존한방병원</option>
							<option value="61">허브휴양 한방병원</option>
							<option value="62">(의)광혜원한방병원</option>
							<option value="63">더웰병원</option>
							<option value="64">국군구리병원</option>
							<option value="65">의료법인 제일의료재단 제일병원</option>
							<option value="66">서울특별시서북병원</option>
							<option value="67">서울특별시은평병원</option>
							<option value="68">씨에스나무병원</option>
							<option value="69">장흥우리병원</option>
							<option value="70">해남우석병원</option>
							<option value="71">서울아동병원</option>
							<option value="72">로덴성문치과병원</option>
							<option value="73">이엔이치과병원</option>
							<option value="74">서울특별시 북부병원</option>
							<option value="75">강북으뜸병원</option>
							<option value="76">의료법인 우리아이들 의료재단 우리아이들병원</option>
							<option value="77">(복지)예사랑병원</option>
							<option value="78">화순성심병원</option>
							<option value="79">강남병원</option>
							<option value="80">의료법인 갑을의료재단 갑을구미병원</option>
							<option value="81">다인치과병원</option>
							<option value="82">강북예치과병원</option>
							<option value="83">동의대부속 한방병원</option>
							<option value="84">대구자생한방병원</option>
							<option value="85">성인천한방병원</option>
							<option value="86">강남여성병원</option>
							<option value="87">오산세종병원</option>
							<option value="88">국립교통재활병원</option>
							<option value="89">반도정형외과병원</option>
							<option value="90">국립중앙의료원</option>
							<option value="91">서울송도병원</option>
							<option value="92">서울동인병원</option>
							<option value="93">서울프라임병원</option>
							<option value="94">서울척병원</option>
							<option value="95">사회복지법인 성가소비녀회 성가복지병원</option>
							<option value="96">연세노블병원</option>
							<option value="97">성지병원</option>
							<option value="98">새움병원</option>
							<option value="99">통합의료진흥원 전인병원</option>
							<option value="100">경희치과병원</option>
							<option value="101">강동모커리한방병원</option>
							<option value="102">대구한의대학교부속대구한방병원</option>
							<option value="103">수원중앙병원</option>
							<option value="104">고운여성병원</option>
							<option value="105">의료법인 대광의료재단 괴산성모병원</option>
						</select>

					</div>

					<div class="wrap-input100 validate-input"
						data-validate="정해진 진료과목을 선택 및 입력해주세요.">
						<span class="focus-input100" data-placeholder="주분야"></span> <select
							class="input100" name="hpCateCode" id="hpCateCode"  
							style="border: none;">
							<option value="400">치과</option>
							<option value="114">피부과</option>
							<option value="108">성형외과</option>
							<option value="112">안과</option>
							<option value="110">산부인과</option>
							<option value="115">비뇨기과</option>
							<option value="103">정신건강의학과</option>
							<option value="105">정형외과</option>
							<option value="116">마취통증의학과</option>
							<option value="106">신경외과</option>
							<option value="120">재활의학과</option>
							<option value="109">영상의학과</option>
							<option value="104">외과</option>
							<option value="102">신경과</option>
							<option value="111">소아과</option>
							<option value="101">내과</option>
							<option value="113">이비인후과</option>
							<option value="122">가정의학과</option>
							<option value="300">한의원</option>
						</select>

					</div>
               <div>
                  <label class="file1">재직 증명서 또는 사업자 등록증</label>
                  <input class="fileBtn" type="file" id="uploadImage1" name="uploadFile1" required="required">
                  <div class="fileBox">
                     <img class="fileImg" id="imagePreview1" src="/projectFiles/${drClientHp1.drhpRename }"/>
                  </div>

                  <label class="file2">신분증</label>
                  <input type="file" id="uploadImage2" name="uploadFile2" required="required">
                  <div class="fileBox">
                     <img class="fileImg" id="imagePreview2" src="/projectFiles/${drClientHp2.drhpRename }"/>
                  </div>

                  <label class="file2">의사 면허증</label>
                  <input type="file" id="uploadImage3" name="uploadFile3" required="required">
                  <div class="fileBox">
                     <img class="fileImg" id="imagePreview3" src="/projectFiles/${drClientHp3.drhpRename }"/>
                  </div>
               </div>

               <div class="container-login100-form-btn" style="padding-top: 50px;">
                  <div class="wrap-login100-form-btn">
                     <div class="login100-form-bgbtn"></div>
                     <button class="login100-form-btn">
                        서류 제출
                     </button>
                  </div>
               </div>
               
               <!-- <div class="text-center p-t-115" style="padding-top: 30px;">
                  <span class="txt1">
                     회원이라구요?
                  </span>

                  <a class="txt2" href="loginView.do">
                     로그인
                  </a>
               </div> -->
            </form>
         </div>
      </div>
   </div>
   

   <div id="dropDownSelect1"></div>
   
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
</html>