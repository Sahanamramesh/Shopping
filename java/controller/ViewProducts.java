package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDao;
import dto.Product;
import dto.User;

@WebServlet("/viewproducts")
public class ViewProducts extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User user=(User) req.getSession().getAttribute("user");
		if(user==null)
		{
			resp.getWriter().print("<h1>SessionExpaired Login Again</h1>");
			req.getRequestDispatcher("login.html").include(req, resp);
		}
		else
		{
			ProductDao dao= new ProductDao();
			List<Product> list = dao.fetchproducts();
			if(list.isEmpty())
			{
				resp.getWriter().print("<h1> there is no products present");
				req.getRequestDispatcher("adminHome.html").include(req, resp);
			}
			else
			{
			req.getSession().setAttribute("productlist", list);
			req.getRequestDispatcher("fetchProducts.jsp").forward(req, resp);
			}
		}
	}
}
