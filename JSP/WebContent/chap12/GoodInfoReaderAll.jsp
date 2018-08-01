<%@page import="chap12.GoodsInfo"%>
<%@page import="java.sql.*"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@	page import="java.util.*"%>
<%@ page errorPage="DBError.jsp"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 31.</title>
</head>
<body>
	<%
		//리스트 먼저(여러개의 집합을 만들기 위해서)
		ArrayList<GoodsInfo> goodsinfoList = new ArrayList<GoodsInfo>();
		//bean클래스 객체 
		GoodsInfo goodsInfo;
		
	
		// Connection- 1단계: DB연결을 위한 커넥션 인터페이스(0순위)
		Connection conn = null;
		// Statement 인터페이스: SQL을 실행하는 객체
		Statement stmt = null;
		// ResultSet 인터페이스: SQL결과를 저장하는 객체(select)
		ResultSet rs = null;
		String sql = "select * from goodsinfo";
		
		try{	
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/webdb";
			
			conn = DriverManager.getConnection(url, "root", "12345");
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			//rs.next() 끝날때 까지 읽어서 기록 저장(읽을 데이터가 없을 때까지 읽어옴)
			while(rs.next()){
				goodsInfo = new GoodsInfo();
				
				goodsInfo.setGcode(rs.getString(1));
				goodsInfo.setTitle(rs.getString(2));
				goodsInfo.setWriter(rs.getString(3));
				goodsInfo.setPrice(rs.getInt(4));
				
				goodsinfoList.add(goodsInfo);
			}
			
			request.setAttribute("GoodsInfo", goodsinfoList);
			
		}catch(Exception e){
			e.getMessage();	
		}finally{
			try{
				rs.close();
			}catch(Exception ex){
				
			}
			try{
				stmt.close();
			}catch(Exception ei){	
			}
			try{
				conn.close();
			}catch(Exception eig){
			}
		}
	%>
	
	<jsp:forward page="GoodInfoViewer.jsp"></jsp:forward>
	<!-- 뷰 페이지 이동 -->
</body>
</html>