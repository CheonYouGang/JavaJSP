<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 8. 8. 업로드 보여주는 화면</title>
</head> 
<body>
	<%request.setCharacterEncoding("UTF-8");%>

	제목:	${param.TITLE }<br>
	설명:	${param.DESCRIPTION }<br>
	파일:	${param.FILE_NAME }<br>
	파일이 업로드 되었습니다.
</body>
</html>