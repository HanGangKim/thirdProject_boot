<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--1.세션에 값을 전부 지운다. -->
<%
session.invalidate(); // 세션에 있는 값을 전부다 지우기
%>
<!-- 회원이 아닌 사람이 각 폴더안에 있는 파일을 접근 시 -->
<!-- 실행 즉시 컨트롤러 ->(리턴)-> 웹페이지  -->
<!-- com.human.java.start.controller에 위치 -->
<%
response.sendRedirect("/start/NoneMemberMain.do");
%>
</body>
</html>