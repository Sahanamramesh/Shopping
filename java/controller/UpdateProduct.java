package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDao;
import dto.Product;

@WebServlet("/updateProduct")
public class UpdateProduct extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Product product = new Product();
		product.setId(Integer.parseInt(req.getParameter("id")));
		product.setName(req.getParameter("name"));
		product.setPrice(Double.parseDouble(req.getParameter("price")));
		product.setCategory(req.getParameter("category"));
		
		ProductDao dao= new ProductDao();
		dao.updateProduct(product);
		
		req.getRequestDispatcher("viewproducts").forward(req, resp);
	}

}
