<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->

<title>2018. 7. 13.</title>

<!-- 부트스트랩 -->
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<script src="js/bootstrap.min.js"></script>

	<%
		BufferedReader reader = null;
	try{
		String filePath = application.getRealPath("input.txt");
		reader = new BufferedReader(new FileReader(filePath));
		while(true){
			String str = reader.readLine();
			if(str == null)
				break;
			out.println(str+"<BR/>");
		}
	}catch(FileNotFoundException e){
		out.println("파일이 존재하지 않습니다.");
	}catch(IOException ei){
		out.println("파일을 읽을 수 없습니다.");
	}finally{
		try{
			
		}catch(Exception e){
		
		}
	}
	%>
</body>
</html>