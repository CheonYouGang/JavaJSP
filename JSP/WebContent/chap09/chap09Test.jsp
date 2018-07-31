<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@	page import="java.util.*"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="diff" value="${param.Num1 - param.Num2}"></c:set>
<c:set var="date" value="<%new Date();%>"></c:set>
<c:set var="title" value="뇌를 자극하는 Java 프로그래밍"></c:set>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 31.test</title>
</head>
<body>
1)============================================================<br>
<c:forEach var = "i" begin="1" end="${param.NUM}">
	i의 제곱은? ${i*i}<br/>
</c:forEach>
==============================================================<br><br>

2)============================================================<br>
	${param.Num1} - ${param.Num2} = ${diff}<br>
==============================================================<br><br>

3)============================================================<br>
<%-- 	<fmt:formatDate value="${date}" type="both"
					pattern="yyyy년 MM월 dd일 (E) a hh시 mm분 ss초"/> --%>
==============================================================<br><br>

4)============================================================<br>
	${fn:replace(title, "Java 프로그래밍", param.NAME)}은 어떨까?<br>
==============================================================<br>
<!-- http://localhost:8081/JSP/chap09/chap09Test.jsp?NUM=5&Num1=3&Num2=7&NAME=알고리즘 -->
</body>
</html>