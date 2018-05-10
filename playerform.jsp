<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	div#player{
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
	div#player table{
		width:100%;
	}
	div#player img{
		width:180px;
		height:300px;
	}
	div#player img:hover{
		opacity:0.3;
	}
</style>
</head>
<body>
<div id="player">
<div id="label">선수소개</div>
<table align="center">
	<tr align="center">
		<td><a href="playerinfo.jsp?re=1"><img src="img/kim.jpg"></a></td>
		<td><a href="playerinfo.jsp?re=2"><img src="img/na.jpg"></a></td>
		<td><a href="playerinfo.jsp?re=3"><img src="img/park.jpg"></a></td>
		<td><a href="playerinfo.jsp?re=4"><img src="img/wang.jpg"></a></td>
	</tr>
	<tr align="center">
		<td><a href="playerinfo.jsp?re=5"><img src="img/kwon.jpg"></a></td>
		<td><a href="playerinfo.jsp?re=6"><img src="img/scruggs.jpg"></a></td>
		<td><a href="playerinfo.jsp?re=7"><img src="img/mo.jpg"></a></td>
		<td><a href="playerinfo.jsp?re=8"><img src="img/oh.jpg"></a></td>
	</tr>
	<tr align="center">
		<td><a href="playerinfo.jsp?re=9"><img src="img/cheol.jpg"></a></td>
		<td><a href="playerinfo.jsp?re=10"><img src="img/young.jpg"></a></td>
		<td><a href="playerinfo.jsp?re=11"><img src="img/min.jpg"></a></td>
		<td><a href="playerinfo.jsp?re=12"><img src="img/gong.jpg"></a></td>
	</tr>
</table>
</div>
</body>
</html>