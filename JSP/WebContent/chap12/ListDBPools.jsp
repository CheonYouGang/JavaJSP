<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@	page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="org.apache.commons.dbcp.*"%> 
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 8. 2. =리스트 형 DB풀(TestDB)=</title>
</head>
<body>
    <%
        PoolingDriver driver = (PoolingDriver) DriverManager.getDriver("jdbc:apache:commons:dbcp:");
        String[] names = driver.getPoolNames();
        for (int cnt = 0; cnt < names.length; cnt++)
            out.println(names[cnt] + "<BR>");
    %> 
</body>
</html>