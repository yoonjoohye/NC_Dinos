<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#nav_list{
		float:left;
		margin:0px;
		padding:20px;
		list-style:none;
	}
	#nav_list li{
		margin:20px;
	}
	#nav_list li a{
		text-decoration:none;
		font-weight:bold;
		color:#9999cc;
	}
	#nav_list li a:hover{
		color:white;
	}
	#nav_logo{
		float:right;
		vertical-align:middle;
		margin-right:30px;
		margin-top:3%;
		margin-bottom:3%;
		width:150px;
		height:150px;
	}
</style>
</head>
<body>
<ul id="nav_list">
	<li><a href="ncdinos.jsp">구단소개</a></li>
	<li><a href="player.jsp">선수소개</a></li>
	<li><a href="game.jsp">경기정보</a></li>
	<li><a href="goods.jsp">응원용품</a></li>
</ul>
<img src="img/Symbol_mono_Dinos Light Blue.png" id="nav_logo">
</body>
</html>