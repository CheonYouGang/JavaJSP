<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
<h2>오늘의 메뉴</h2>
	-삼계탕<br>
	-돈까스<br>
	-튀김국수<br>
	<!-- 지시자로 쓰임 include를 쓰면 해당 jsp파일도 포함해서 menu.jsp이 호출하게 된다. -->
	<%@include file = "Today.jsp"%>
</body>
</html>