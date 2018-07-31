<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%
/* 	String str1 = request.getParameter("Num1");
	String str2 = request.getParameter("Num2");
	int num1 = Integer.parseInt(str1);
	int num2 = Integer.parseInt(str2); */
	String str1= (request.getParameter("Num1")==null)? "0":request.getParameter("Num1");
	String str2= (request.getParameter("Num1")==null)? "0":request.getParameter("Num2");
	
	int num1 = Integer.parseInt(str1);
	int num2 = Integer.parseInt(str2);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 30. Divide (catch Or import)</title>
</head>
<body>
<c:catch var="e">
	<% int result = num1 / num2; %>
	<%= result %><br/>
</c:catch>
<c:if test="${e!=null}">
	에러메세지: ${e.message}<br/>
</c:if>
<c:import url="Echo.jsp"></c:import>
<c:import url="https://news.naver.com/main/read.nhn?mode=LPOD&mid=sec&oid=001&aid=0010240943&isYeonhapFlash=Y&rc=N"></c:import>
</body>
</html>