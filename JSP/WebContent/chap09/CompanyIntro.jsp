<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@	page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<fmt:setBundle basename="Intro"/>

<fmt:message var="title" key="TITLE"/>
<fmt:message var="greeting" key="GREETING"/>
<fmt:message var="body" key="BODY"/>
<fmt:message var="companyname" key="COMPANY_NAME"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${title} 프로퍼티</title>
</head>
<body>
	<h3>${title}</h3>
	${greeting}<br><br>
	${body}<br><br>
	<font size=2>${companyname}</font>

</body>
</html>