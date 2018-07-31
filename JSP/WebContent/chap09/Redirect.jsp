<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 30. Redirect</title>
</head>
<body>
<c:redirect url="Multiply.jsp">
	<c:param name="num1" value="5"></c:param>
	<c:param name="num2" value="25"></c:param>
</c:redirect>
</body>
</html>