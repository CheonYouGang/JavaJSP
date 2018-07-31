<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.GregorianCalendar"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->

<title>2018. 7. 17.-include(188p)-</title>

<!-- 부트스트랩 -->
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<script src="js/bootstrap.min.js"></script>
	
	<!-- 서블릿 문장 (=out.print) -->
	<h3>오늘의 메뉴</h3>
		- 짜장면<br/>
		- 볶음밥<br/>
		- 짬  뽕<br/><br/>
		
	<%
		//out.flush();//버퍼 비움(위에있는 서블릿 문장을 우선시 출력) = include
					//(이것이 없음 밑에있는 RequestDispatcher 기능이 우선시 된다.)
		RequestDispatcher dispatcher = 
			request.getRequestDispatcher("Now.jsp");
		//dispatcher.include(request, response);
		dispatcher.forward(request, response);//->forward 구문 이용시 'Now.jsp'화면만을 보여준다.
	%>
</body>
</html>