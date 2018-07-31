<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@	page import="java.util.*"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 30. formatNumber</title>
</head>
<body>
	첫 번째: <fmt:formatNumber value="123456789" groupingUsed="true"></fmt:formatNumber><br/><br/>
	두 번째: <fmt:formatNumber value="3.141592" pattern="#.###"></fmt:formatNumber><br/><br/>
	세 번째: <fmt:formatNumber value="10.5" pattern="#.00"></fmt:formatNumber><br/><br/>
	네 번째: <fmt:formatNumber value="0.5" type="percent"></fmt:formatNumber><br/><br/>
	다섯 번째: <fmt:formatNumber value="20000000" type="currency"></fmt:formatNumber><br/><br/>
	<fmt:setLocale value="en_us"/>
</body>
</html>