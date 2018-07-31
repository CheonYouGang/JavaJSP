<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 26. include 지시</title>
</head>
<body>
<script type="text/javascript">
<%--
window.onload = function(){
	var str = document.getElementById('header');
	str.onclick = function(){
		alert();
	}
}
--%>
$(document).ready(function() {
	var str = $('#header').val();
	console.log(str);
	alert(str);
});
</script>
	<h1 id='header'>책 소개</h1>
		제목: 뇌를 자극하는 JAVA프로그래밍<br/>
		저자: 김윤명<br/>
		페이지 수: 908p<br/><br/>
		
		<jsp:include page="../Common/Copyright.html"></jsp:include>
		
		
</body>
</html>