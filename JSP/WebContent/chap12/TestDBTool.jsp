<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="DBError.jsp"%>
<%@	page import="java.util.*"%>
<%@	page import="java.sql.*"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 8. 2. CreateDBPool.jsp DB커넥션 풀 테스트 (먼저 실행해야  ListDBPools을 실행할 수 있다.)</title>
</head>
<body>
	<h3>DB커넥션 풀 테스트</h3>
	<%
	Class.forName("org.apache.commons.dbcp.PoolingDriver");
	Class.forName("com.mysql.jdbc.Driver");//추가 해줘야 정상 작동
	//Connection conn = DriverManager.getConnection(
	//					"jdbc:apache:commons:dbcp:/webdb_pool");
	Connection conn = DriverManager.getConnection(
						"jdbc:apache:commons:dbcp:/wdbpool");
		if(conn != null){
			out.println("연결 취득 완료.<br>");
			conn.close();
			out.println("연결 반환 완료.<br>");
		}else{
			out.println("연결 취득 실패.<br>");
		}
	%>
</body>
</html>