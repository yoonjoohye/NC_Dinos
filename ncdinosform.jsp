<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
	div#ncdinos{
		margin-top:50px;
		margin-left:20%;
		margin-right:20%;
		color:gray;
		font-size:15px;
	}
	div#label{
		width:100%;
		font-size:20px;
		text-align:left;
  		border-bottom:3px solid #29088A;
  		color:#29088A;
  		font-weight:bold;
  		margin-bottom:20px;
	}
	p.ncdinos{
		color:#D4B366;
		font-weight:bold;
		font-size:20px;
	}
</style>
</head>
<body>
<div id="ncdinos">
<div id="label">구단소개</div>
<p class="ncdinos">NC 다이노스</p>
<%
	BufferedReader reader = null;
	try{
		String filePath = application.getRealPath("/WEB-INF/ncdinos.txt");
		
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
<br>
<center><img src="img/ncdinos.jpg" width=100%></center>
<br>
<div id="label">히스토리</div>
<center><img src="img/history.jpg"></center>
<br>
</div>
</body>
</html>