<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 27.</title>
</head>
<body>
	<jsp:useBean class="chap08.PersonInfo" id="pinfo"/>
	 	<jsp:setProperty name="pinfo" property="*"/>
	 	<!-- property = "*" 사용시  bean클래스의 PersonInfo의
	 	private String name;
		private char gender;
		private int age;
		의 매핑값 가져오게 된다. -->
	
	이름: <jsp:getProperty name="pinfo" property="name"/><br/>
	나이: <jsp:getProperty name="pinfo" property="age"/>
	성별: <jsp:getProperty name="pinfo" property="gender"/><br/>
	<!-- jsp:forward page="CustomerInfoViewer.jsp"/-->
</body>
</html>