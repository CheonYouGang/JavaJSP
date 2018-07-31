<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 27. mall패키지 옷 정보 관리</title>
</head>
<body> 
hhhhhh
	<jsp:useBean class="mall.ClothingInfo" id="pinfo" scope="request" />
	 	<jsp:setProperty name="pinfo" property="code" value="70002"/><br/>
		<jsp:setProperty name="pinfo" property="name" value="반팔 티셔츠"/><br/>
		<jsp:setProperty name="pinfo" property="price" value="15000"/><br/>	
		<jsp:setProperty name="pinfo" property="size" value="M"/><br/>
		<jsp:setProperty name="pinfo" property="color" value="베이지"/><br/>		
	
	의류 정보가 저장되었습니다<br />
	------------------------------------<br />
	<h3>제품 개략 정보</h3>
	<jsp:include page="ProductInfo.jsp"></jsp:include>

</body>
</html>