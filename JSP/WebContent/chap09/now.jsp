<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@	page import="java.util.*"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="date" value="<%= new Date() %>"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 30.</title>
</head>
<body>

	[오늘의 날짜]<fmt:formatDate value="${ date}"/><br/>
	[현재의 시각]<fmt:formatDate value="${ date}" type="time"/><br/>
	[전후 시분초]<fmt:formatDate value="${ date}" type="time" timeStyle="full"/><br/>
	[년월일 요일 시간]<fmt:formatDate value="${ date}" type="both" timeStyle="short" dateStyle="long"/><br/>
</body>
</html>