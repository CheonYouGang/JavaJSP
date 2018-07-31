<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 17. Cookies</title>
</head>
<body>
	이름:<%=getCookieValue(cookies, "Name")%><br/>
	성별:<%=getCookieValue(cookies, "Gender")%><br/>
	나이:<%=getCookieValue(cookies, "Age")%><br/>
</body>
</html>
<%!
	private String getCookieValue(Cookie[] cookies, String name){
		if(cookies == null)
			return null;
		for(Cookie cookie : cookies){
			if(cookie.getName().equals(name))
				return cookie.getValue();
		}
		return null;
}
%>