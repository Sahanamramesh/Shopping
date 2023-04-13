<%@page import="dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Place Your Order </title>
</head>
<body style="text-align: center;font-size: x-large;">
<H1 style="text-decoration:underline; ">Place Your Oder</H1>
<% List<Product>list=(List<Product>)session.getAttribute("productList");%>
<form action="placeOrder">
	<table border="2px" style="margin-left: 500px;">
		<tr >
			<th>Name</th>
			<th>Price</th>
			<th>Category</th>
			<th>Select</th>
		</tr>
		<%char ch='a'; %>
		<%for(Product p:list){ %>
		<tr>
			<th><%=p.getName()%></th>
			<th><%=p.getPrice()%></th>
			<th><%=p.getCategory()%></th>
			<th><input type="checkbox" value="<%=p.getId()%>" name="<%=ch++%>">
			</tr>
		<%} %>	
	</table>
	<button style="font-size: x-large;">Place order</button>

</form>
<a href="customerHomePage.html"> <button style="font-size: large;">Back</button> </a>
</body>
</html>