<%@page import="java.io.FileReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>컨텐트</title>
<style>
	#banner{
		background-color:white;
		margin-top:0px;
	}
	#score{
		margin-right:20%;
		margin-top:15px;
		float:right;
	}
	#score table{
		background-color:black;
		color:gray;
		font-weight:bold;
		text-align:center;
		width:250px;
		height:120px;
	}
	#score table h1{
		color:white;
	}
	#ranking{
		clear:both;
	}
	#slide{
		margin-left:20%;
		float:left;
		position:relative;
		width:850px;
		height:415px;
		overflow:hidden;
	}
	#slide ul{
		width:400%;
		height:100%; 
		transition:1s;
	}
	#slide li{
		list-style:none;
		float:left;
		width:25%;
		height:100%;
	}
	#slide li:nth-child(1){background-image:url(img/banner.gif);}
	#slide li:nth-child(2){background-image:url(img/banner1.jpg);}
	#slide li:nth-child(3){background-image:url(img/banner2.jpg);}
	#slide li:nth-child(4){background-image:url(img/banner3.jpg);}
	
	#slide input{display:none;}
	#slide label{
		display:block;
		vertical-align:top;
		width:10px;
		height:10px;
		margin:10px;
		border:0px solid #666;
		background:#EEEEEE;
		transition:0.3s;
		border-radius:50%;
		cursor:pointer;
	}
	#slide .pos{
		text-align:center;
		position:absolute;
		bottom:10px;
		left:0;
		text-align:center;
	}
	#pos1:checked~ul{margin-left:0%;}
	#pos2:checked~ul{margin-left:-100%;}
	#pos3:checked~ul{margin-left:-200%;}
	#pos4:checked~ul{margin-left:-300%;}
	
	#pos1:checked~.pos>label:nth-child(1){background:#666;}
	#pos2:checked~.pos>label:nth-child(2){background:#666;}
	#pos3:checked~.pos>label:nth-child(3){background:#666;}
	#pos4:checked~.pos>label:nth-child(4){background:#666;}
	
	div#content1{
		text-align:center;
		margin-right:20%;
		margin-left:20%;
		margin-top:30px;
		margin-bottom:30px;
		background-color:white;
		margin-top:0px;
		color:gray;
		font-size:10pt;
	}
	div#content1 table{
		width:100%;
	}
	div#content1 table#ranking{
		width:400px;
		border-collapse:collapse;
	}
	div#content1 table#player1{
		width:300px;
		text-align:left;
		border-collapse:collapse;
		border:1px solid #eeeeee;
	}
	div#content1 table#player1 tr{
		border-bottom:1px solid #eeeeee;
		border-top:1px solid #eeeeee;
	}
	div#content1 table#player2{
		width:300px;
		text-align:left;
		border-collapse:collapse;
		border:1px solid #eeeeee;
	}
	div#content1 table#player2 tr{
		border-bottom:1px solid #eeeeee;
		border-top:1px solid #eeeeee;
	}
	div#content1 table#ranking tr td{
		width:100px;
		border-bottom:1px solid #eeeeee;
	}
	div#content1 table#ranking tr:nth-child(2n-1){
		background-color:#FAF9F7;
	}
	div#content1 table#ranking tr:nth-child(10){
		font-weight:bold;
	}
	div#content1 table#ranking tr:nth-child(1){
		height:20px;
		color:white;
		background-color:#B99E7F;
	}
	div#content1 div#label{
		width:400px;
		font-size:20px;
		text-align:left;
  		border-bottom:3px solid #29088A;
  		color:#29088A;
  		font-weight:bold;
  		margin-bottom:40px;
	}
	div#content1 div#label1{
		width:300px;
		font-size:20px;
		text-align:left;
  		border-bottom:3px solid #29088A;
  		color:#29088A;
  		font-weight:bold;
  		margin-bottom:40px;
	}
	
