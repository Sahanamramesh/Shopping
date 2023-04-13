<%@page import="dto.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Customer list</title>
</head>
<body style="margin-left: 100px; font-size: xx-large;">
	<%List<User>list=(List<User>)session.getAttribute("customerList");%>
	<h1 style="text-decoration: underline;text-align: center;">Customers list</h1>
	<table border="2px" style="margin-left: 350px">
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Email</th>
		<th>mobile</th>
	</tr>
	<%for(User u:list){ %>
	<tr>
		<th><%=u.getId()%></th>
		<th><%=u.getName()%></th>
		<th><%=u.getEmail()%></th>
		<th><%=u.getMobile()%></th>
	</tr>
	<%} %>
	</table>
<a href="adminHome.html"><button style="font-size: large; margin-left: 350px;">Back</button> </a>
</body>
</html>