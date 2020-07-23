<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">

<head>

</head>
<body>
	<!-- 클라이언트 페이지 이동 -->
	<% response.sendRedirect(request.getContextPath() + "/home.do"); %>
	
	<!-- admin 페이지 이동(clientManage.jsp로 이동) -->
	
	<%-- <% response.sendRedirect(request.getContextPath() + "/admin.do"); %> --%>
</body>
</html>
