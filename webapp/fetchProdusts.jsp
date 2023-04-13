<%@page import="dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Products</title>
</head>
<body style="margin-left: 400px; font-size: xx-large;">
<% List<Product>list=(List<Product>)session.getAttribute("productlist");%>
<h1 style="margin-left: 120px; text-decoration: underline;">Products</h1>
<table border="2px" >
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Price</th>
		<th>Category</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	<%for(Product p:list){ %>
	<tr>
		<th><%=p.getId()%></th>
		<th><%=p.getName()%></th>
		<th><%=p.getPrice()%></th>
		<th><%=p.getCategory()%></th>
		<th><a href="updateProduct.jsp?id=<%=p.getId()%>"> <button style="font-size: x-large;">Edit</button> </a></th>
		<th><a href="deleteProduct?id=<%=p.getId()%>"> <button style="font-size: x-large;">Delete</button> </a></th>
	</tr>
	<%} %>	
</table>
<a href="adminHome.html"> <button style="font-size: x-large;">Back</button> </a>
</body>
</html>