<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 26.chap08.PersonInfo</title>
</head>
<body>
	<jsp:useBean class="chap08.PersonInfo" id="pinfo" scope="request">
	 	<jsp:setProperty name="pinfo" property="name" value="김연희"/>
		<jsp:setProperty name="pinfo" property="gender" value="여"/>
		<jsp:setProperty name="pinfo" property="age" value="27"/>	
	</jsp:useBean>
	
	<jsp:forward page="CustomerInfoViewer.jsp"></jsp:forward>

</body>
</html>