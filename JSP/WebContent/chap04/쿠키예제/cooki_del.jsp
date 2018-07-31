<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
		String cp=request.getContextPath();
		request.setCharacterEncoding("UTF-8");
		
		Cookie c = new Cookie("name", null);
		c.setMaxAge(0);
		response.addCookie(c);
		
		Cookie [] ck = request.getCookies();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
삭제된 후 ...<br/>

<%
	for(Cookie cc : ck){
		out.println(cc.getName()+":"+cc.getValue()+"<br/>");
	}
%>

</body>
</html>