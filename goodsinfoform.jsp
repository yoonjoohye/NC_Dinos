<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
	div#goods{
		margin-top:50px;
		margin-bottom:50px;
		margin-left:20%;
		margin-right:20%;
		color:black;
		font-size:10pt;
		text-align:"center";
	}
	div#goods table{
		border:0px;
		border-collapse:collapse;
		border:1px solid #eeeeee;
	}
	div#goods table tr{
		border-top:1px solid #eeeeee;
		border-bottom:1px solid #eeeeee;
	}
	div#goods select{
		width:300px;
		height:30px;
	}
	div#goods input[type="number"]{
		width:300px;
		height:30px;
	}
	div#goods input[type="button"]{
		width:150px;
		height:50px;
		border:0px;
		border:3px solid #29088A;
		background-color:white;
		color:#29088A;
	}
	div#goods input[type="button"]:hover{
		background-color:#29088A;
		color:white;
	}
	div#goods input[type="text"]{
		width:300px;
		height:30px;
		border:0px;
		
	}
</style>
<script>
</script>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String str = request.getParameter("re");
	
	String img="";
	String name="";
	String price="";
	
	if(str.equals("1")){
		img="img/uni1.jpg";
		name="2017 패션 핑크 유니폼";
		price="61000";
	}
	else if(str.equals("2")){
		img="img/uni2.jpg";
		name="HG 레플리카 홈 유니폼";
		price="78000";
	}
	else if(str.equals("3")){
		img="img/uni3.jpg";
		name="레플리카 원정 유니폼";
		price="54000";
	}
	else if(str.equals("4")){
		img="img/uni4.jpg";
		name="레플리카 골드 유니폼";
		price="61000";
	}
	else if(str.equals("5")){
		img="img/uni5.jpg";
		name="레플리카 민트 유니폼";
		price="61000";
	}
	else if(str.equals("6")){
		img="img/uni6.jpg";
		name="레플리카 태극기 유니폼";
		price="65000";
	}
	else if(str.equals("7")){
		img="img/uni7.png";
		name="2018 어센틱 충무공 유니폼";
		price="120000";
	}
	else if(str.equals("8")){
		img="img/uni8.jpg";
		name="판다캣 아동 유니폼";
		price="69000";
	}
	else if(str.equals("9")){
		img="img/uni9.jpg";
		name="2018 어센틱 골드 유니폼";
		price="115000";
	}
%>
<div id="goods">
	<table align="center">
		<tr>
			<td rowspan="5"><img src="<%=img%>"></td>
			<td><font size="13pt"><%=name%></font></td>
		</tr>
		<tr>
			<td>판매가격 : <%=price%>원</td>
		</tr>
		<tr>
			<td>배송정보 : 무료배송</td>
		</tr>
		<tr>
			<td>
				옵션선택<br>
				<select>
					<option value="" selected>사이즈</option>
					<option value="S">S</option>
					<option value="M">M</option>
					<option value="L">L</option>
				</select><br>
				수량<br>
				<input type="number" id="count" min=1 max=50>
			</td>
		</tr>
		<tr align="center">
			<td>
				<input type="button" onclick="order()" value="주문하기">
				<input type="button" onclick="cart()" value="카트담기">
			</td>
		</tr>
	</table>
</div>
</body>
</html>