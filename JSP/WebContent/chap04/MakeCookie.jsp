<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page session="false" %>
<%@ page import="java.net.URLEncoder" %>
<%
	String cookieName = request.getParameter("CookieName");
	String cookieValue = request.getParameter("CookieValue");
	cookieName = URLEncoder.encode(cookieName, "UTF-8");
	response.addCookie(new Cookie(cookieName, cookieValue));
	response.sendRedirect("DisplayCookies.jsp");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 18. 쿠키 입력 하기</title>
</head>
<body>

</body>
</html>