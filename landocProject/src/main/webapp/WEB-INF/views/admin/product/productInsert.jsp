<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>productInsert</title>
    <script src= 'http://code.jquery.com/jquery-latest.js'></script>
    <style>
      /*오른쪽 영역부분*/
        #contentArea{position: absolute; left: 300px; top: 20px; width: 78%; height: 100%;}
        #contentArea h3{padding-bottom: 2%; text-align:center;}
        

        /*오른쪽 영역 table*/
        #contentTb{margin: 0 auto; margin-top: 2%; width: 80%; text-align:center; border: 2px solid #bbb; border-collapse: collapse;}
        #contentTb tr{line-height: 40px;}
        #contentTb th{border-bottom: 2px solid #bbb; border-right: 1px solid #bbb; font-size:13px;}
        #contentTb td{width: auto; border: 1px solid #bbb; font-size:14px;}
        #contentTb button{height: 35px; width: 55%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
        #contentTb button:hover{background-color: #007ee5; color: white;}
      #contentTb input{width:95%; border:none;}
      
      /* #categoryCode{width:98%; height:40px; font-size:18px;margin:0} 이거 한사람 누구야?*/
      #volumn, #categoryCode {width:30%; height:25px; font-size:15px;}
      #contentTb input[type=file]{height:50px;}

        /* textarea */
        textarea {width: 80%;}
        .btnArea button{float: right;}
        
         /* 수정하기, 뒤로가기 버튼*/
        #btnArea{text-align: center; padding-top: 45px;}
        #btnArea button{height: 40px; width: 15%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600; font-size:15px;}
        #btnArea button:hover{background-color: #007ee5; color: white;}
   </style>

