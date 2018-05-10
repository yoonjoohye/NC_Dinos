<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메인화면</title>
</head>
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
	$(function(){
		$("#nav").hide();
		$("#btn").click(function(){
			$("#nav").toggle("slow");
		});
	});
</script>
<style>
	body{
		margin:0px;
	}
	#header{
		border-bottom:8px solid #B99E7F;
		background-color:rgb(17, 17, 69);
	}
	#nav{
		position:absolute;
		z-index:2;
		background-color:rgba(17, 17, 69, 0.9);
		margin-left:20%;
		margin-right:20%;
		width:60%;
	}
	#content{
		z-index:1;
	}
	#footer{
		position:relative;
		width: 100%;
		bottom: 0;
		clear:both;
		padding:20px;
		background-color:#EEEEEE;
	}
</style>
<body>
<%
	String contentPage=request.getParameter("contentPage");
%>
	<div id="header">
		<jsp:include page="header.jsp"/>
	</div>
	<div id="nav">
		<jsp:include page="nav.jsp"/>
	</div>
	<div id="content">
		<jsp:include page="<%= contentPage %>"/>
	</div>
	<div id="footer">
		<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>
