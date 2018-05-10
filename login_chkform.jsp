<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	
	request.setCharacterEncoding("utf-8");
	BufferedReader reader = null;
	String str="";
	String tmp = "";
	
	try{
		String filePath = application.getRealPath("/WEB-INF/member.txt");
		reader=new BufferedReader(new InputStreamReader(new FileInputStream(filePath),"UTF-8"));
		while(true){
			str = reader.readLine();
			if(str==null)break;
			
			tmp += str;
		}
	}catch(Exception e){
		out.println("지정된 파일을 찾을 수 없습니다.");
	}
	
	String[] Array = tmp.split(",");
	//System.out.println(Array[5]);
	
	Boolean check=false;
	for(int i=0; i<Array.length/5; i++){
		if(id.equals(Array[i*5])){
			if(pw.equals(Array[5*i+1])){
				check=true;
				break;
			}
			else{
				check=false;
			}
		}
		else{
			check=false;
		}
	}
	
	if(check){
%>
		<script>alert("로그인 성공!");</script>
		<jsp:forward page="index.jsp"/>		
<%
	}else{
%>
		<script>alert("로그인 실패ㅜㅜㅜ");</script>
		<jsp:forward page="login.jsp"/>
<%
	}
%>
</body>
</html>