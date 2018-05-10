<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function parent(id){
	window.opener.id=id;
	self.close();
	
}
</script>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id=request.getParameter("join_id");
	
%>
<%=id %>
<input type="text" id="check_id">
</body>
</html>