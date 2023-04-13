<%@page import="dto.Product"%>
<%@page import="dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Product</title>
</head>
<body style="margin-left: 420px; font-size: x-large;">
<%int id=Integer.parseInt(request.getParameter("id"));

ProductDao dao = new ProductDao();
Product product=dao.fetchproduct(id);
%>
<h1 style="text-decoration: underline;">Edit product delatils</h1>
	<form action="updateProduct" style="margin-left: 100px">
	Id:<input type="text" name="id" value="<%=product.getId()%>" readonly="readonly" style="font-size: large; width: 20px"><br>
	Name:<input type="text" name="name" value="<%=product.getName()%>" style="font-size: large; width: 90px"><br>
	Category:<input type="text" name="category" value="<%=product.getCategory()%>" readonly="readonly" style="font-size: large; width: 70px"><br>
	Price:<input type="text" name="price" value="<%=product.getPrice()%>" style="font-size: large; width: 70px">
	
	<button style="font-size: large;">Update</button>
	<button type="reset" style="font-size: large;">Cancel</button>
	</form>
	<a href="viewproducts"><button style="margin-left: 100px; font-size: large;">Back</button></a>
</body>
</html>