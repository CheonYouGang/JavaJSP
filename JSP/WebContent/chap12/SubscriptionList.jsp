<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@	page import="java.util.*"%>
<%@	page import="java.sql.*"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="chap12.UserInfo"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 8. 1. 회원가입 목록</title>
</head>
<body>
	<h3>회원정보(뷰 페이지)</h3>
	<c:forEach var="userInfoList" items="${UserInfo}" varStatus="status">
		No.${status.count}<br>
		이름: ${userInfoList.uname}<br>
		ID: ${userInfoList.id}<br> 
		PW: ${userInfoList.password}<br><br>
	</c:forEach>

</body>
</html>