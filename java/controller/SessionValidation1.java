package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.User;

@WebServlet("/sessionvalidation1")
public class SessionValidation1 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		
		 User user=(User) req.getSession().getAttribute("user");
		 if(user==null)
		 {
			 resp.getWriter().print("<h1> Session expaired Login Again</h1>");
			 req.getRequestDispatcher("login.html").include(req, resp);
		 }
		 else
		 {
			 req.getRequestDispatcher("addProducts.html").forward(req, resp);
		 }
	}

}
