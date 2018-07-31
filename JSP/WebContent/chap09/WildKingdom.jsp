<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 30. forTokens</title>
</head>
<body>
어떤 동물이 있는가?<br/>
<c:set var="guests" value="토끼^^거북이~사슴"></c:set>

<c:forTokens items="${guests}" var="animal" delims="^~">
<ul>
	<li>${animal}</li>
</ul>
</c:forTokens>
</body>
</html>