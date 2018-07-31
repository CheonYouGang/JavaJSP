<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<c:set var="num1" value="100"></c:set>
<c:set var="num2" value="50"></c:set>

<%-- <c:if test="${num1 - num2 >= 0}">
		${num1}
</c:if>
<c:if test="${num1 - num2 < 0}">
		${num2}
</c:if> --%>

<c:if test="${num1 < num2}">
	출력값 ${num2}
</c:if>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 30. param if문</title>
</head>
<body>
<!-- 	<h2>최대값:</h2> -->
<%-- 	<c:if test="${param.num1 - param.num2 >=0}">
		${param.num1}
	</c:if>
	<c:if test="${param.num1 - param.num2 <0}">
		${param.num2}
	</c:if> --%>
</body>
</html>