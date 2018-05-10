<%@page import="java.util.StringTokenizer"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	div#greeting{
	margin-left:20%;
	margin-right:20%;
	margin-bottom:100px;
	}
	p.one{
		color:#29088A;
		font-size:40px;
		font-weight:bold;
	}
	input[type="button"]{
		width:150px;
		height:50px;
		background-color:#29088A;
		border:0px;
		color:white;
	}
</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String id=request.getParameter("join_id");
	String pw=request.getParameter("join_pw");
	String name=request.getParameter("name");
	String email1=request.getParameter("email1");
	String email2=request.getParameter("email2");
	String num1=request.getParameter("tel1");
	String num2=request.getParameter("tel2");
	String num3=request.getParameter("tel3");
	
	String email=email1+'@'+email2;
	String num=num1+num2+num3;
	

	BufferedWriter writer = null;
	try{
		String filePath = application.getRealPath("/WEB-INF/member.txt");
		writer = new BufferedWriter(new FileWriter(filePath,true));
		writer.write(id+","+pw+","+name+","+email+","+num+",");
		writer.flush();
	}
	catch(Exception e){
		out.println("오류 발생");
	}
	finally{
		writer.close();
	}
%>
<div id="greeting">
	<p class="one">회원가입을 축하드립니다!</p>
	<p class="two">저희 NC 다이노스 많이 사랑해주시길 바랍니다.</p>
	<a href="index.jsp"><input type="button" value="홈으로 가기"></a>
	<a href="login.jsp"><input type="button" value="로그인 하러가기"></a>
</div>

</body>
</html>