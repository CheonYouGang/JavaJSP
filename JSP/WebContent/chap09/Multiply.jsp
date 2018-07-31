<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<c:set var="num1" value="7" scope="request"/>
<c:set var="num2" value="9" scope="request"/>
<c:set var="result" value="${num1 * num2}" scope="request"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 30. jstl</title>
</head>
<body>
${num1}과 ${num2}의 합은 ${num1 + num2}
<%-- 	<jsp:forward page="ProductInfo.jsp"></jsp:forward> --%>
</body>
</html>