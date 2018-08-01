<%@page import="chap12.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@	page import="java.util.*"%>
<%@	page import="java.sql.*"%>
<%-- <%@ page errorPage="DBError.jsp" %> --%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 8. 1. 회원가입 sql</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");//한글데이터 인코딩
	String name 	= request.getParameter("name");
	String id 		= request.getParameter("id");
	String password = request.getParameter("password");
	
	if(name == null || id == null || password == null)
		throw new Exception("데이터를 입력해주세요.");
	
	// Connection- 1단계: DB연결을 위한 커넥션 인터페이스(0순위)
	Connection conn = null;
	// Statement 인터페이스: SQL을 실행하는 객체
	//Statement stmt = null;
	PreparedStatement pstmt =null; 
	// ResultSet 인터페이스: SQL결과를 저장하는 객체(select)
	//ResultSet rs = null;

	String url = "jdbc:mysql://localhost:3306/webdb?useUnicode=true&characterEncoding=utf8";	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, "root", "12345");
		
		//stmt = conn.createStatement();
		//String sql = "insert into userinfo(uname, id, password) " +
		//	"values('" + name + "'," + "'" + id + "'," + "'" + password + "');";
		String sql = "insert into userinfo(uname, id, password) values (?, ?, ?)";
		pstmt = conn.prepareStatement(sql);
 
		pstmt.setString(1, name);
		pstmt.setString(2, id);
		pstmt.setString(3, password);

/* 		int rowNum = stmt.executeUpdate(sql); 
		if(rowNum<1)
			throw new Exception("DB에 입력이 불가능 합니다."); */
		int rowNum = pstmt.executeUpdate();
		if(rowNum<1)
			throw new Exception("DB에 입력이 불가능 합니다.");
		
	}catch(Exception e){
		e.getMessage();	
	}finally{
		//stmt.close();
		pstmt.close();
		conn.close();
	}
%>

	<jsp:forward page="SubscriptionResult.jsp"></jsp:forward>

</body>
</html>