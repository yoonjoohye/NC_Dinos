<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	body{
		background-color:#FAFAFA;
	}
</style>
</head>
<body>
<%
	BufferedReader reader = null;
	try{
		String filePath = application.getRealPath("/WEB-INF/accept2.txt");
		
		reader=new BufferedReader(new InputStreamReader(new FileInputStream(filePath),"UTF-8"));
		while(true){
			String str = reader.readLine();
			if(str==null)break;
			out.println(str+"<br>");
		}
	}catch(Exception e){
		out.println("지정된 파일을 찾을 수 없습니다.");
	}
%>
</body>
</html>