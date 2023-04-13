<%@page import="dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>bill</title>
</head>
<body style="text-align: center;">
	<h1 style="text-decoration: underline;">BILLING</h1><br>
	<%List<Product> products=(List<Product>)session.getAttribute("products"); %>
	<%double sum=0;%>
	<table border="1" style="margin-left: 600px;font-size: xx-large;">
	<tr>
		<th>Your Order is:</th>
		<th>Amount</th>
	</tr>
	<%for(Product product:products){%>
	<tr>
		<th><%=product.getName()%></th>
		<th><%=product.getPrice()%></th>
	</tr>
	<%sum=sum+product.getPrice(); %>
	<%} %>
	<tr>
		<th> Your Total Bill Amount is: </th>
		<th><%=sum %></th>
	</tr>
	</table><br>
	<button onclick="window.print()" style="font-size: x-large;">Print</button>
	<a href="customerHomePage.html"><button style="font-size: x-large;">Back</button> </a>
</body>
</html>