</head>
<body>
   
   <jsp:include page="../../common/adminSide.jsp"/>

    <!--여기서 부터 왼쪽 영역 contentArea-->
    <div id="contentArea">
        <h3>신규 상품 추가</h3>

        <!--테이블 부분-->
        <form id="createProduct" action="insertProduct.do" method="post" enctype="multipart/form-data">
            <table id="contentTb">
                <tr>
                    <th class="firstLine cate">상품 카테고리</th>
                    <td>
                       <div style="width:80%;float:left;">
	                        <select id="categoryCode" name="categoryCode">
	                            <option value="1">종합건강</option>
	                            <option value="2">눈건강</option>
	                            <option value="4">장건강</option>
	                            <option value="5">피로개선</option>
	                            <option value="6">피부건강</option>
	                            <option value="3">뼈 & 관절건강</option>
	                        </select>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th class="firstLine">상품명</th>
                    <td>
                    	<div style="width:80%;float:left;">
                        	<input type="text" id="pdName" name="pdName" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <th class="firstLine">상품 부연 설명</th>
                    <td>
                    	<div style="width:80%;float:left;">
                        	<input type="text" name="subExplicate" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <th class="firstLine">정가</th>
                    <td>
                    <div style="width:80%;float:left;">
                        <input id="originPrice" type="number" name="originPrice" style="width:15%"
                        value="0" min="0" /> 원
                    </div>
                    </td>
                </tr>
                <tr>
                    <th class="firstLine">할인율</th>
                    <td>
                    <div style="width:80%;float:left;">
                        <input id="discountPer" type="number" name="discountPer" style="width:15%"
                        value="0" min="0" max="100"/> %
                    </div>
                    </td>
                </tr>
                <tr>
                    <th class="firstLine">판매가격</th>
                    <td>
	                    <div style="width:80%;float:left;">
	                        <input id="sellPrice" type="number" name="sellPrice" style="width:15%"
	                        value="0" min="0"/> 원
	                    </div>
                    </td>
                </tr>
                <tr>
                    <th class="firstLine">용량</th>
                    <td>
                    	<div style="width:80%;float:left;">
	                        <input type="text" name="volume"/>
	                	</div>
                    </td>
                </tr>
                <tr>
                	<th class="firstLine">용량 단위</th>
                	<td>
                		<div style="width:80%;float:left;">
	                		<select id="volumn" name="volumeUnit">
	                            <option value="mg">mg</option>
	                            <option value="IU">IU</option>
	                            <option value="μg">μg</option>
	                            <option value="ug">ug</option>
	                            <option value="mcg">mcg</option>
	                        </select>
	                	</div>
                	</td>
                </tr>
                <tr>
                    <th class="firstLine">용량 부연 설명</th>
                    <td>
                    	<div style="width:80%;float:left;">
                        	<input type="text" name="volumeEx"/>
                    	</div>
                    </td>
                </tr>
                <tr>
                    <th class="firstLine">섭취방법</th>
                    <td>
                    	<div style="width:80%;float:left;">
                        	<input type="text" name="drugWay" />
                   		</div>
                    </td>
                </tr>
                <tr>
                    <th class="firstLine">유통기한</th>
                    <td>
                        <input type="date" name="shelflife" />
                    </td>
                </tr>
                <tr>
                    <th class="firstLine">썸네일 이미지</th>
                    <td>
                    	<div style="width:80%;float:left;">
                        	<input type="file" id="thumbnail" name="thumbnail" onchange="fileCheck(this);" accept="image/gif, image/jpeg, image/png" />
                    	</div>
                    </td>
                </tr>
                <tr>
                    <th class="firstLine">상세 설명 이미지</th>
                    <td>
                    	<div style="width:80%;float:left;">
                        	<input type="file" id="detail" name="detail" onchange="fileCheck(this);" accept="image/gif, image/jpeg, image/png" />
                    	</div>
                    </td>
                </tr>
            </table>
            <div id="btnArea">
                <button type="submit">등록하기</button>
                <button type="button" onclick="location.href='javascript:history.back();'">뒤로가기</button>
            </div>
               
        </form>
        <br><br><br><br><br><br>
    </div>


     <script>
     	$(function(){
	        // 테이블 한 줄 hover효과 주는 function
	        $("#contentTb td").mouseenter(function () {
	            $(this).parent().css({ "background": "lightgrey" });
	        }).mouseout(function () {
	            $(this).parent().css({ "background": "white" });
	        });
			
	        $("#discountPer").on('change', function(){
	        	var op = $("#originPrice").val();
	        	var dp = $(this).val();
	        	
	        	$("#sellPrice").val( parseInt(Number( (100 - dp) / 100 * op )) );
	        	
	        	if( Number($("#sellPrice").val()) < 0 )
	        		$("#sellPrice").val('0');
	        });
	        $("#originPrice").on('change', function(){
	        	var op = $(this).val();
	        	var dp = $("#discountPer").val();
	        	
	        	$("#sellPrice").val(Number( (100 - dp) / 100 * op ));
	        	
	        	if( Number($("#sellPrice").val()) < 0 )
	        		$("#sellPrice").val('0');
	        });

			$("form").on('submit', function(event){
				event.preventDefault();
				
				var pdName = $("#pdName").val();
	        	var originPrice = $("#originPrice").val();
	        	var sellPrice = $("#sellPrice").val();
	        	var thumbnail = $("#thumbnail").val();
	        	var detail = $("#detail").val();
	        	
	        	if(pdName.length <= 3){
	        		alert('상품명은 최소 세 글자 이상이어야 합니다.');
	        		return false;
	        	}
	        	
	        	if(originPrice === "" || sellPrice === ""){
	        		alert('상품 가격을 입력해주셔야 합니다.');
	        		return false;
	        	}
	        	
	        	if(thumbnail === "" || detail === ""){
	        		alert('썸네일 및 상세설명 사진을 올려주셔야 합니다.');
	        		return false;
	        	}
	        	
	        	return true;
			});
     	});//end of jquery
     	
     	 function fileCheck(obj){
     		pathpoint = obj.value.lastIndexOf('.');
     		filepoint = obj.value.substring(pathpoint + 1, obj.length);
     		filetype = filepoint.toLowerCase();
     		
     		if( filetype == 'jpg' || filetype == 'gif' || filetype == 'png' || 
     				filetype == 'jpeg' || filetype == 'bmp' ){
     			//정상
     		}
     		else{
     			alert('이미지 파일만 선택할 수 있습니다.');
     			parentObj = obj.parentNode;
     			node = parentObj.replaceChild(obj.cloneNode(true), obj);
     			return false;
     		}
     	}
    </script>
	

</body>

</html>