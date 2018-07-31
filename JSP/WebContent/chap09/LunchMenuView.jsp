<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 30.</title>
</head>
<body>
<h2>오늘의 메뉴</h2>
<ul>
	<c:forEach var="dish" items="${Menu}"><!-- var는 변수 item은 request.setAttribute의 스트링 값-->
		<li>${dish}</li>
	</c:forEach>
</ul>
</body>
</html>