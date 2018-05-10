<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	form{
		margin-top:50px;
		margin-bottom:50px;
		font-size:10pt;
	}
	div#label{
		width:50%;
		font-size:20px;
		text-align:left;
  		border-bottom:3px solid #29088A;
  		color:#29088A;
  		font-weight:bold;
  		margin-bottom:40px;
	}
	input[type="text"],[type="password"]{
		width:300px;
		height:40px;
		border:1px solid #dddddd;
		border-radius:5px;
	}
	input[type="submit"]{
		width:300px;
		height:50px;
		border:0px;
		color:#EEEEEE;
		font-weight:bold;
		background-color:#053275;
		
	}
	input[type="submit"]:hover{
		background-color:rgb(17,17,69);
	}
	table a{
		text-decoration:none;
		color:gray;
	}
	table a:hover{
		color:#053275;
	}
</style>
</head>
<body>
<center>
	<form action="login_chk.jsp" method="post">
	<div id="label">로그인</div>
	<table align="center">
		<tr><td><input type="text" name="id" placeholder="아이디"></td></tr>
		<tr><td><input type="password" name="pw" placeholder="비밀번호"></td></tr>
		<tr><td><input type="checkbox">로그인 상태 유지</td></tr>
		<tr><td><input type="submit" value="로그인"></td></tr>
		<tr>
			<td align="center">
				<a href="agreement1.jsp">회원가입</a>
				<a href="#">아이디 찾기</a>
				<a href="#">비밀번호 찾기</a>
			</td>
		</tr>
	</table>
	</form>
</center>
</body>
</html>