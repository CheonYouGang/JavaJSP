<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 27. mall패키지 제품 정보</title> 
</head>
<body>
	<jsp:useBean class="mall.ProductInfo" id="pinfo" scope="request" />
	 	<jsp:getProperty name="pinfo" property="code"/><br/>
		<jsp:getProperty name="pinfo" property="name"/><br/>
		<jsp:getProperty name="pinfo" property="price"/><br/>	
	
</body>
</html>