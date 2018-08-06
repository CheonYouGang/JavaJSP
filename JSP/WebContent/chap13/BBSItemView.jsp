<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@	page import="java.util.*"%>
<%@ page import="chap13.BBSItem" %>
<%@	page import="java.sql.*"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="org.apache.log4j.*" %>

<%
	Logger logger = Logger.getLogger(this.getClass());
%>

<%-- <%
	int seqno = Integer.parseInt(request.getParameter("Seq_No"));
	BBSItem bbsItem = new BBSItem();
	bbsItem.setSeqno(seqno);
	bbsItem.readDB();
%> --%>

<jsp:useBean id="bbsItem" class="chap13.BBSItem"></jsp:useBean>
<jsp:setProperty name="bbsItem" property="seqno" value="${param.Seq}"/>
<% bbsItem.readDB();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 8. 2. 게시글 읽기</title>
</head>
<body>
	<h4>게시글 읽기</h4>
	[제    목] ${bbsItem.title}<br>
	[작 정 자] ${bbsItem.writer}
	[작성일시] ${bbsItem.wdate}
			${bbsItem.wtime}<br>
	=============================================================<br>
	${bbsItem.content}
</body>
</html>