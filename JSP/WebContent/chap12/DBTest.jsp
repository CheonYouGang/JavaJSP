<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@	page import="java.util.*"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 31. DBtest</title>
</head>
<body>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/webdb";
		// Connection- 1단계: DB연결을 위한 커넥션 인터페이스(0순위)
		Connection conn =
			DriverManager.getConnection(url, "root", "12345");
		if(conn != null){
			out.println("web db데이터 베이스로 연결했습니다.<br/>");
			conn.close();
			out.println("web db데이터 베이스의 연결을 종료했습니다.<br/>");
		}else{
			out.println("web db데이터 베이스로 연결이 불가능 합니다.<br/>");
		}
	%>
</body>
</html>