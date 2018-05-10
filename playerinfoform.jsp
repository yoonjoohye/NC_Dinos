<%@page import="java.io.FileWriter"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
	div#playerinfo{
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
	div#playerinfo input[type="button"]{
		width:100%;
		height:40px;
		background-color:#29088A;
		color:white;
		border:0px;
	}
	div#playerinfo input[type="button"]:hover{
		background-color:rgb(17,17,69);
	}
	div#comment{
		width:100%;
		height:10%;
		background-color:#FFFDF5;
	}
	
</style>
<script>
	function cheerup(){
		if(myform.text.value!=""){
			document.getElementById("myform").submit();
		}
		else{
			alert("글을 입력해주세요!");
			return;
		}
	}
</script>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String str = request.getParameter("re");

	String img="";
	String name="";
	String birth="";
	String height="";
	
	if(str.equals("1")){
		img="img/kim.jpg";
		name="김성욱";
		birth="1993년 05월 01일";
		height="181cm/83kg";
	}
	else if(str.equals("2")){
		img="img/na.jpg";
		name="나성범";
		birth="1989년 10월 03일";
		height="183cm/100kg";
	}
	else if(str.equals("3")){
		img="img/park.jpg";
		name="박민우";
		birth="1993년 02월 06일";
		height="185cm/80kg";
	}
	else if(str.equals("4")){
		img="img/wang.jpg";
		name="왕웨이중";
		birth="1993년 05월 01일";
		height="181cm/83kg";
	}
	else if(str.equals("5")){
		img="img/kwon.jpg";
		name="권희동";
		birth="1993년 05월 01일";
		height="181cm/83kg";
	}
	else if(str.equals("6")){
		img="img/scruggs.jpg";
		name="스크럭스";
		birth="1987년 09월 23일";
		height="183cm/98kg";
	}
	else if(str.equals("7")){
		img="img/mo.jpg";
		name="모창민";
		birth="1985년 05월 08일";
		height="188cm/89kg";
	}
	else if(str.equals("8")){
		img="img/oh.jpg";
		name="오영수";
		birth="2000년 01월 30일";
		height="178cm/93kg";
	}
	else if(str.equals("9")){
		img="img/cheol.jpg";
		name="김철호";
		birth="1998년 02월 06일";
		height="182cm/87kg";
	}
	else if(str.equals("10")){
		img="img/young.jpg";
		name="김영규";
		birth="2000년 02월 10일";
		height="188cm/83kg";
	}
	else if(str.equals("11")){
		img="img/min.jpg";
		name="김민수";
		birth="1998년 07월 16일";
		height="180cm/83kg";
	}
	else if(str.equals("12")){
		img="img/gong.jpg";
		name="공수빈";
		birth="1994년 04월 05일";
		height="180cm/85kg";
	}
%>
<div id="playerinfo">
<div id="label">선수정보</div>
<form action="send.jsp" method="post" name="myform" id="myform">
	<table align="center">
		<tr>
			<td rowspan="5"><img src="<%=img %>" width=250 height=400></td>
			<td>이름:<%=name %></td>
		</tr>
		<tr>
			<td>생일:<%=birth %></td>
		</tr>
		<tr>
			<td>키/몸무게:<%=height %></td>
		</tr>
		<tr>
			<td>
				응원의 한마디!<br>
				<textarea rows=6 cols=40 id="text" name="text"></textarea>
			</td>
		</tr>
		<tr>
			<td>
				<input type="button" onclick="cheerup()" value="등록">
			</td>
		</tr>
	</table>
	<br>
</form>
<div id="label">전체응원댓글</div>
<div id="comment">
<%
	request.setCharacterEncoding("UTF-8");
	BufferedReader reader = null;
	String a="";
	String tmp = "";
	
	try{
		String filePath = application.getRealPath("/WEB-INF/text.txt");
		reader=new BufferedReader(new InputStreamReader(new FileInputStream(filePath),"UTF-8"));
		while(true){
			a = reader.readLine();
			if(a==null)break;
			
			tmp += a;
		}
	}catch(Exception e){
		out.println("지정된 파일을 찾을 수 없습니다.");
	}
	
	String[] Array = tmp.split(",");
	for(int i=0; i<Array.length; i++){
%>
		<%=Array[i]+"\n"%>
<% 
	}
%>
</div>
</div>
</body>
</html>