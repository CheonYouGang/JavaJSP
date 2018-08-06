<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@	page import="java.util.*"%> 
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 31.</title>
</head>
<body>
	<h3>상품정보(뷰 페이지)</h3>
	GoodInfoReader.jsp 전용<br><br>
 
		코드: ${CODE}<br>
		제목: ${TITLE}<br>
		저자: ${WRITER}<br>
		가격: <fmt:formatNumber value="${PRICE}" type="currency"/><br><br>
		
	<c:forEach var="goodsInfoList" items="${GoodsInfo}" varStatus="status">
		No.${status.count}<br>
		코드: ${goodsInfoList.gcode}<br>
		제목: ${goodsInfoList.title}<br>
		저자: ${goodsInfoList.writer}<br>
		가격: <fmt:formatNumber value="${goodsInfoList.price}" type="currency"/><br><br>
	</c:forEach>	
</body>
</html>