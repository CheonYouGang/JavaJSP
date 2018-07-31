<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<c:set var="Code" value="80012" scope="request"/>
<c:set var="Name" value="온습도계" scope="request"/>
<c:set var="Price" value="15000" scope="request"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 30.</title>
</head>
<body>
	ProductInfo페이지<br/>
	${num1}과 ${num2}의 곱은? ${result}
	
	<jsp:forward page="ProductInfoResult.jsp"></jsp:forward>
</body>
</html>