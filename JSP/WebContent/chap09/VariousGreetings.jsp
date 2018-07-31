<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@	page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="greeting" value="How Are You"></c:set>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 31. 함수 라이브러리 활용</title>
</head>
<body>
	본래 문자열: ${greeting}<br/>
	대문자: ${fn:toUpperCase(greeting)}<br/>
	소문자: ${fn:toLowerCase(greeting)}<br/>
	Are위치는?: ${fn:indexOf(greeting, "Are")}<br/>
	Are는 Were로 바꾸면?: ${fn:replace(greeting, "Are", "Were")}<br/>
	문자열 길이는?: ${fn:length(greeting)}
</body>
</html>