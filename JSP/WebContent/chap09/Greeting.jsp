<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 30. switch case</title>
</head>
<body>
	<c:choose>
		<c:when test="${param.num==0}">
			<span style="color: blue; font-size: 24px;">처음 뵙겠습니다.</span><br>
		</c:when>
		<c:when test="${param.num==1}">
			<span style="color: green; font-size: 24px;">반갑습니다.</span><br>
		</c:when>
		<c:otherwise>
			<span style="color: purple; font-size: 24px;">안녕하세요.</span><br>		
		</c:otherwise>
	</c:choose>
</body>
</html>