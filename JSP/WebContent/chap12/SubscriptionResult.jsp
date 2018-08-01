<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@	page import="java.util.*"%>
<%@	page import="java.sql.*"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="chap12.UserInfo"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 8. 1. 회원가입 결과</title>

<script type="text/javascript">
function goto_userInfoAllView(){
	location.href="userInfoAllView.jsp";  // 페이지를 이동
}
</script>

</head>
<body>

	<h3>결과</h3>
	회원가입 되셨습니다.<br><br>
	
	<input type="button" value="전체회원 보기"  onclick="javascript:goto_userInfoAllView();"/>
</body>
</html>