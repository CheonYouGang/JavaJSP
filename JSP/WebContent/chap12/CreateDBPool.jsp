<%@page import="org.apache.commons.dbcp.PoolingDriver"%>
<%@page import="org.apache.commons.dbcp.PoolableConnectionFactory"%>
<%@page import="org.apache.commons.dbcp.DriverManagerConnectionFactory"%>
<%@page import="org.apache.commons.pool.impl.GenericObjectPool"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@	page import="java.util.*"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
	String url = "jdbc:mysql://localhost:3306/webdb";

	GenericObjectPool objectPool = new GenericObjectPool();
	DriverManagerConnectionFactory connectionFactory =
			new DriverManagerConnectionFactory(url, "root", "12345");
	new PoolableConnectionFactory(connectionFactory,
								  objectPool, null, null, false, true);
	PoolingDriver driver = new PoolingDriver();
	driver.registerPool("/webdb_pool", objectPool);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 8. 2. DB커넥션 툴</title>
</head>
<body>
	DB커넥션 풀을 생성하고 등록했습니다.<br><br>
	풀 이름: /webdb_pool
</body>
</html>