</style>
</head>
<body>
<div id="banner">
	<div id="score">
		<table>
			<tr>
				<td><img src="img/sk.png" width="50" height="30"><br>SK 와이번스</td>
				<td><h1>0:9</h1></td>
				<td><img src="img/Emblem_Home.png" width="50" height="30"><br>NC 다이노스</td>
			</tr>
		</table>
		<br>
		<a href="event1.jsp"><img src="img/info1.jpg"width="250" height="120"></a>
		<br><br>
		<a href="event2.jsp"><img src="img/info2.jpg"width="250" height="120"></a>
	</div>
	
	<div id="slide">
		<input type="radio" name="pos" id="pos1" checked>
		<input type="radio" name="pos" id="pos2">
		<input type="radio" name="pos" id="pos3">
		<input type="radio" name="pos" id="pos4">
	<ul>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
	<p class="pos">
		<label for="pos1"></label>
		<label for="pos2"></label>
		<label for="pos3"></label>
		<label for="pos4"></label>
	</p>
	</div>
</div>
<div id="content1">
<table>
<tr>	
	<td><div id="label">팀 순위</div></td>
	<td><div id="label1">NC 타자 TOP1</div></td>
	<td><div id="label1">NC 투수 TOP1</div></td>
</tr>
<tr>
	<td>
	<table id="ranking">
	 	<tr align="center">
	 		<td>순위</td>
	 		<td>팀명</td>
	 		<td>승</td>
	 		<td>패</td>
	 		<td>승률</td>
	 		<td>게임차</td>
	 	</tr>
	 	<tr align="center">
	 		<td>1</td>
	 		<td>두산</td>
	 		<td>26</td>
	 		<td>11</td>
	 		<td>0.703</td>
	 		<td>0</td>
	 	</tr>
	 	<tr align="center">
	 		<td>2</td>
	 		<td>SK</td>
	 		<td>24</td>
	 		<td>13</td>
	 		<td>0.7649</td>
	 		<td>2</td>
	 	</tr>
	 	<tr align="center">
	 		<td>3</td>
	 		<td>한화</td>
	 		<td>20</td>
	 		<td>16</td>
	 		<td>0.556</td>
	 		<td>5.5</td>
	 	</tr>
	 	<tr align="center">
	 		<td>4</td>
	 		<td>LG</td>
	 		<td>19</td>
	 		<td>20</td>
	 		<td>0.487</td>
	 		<td>8</td>
	 	</tr>
	 	<tr align="center">
	 		<td>5</td>
	 		<td>KIA</td>
	 		<td>17</td>
	 		<td>19</td>
	 		<td>0.472</td>
	 		<td>8.5</td>
	 	</tr>
	 	<tr align="center">
	 		<td>6</td>
	 		<td>넥센</td>
	 		<td>18</td>
	 		<td>21</td>
	 		<td>0.462</td>
	 		<td>9</td>
	 	</tr>
	 	<tr align="center">
	 		<td>7</td>
	 		<td>롯데</td>
	 		<td>16</td>
	 		<td>20</td>
	 		<td>0.444</td>
	 		<td>9.5</td>
	 	</tr>
	 	<tr align="center">
	 		<td>8</td>
	 		<td>KT</td>
	 		<td>16</td>
	 		<td>20</td>
	 		<td>0.432</td>
	 		<td>10</td>
	 	</tr>
	 	<tr align="center">
	 		<td>9</td>
	 		<td>NC</td>
	 		<td>16</td>
	 		<td>23</td>
	 		<td>0.410</td>
	 		<td>11</td>
	 	</tr>
	 	<tr align="center">
	 		<td>10</td>
	 		<td>삼성</td>
	 		<td>15</td>
	 		<td>23</td>
	 		<td>0.395</td>
	 		<td>11.5</td>
	 	</tr>
	</table>
	</td>
	<td>
	<table id="player1">
		<tr>
			<td rowspan="5" width="180"><img src="img/na.jpg" width=150 height=200></td>
			<td>이름 : 나성범</td>
		</tr>
		<tr>
			<td>타율 : 0.374</td>
		</tr>
		<tr>
			<td>홈런 : 9</td>
		</tr>
		<tr>
			<td>안타 : 58</td>
		</tr>
		<tr>
			<td>타점 : 25</td>
		</tr>
	</table>
	</td>
	<td>
	<table id="player2">
		<tr>
			<td rowspan="5" width="180"><img src="img/wang.jpg" width=150 height=200></td>
			<td>이름 : 왕웨이중</td>
		</tr>
		<tr>
			<td>eRA : 2.40</td>
		</tr>
		<tr>
			<td>승 : 3</td>
		</tr>
		<tr>
			<td>세이브 : 0</td>
		</tr>
		<tr>
			<td>홀드 : 0</td>
		</tr>
	</table>
	</td>
</tr>
</table>
</div>
</body>
</html>