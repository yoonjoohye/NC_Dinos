<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.OutputStreamWriter"%>
<%@page import="java.util.Date"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
	String text=request.getParameter("text");
	

	BufferedWriter writer = null;
	try{
		String filePath = application.getRealPath("/WEB-INF/text.txt");
		writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(filePath),"utf-8"));
		//PrintWriter pw=new PrintWriter(writer,true);
		writer.write(text+",");
		writer.flush();
	}
	catch(Exception e){
		out.println("오류 발생");
	}
	finally{
		writer.close();
	}
%>
<meta http-equiv='refresh' content='0.5; url=player.jsp'>
</body>
</html>