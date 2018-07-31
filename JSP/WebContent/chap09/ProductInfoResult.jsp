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
	ProductInfoResult페이지<br/>
	
	<%-- <c:remove var="result" scope="request"/> --%>
	
	${num1}과 ${num2}의 곱은? ${result}<br/>
	
	상품코드: ${Code}<br/>
	상 품 명: ${Name}<br/>
	단    가: ${Price}
</body>
</html>