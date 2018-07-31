<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 27.</title>
</head>
<body>
	<h2>개인정보 입력</h2>
	<!-- form action="/JSP/bbs-post" method="post" 서블릿으로만 감-->
	<form action="NewAllCustomerInfo.jsp" method="get"><!-- JSP로 감. -->
		이름: <input type="text" name="name"><br>
		나이: <input type="text" name="age"><br>
		성별: <input type="text" name="gender"><br>

		<input type="submit" value="저장">
		<input type="reset" value="취소">
	</form>
</body>
</html>