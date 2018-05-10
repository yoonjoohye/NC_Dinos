<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	div#label{
		width:50%;
  		border-radius:30px;
  		border:3px solid #29088A;
  		color:#29088A;
  		font-size:40px;
  		margin-top:30px;
  		margin-bottom:30px;
	}
	table{
		color:gray;
		width:800px;
	}
	input[type="text"],[type="password"]{
		font-size:15px;
		width:300px;
		height:30px;
		border:1px solid #dddddd;
		border-radius:5px;
	}
	input[type="button"]{
		width:150px;
		height:50px;
		border:0px;
		background-color:#29088A;
		color:white;
	}
	input#id_chk{
		width:120px;
		height:40px;
	}
	input#email1{
		width:150px;
	}
	input#email2{
		width:150px;
	}
	select#email{
		width:150px;
		height:30px;
		border:1px solid #dddddd;
		border-radius:5px;
	}
	input#tel1{
		width:100px;
	}
	input#tel2{
		width:100px;
	}
	input#tel3{
		width:100px;
	}
	input#cancel{
		background-color:#848484;
	}
</style>
<script>
	function checkID(){
		window.name="parentForm";
		var url="checkID.jsp";
		openWin=window.open(url,'','width=500,height=150, resizable=no, scrollbars=no');
	}
	function email_chk(){
		if(agreementform.email.value!=""){
			agreementform.email2.value=agreementform.email.value;
		}
	}
	function join(){
		var id=agreementform.join_id.value;
		var pw=agreementform.join_pw.value;
		var pw_chk=agreementform.pw_chk.value;
		
		if(id==""){
			alert("아이디를 확인해주세요!");
			return;
		}
		else if(pw!=pw_chk){
			alert("비밀번호를 확인해주세요!");
			agreementform.pw_chk.focus();
			return;
		}
		else{
			document.getElementById("agreementform").submit();
		}
	}
</script>
</head>
<body>
<center>
	<form id="agreementform" name="agreementform" action="agreement3.jsp" method="post">
		<div id="label">회원가입</div>
		<table align="center">
			<tr>
				<td>아이디</td>
				<td>
					<input type="text" name="join_id" minlength="8" maxlength="16">
					<input type="button" id="id_chk" onclick="checkID()" value="중복확인">
					<br>
				</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="join_pw"  minlength="10" maxlength="16" id="join_pw"><br></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="password" name="pw_chk" minlength="10" maxlength="16" id="pw_chk"><br></td>
			</tr>
			<tr>
				<td>성명</td>
				<td><input type="text" name="name" required><br></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td>
					<input type="text" id="email1" name="email1"> @
					<input type="text" name="email2" id="email2">
					<select name="email" id="email" onchange="email_chk()">
						<option value="">직접입력</option>
						<option value="naver.com">naver.com</option>
						<option value="gmail.com">gmail.com</option>
						<option value="hanmail.net">hanmail.net</option>
						<option value="nate.com">nate.com</option>
					</select><br>
				</td>
			</tr>
			<tr>
				<td>휴대폰</td>
				<td>
					<input type="text" id="tel1" name="tel1"> -
					<input type="text" id="tel2" name="tel2"> -
					<input type="text" id="tel3" name="tel3"><br>
				</td>
			</tr>
		</table> <br>
		
		<table align="center">
			<tr>
				<td align="center">
					<input type="button" onclick="join()" value="확인">
					<a href="index.jsp"><input type="button" id="cancel"value="취소"></a>
				</td>
			</tr>
		</table>
		<br>
	</form>
</center>
</body>
</html>