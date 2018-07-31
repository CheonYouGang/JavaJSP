<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 30. url</title>
</head>
<body>
<c:url var="next" value="Divide.jsp">
	<c:param name="Num1" value="100"></c:param>
	<c:param name="Num2" value="50"></c:param>
</c:url>
<c:redirect url="${next}"></c:redirect>
</body>
</html>