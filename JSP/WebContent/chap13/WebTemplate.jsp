<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@	page import="java.util.*"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="org.apache.log4j.*" %>

<%
	Logger logger = Logger.getLogger(this.getClass());
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 8. 2. 게시판 템플릿</title>
</head>
<body>

	<h1>한빛미디어</h1>
	<table width="500" cellpadding="10">
		<tr><!-- tr = 행 -->
			<td width="150" valign="top"><!-- td = 열 -->
				-회사 소개<br>
				-책 목록<br>
				-게시판 글 읽기<br>
				-게시판 글 쓰기<br>
			</td>
			<td>
				<jsp:include page="${param.BODY_PATH}"></jsp:include>
			</td>
		</tr>	
	</table>
	<h5>Copyright@ 1993-2018 한빛미디어(주)</h5>
</body>
</html>