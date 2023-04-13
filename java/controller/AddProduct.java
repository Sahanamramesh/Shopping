package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDao;
import dto.Product;

@WebServlet("/addProduct")
public class AddProduct extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		Product product = new Product();
		product.setName(req.getParameter("name"));
		product.setPrice(Double.parseDouble(req.getParameter("price")));
		product.setCategory(req.getParameter("category"));
		
		ProductDao dao= new ProductDao();
		dao.addProduct(product);
		
		resp.getWriter().print("<h1> Product Added Succesfully</h1>");
		req.getRequestDispatcher("adminHome.html").include(req, resp);
	}
}
