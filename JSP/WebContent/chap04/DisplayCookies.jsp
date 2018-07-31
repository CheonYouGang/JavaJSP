<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page session="false" %>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 18. 쿠키 보여주기</title>
</head>
<body>
	쿠키 이름 : 쿠키 값<br>
	=========================<br>
	<%
		Cookie cookies[] = request.getCookies();//쿠키 가져오기
		if(cookies != null ){
			for(Cookie cookie : cookies){
				String name = URLDecoder.decode(cookie.getName(), "utf-8");//디코딩해서 원래 한글로 받아옴
				String value = cookie.getValue();//쿠키값 가져오기
				out.println(name + " : " + value + "<br>");
			}
		}
	%>
	<br>
	<a href="InputCookie.html">쿠키 입력화면으로</a>
</body>
</html>