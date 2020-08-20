<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>salesManage</title>
    <script src= 'http://code.jquery.com/jquery-latest.js'></script>
    <style>
       
        /*오른쪽 영역부분*/
        #contentArea{position: absolute; left: 300px; top: 20px; width: 78%; height: 100%;}
        #contentArea h3{padding-bottom: 2%; text-align:center;}
        

        /*오른쪽 영역 table*/
        #contentTb{margin: 0 auto; margin-top: 2%; width: 100%; text-align:center; border: 2px solid #bbb; border-collapse: collapse;}
        #contentTb tr{line-height: 40px;}
        #contentTb th{border-bottom: 2px solid #bbb; border-right: 1px solid #bbb; font-size:13px;}
        #contentTb td{width:auto; border: 1px solid #bbb; font-size:14px;}
        #contentTb button{height: 35px; width: 55%; border: 1px solid white; background-color: #bbb; border-radius: 5px; color: black; font-weight: 600;}
        #contentTb button:hover{background-color: #007ee5; color: white;}

    </style>
</head>
<body>

   <jsp:include page="../../common/adminSide.jsp"/>

    <!--여기서 부터 왼쪽 영역 contentArea-->
    <div id="contentArea">
        <h3>매출 관리</h3>

        <!--테이블 부분-->
        
            <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  			<div id="chart_div" style="width:1200px; height:700px;"></div>
      
      		<script>
      		google.charts.load('current', {packages: ['corechart', 'bar']});
			google.charts.setOnLoadCallback(drawAnnotations);
			
			function drawAnnotations() {
			      var data = new google.visualization.DataTable();
			      data.addColumn('string', '월별');
			      data.addColumn('number', '매출액');
			  
			
			      var dataRow=[];	
			      data.addRows([
			       		['1월',   ${as.month01}],
			       		['2월',   ${as.month02}],
			       		['3월',   ${as.month03}],
			       		['4월',   ${as.month04}],
			       		['5월',   ${as.month05}],
			       		['6월',   ${as.month06}],
			       		['7월',   ${as.month07}],
			       		['8월',   ${as.month08}],
			       		['9월',   ${as.month09}],
			       		['10월',   ${as.month10}],
			       		['11월',   ${as.month11}],
			       		['12월',   ${as.month12}]
			      ]);
			
			      var options = {
			        title: 'sales of the year',
			        annotations: {
			          alwaysOutside: true,
			          textStyle: {
			            fontSize: 14,
			            color: '#000',
			            auraColor: 'none'
			          }
			        },
			        hAxis: {
			          title: '매출관리',
			          format: 'h:mm a',
			          viewWindow: {
			            min: [7, 30, 0],
			            max: [17, 30, 0]
			          } 
			        },
			        vAxis: {
			          title: '매출액'
			        }
			      };
			
			      var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
			      chart.draw(data, options);
			    }
			      
			</script>
        
      
    <br><br><br>
    </div><!-- 오른쪽 contend end -->


</body>
</html>