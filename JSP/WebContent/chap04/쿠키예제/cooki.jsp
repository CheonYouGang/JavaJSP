<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
		String cp=request.getContextPath();
		request.setCharacterEncoding("UTF-8");
		
		//키의 이름 뒤에있는것 쿠키의 저장할 값이다.
		Cookie c1 = new Cookie("name","hong");
		Cookie c2 = new Cookie("age","20");
		//쿠키의 유효시간
		c1.setMaxAge(60*60*24);
		c2.setMaxAge(60*60*24);
		// c1.setMaxAge(-1); //브라우저가 닫히면 쿠키 제거
		// c1.setMaxAge(0); // 새성과 동시에 제거
		
		response.addCookie(c1);
		response.addCookie(c2);
		
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

쿠키저장 성공<br/>

<a href="cooki_ok.jsp">쿠키 가져오기</a><br/>


</body>
</html>