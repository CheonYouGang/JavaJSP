<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean class="mall.BookInfo" id="pinfo" scope="request"/>
	<jsp:setProperty name="pinfo" property="code" value="50001"/><br/>
	<jsp:setProperty name="pinfo" property="name" value="의뢰인"/><br/>
	<jsp:setProperty name="pinfo" property="price" value="9000"/><br/>
			
	<jsp:setProperty name="pinfo" property="writer" value="존 그리샴" /><br/>		
	<jsp:setProperty name="pinfo" property="page" value="704"/>	<br/>	
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 27. mall패키지 책정보 관리</title> 
</head>
<body>

책 정보가 저장되었습니다<br/>
------------------------------------<br/>
<h3>제품 개략 정보</h3>
<jsp:include page="ProductInfo.jsp"></jsp:include>

</body>
</html>