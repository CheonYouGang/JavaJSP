<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 26.chap08.PersonInfo</title>
</head>
<body>
	<jsp:useBean class="chap08.PersonInfo" id="pinfo" scope="request"/>
	
	이름: <jsp:getProperty name="pinfo" property="name"/><br/>
	성별: <jsp:getProperty name="pinfo" property="gender"/><br/>
	나이: <jsp:getProperty name="pinfo" property="age"/>

</body>
</html>