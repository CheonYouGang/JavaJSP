<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
		String cp=request.getContextPath();
		request.setCharacterEncoding("UTF-8");
		
		Cookie [] ck  = request.getCookies();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
저장된 쿠키값<br/>
<%
	for(Cookie c: ck){
		out.println(c.getName()+":"+c.getValue()+"<br/>");
	}
%>

<a href="cooki_del.jsp">쿠키 삭제</a></br>

</body>
</html>