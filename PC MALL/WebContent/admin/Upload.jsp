<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="myutil.MultiPart" %>
<%@page import="java.net.URLEncoder" %>


<%
	request.setCharacterEncoding("UTF-8"); 

	//객체를 생성
	MultiPart multiPart = new MultiPart(request);
	
	//제목과 설명 가져옴
	String title = multiPart.getParameter("TITLE");
	String description = multiPart.getParameter("DESCRIPTION");
	
	//업로드 된 파일을 본래의 이름대로 files디렉터리에 저장합니다.
	String fileName = multiPart.getFileName("UPLOAD_FILE");
	String newPath = application.getRealPath("/files/" + fileName);
	multiPart.saveFile("UPLOAD_FILE", newPath);
	
	String url = String.format("UploadResult.jsp?TITLE=%s&DESCRIPTION=%s&FILE_NAME=%s"
													, URLEncoder.encode(title, "UTF-8")
													, URLEncoder.encode(description, "UTF-8")
													, URLEncoder.encode(fileName, "UTF-8"));
	
	response.sendRedirect(url);
%>
