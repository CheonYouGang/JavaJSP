<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 8. 6. 오라클DB연동</title>
</head>
<body>
	<%
		
		String url = "jdbc:oracle:thin:@192.168.0.14:1521:orcl";
		Class.forName("oracle.jdbc.driver.OracleDriver");

		// Connection- 1단계: DB연결을 위한 커넥션 인터페이스(0순위)
		Connection conn =
			DriverManager.getConnection(url, "orauser03", "12345");
		if(conn != null){
			out.println("oracle데이터 베이스로 연결했습니다.<br/>");
			conn.close();
			out.println("oracle데이터 베이스의 연결을 종료했습니다.<br/>");
		}else{
			out.println("oracle데이터 베이스로 연결이 불가능 합니다.<br/>");
		}
	
		
	%>
</body>
</html>