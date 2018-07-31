<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 26. forword</title>
</head>
<body>
	<%
		int sum = 0;
		for(int cnt = 1; cnt <= 100; cnt++){
			sum += cnt;
		}
		
		request.setAttribute("Result", new Integer(sum));
		
		//request.getRequestDispatcher("HundredResult.jsp");
		//dispatcher.forward(request, response);//->forward 구문 이용시 'Now.jsp'화면만을 보여준다.
	%>
	
	<jsp:forward page="HundredResult.jsp"></jsp:forward>
</body>
</html>