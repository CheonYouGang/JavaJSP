<%@ page language="java" contentType="text/html;charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="myutil.MultiPart" %>
<%@page import="java.net.URLEncoder" %>
<%@ page import="org.apache.log4j.*" %>

<%
	Logger logger = Logger.getLogger(this.getClass());
%>

<%
	request.setCharacterEncoding("utf-8");	//한글화 적용

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
			, title, description,fileName );
	
	response.sendRedirect(url);
%>
