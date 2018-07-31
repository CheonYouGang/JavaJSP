<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 30. out</title>
</head>
<body>
	<h3>태그에 대하여</h3>
<%-- 	<c:out value="<font Size=7>
	 커다란 글씨 </font>는 다음과 같은 출력을 합니다."><br/>
	</c:out>
	
	<c:out value="<font Size=7>
	 커다란 글씨 </font>"escapeXml="false"><br/>
	</c:out> --%>
	
	안녕하세요, <c:out value="${param.ID}" default="guest"></c:out> 님
</body>
</html>