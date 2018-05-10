<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#member{
		float:right;
		margin-top:25px;
		margin-right:20%;
		font-size:20px;
	}
	#member a{
		margin-right:10px;
		text-decoration:none;
		font-weight:bold;
		color:#9999cc;
	}
	#member a:hover{
		color:white;
	}
	#dinos{
		margin-left:20%;
		padding:10px;
		margin-right:40%;
	}
	#btn{
		background-color: rgba(255, 255, 255,0);
		border:0px;
	}
</style>
</head>
<body>
	<div id="member">
		<a href="login.jsp">로그인</a>
		<a href="agreement1.jsp">회원가입</a>
	</div>
	<div id="dinos">
		<a href="index.jsp"><img src="img/Wordmark_Away.png" width="150" height="50"></a>	
		<button id="btn"><img src="img/menu.png" width=50 height=50></button>
	</div>
</body>
</html>