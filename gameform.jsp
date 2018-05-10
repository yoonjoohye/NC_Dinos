<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	div#game{
		margin-top:50px;
		margin-left:20%;
		margin-right:20%;
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
	table{
		width:100%;
		border:0px;
		border-top:1px solid gray;
		border-bottom:1px solid gray;
	}
	table td{
		border:0px;
		border-bottom:0.5px solid #eeeeee;
	}
	table tr:hover{
		background-color:#FBFBEF;
	}
	table td a{
		text-decoration:none;
		color:gray;
	}
</style>
</head>
<body>
<%
	
%>
<div id="game">
	<div id="label">경기정보</div>
	<img src="img/dinos.jpg" width=100%> <br><br>
	<table align="center" border cellspacing=0px>
		<tr align="center" height=50px>
			<td><a href="#">2018시즌 NC 다이노스 경기장 이벤트 #3</a></td>
		</tr>
		<tr align="center" height=50px>
			<td><a href="event2.jsp">2018시즌 NC 다이노스 경기장 이벤트 #2</a></td>
		</tr>
		<tr align="center" height=50px>
			<td><a href="event1.jsp">2018시즌 NC 다이노스 경기장 이벤트 #1</a></td>
		</tr>
	</table><br>
	
	<div id="label">좌석안내</div>
	<img src="img/seat.jpg" width=100%>
	<img src="img/seat2.jpg" width=100%>
</div>

</body>
</html>