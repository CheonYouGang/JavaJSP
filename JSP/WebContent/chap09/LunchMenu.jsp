<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 30. Lunch Menu forEach</title>
</head>
<body>
<%
	String lun[]={"백반", "오므라이스", "콩국수"};
	request.setAttribute("Menu", lun);
%>
<jsp:forward page="LunchMenuView.jsp"></jsp:forward>
</body>
</html>