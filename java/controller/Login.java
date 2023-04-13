package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import dto.User;

@WebServlet("/login")
public class Login extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		UserDao dao=new UserDao();
		List<User> list=dao.login(email);
		
		if(list.isEmpty())
		{
			resp.getWriter().print("<h1> Enter proper Email</h1>");	
			req.getRequestDispatcher("login.html").include(req, resp);
		}
		else
		{
			User user = list.get(0);
			if(password.equals(user.getPassword()))
			{
				req.getSession().setAttribute("user", user);
				if(user.getRole().equals("customer"))
				{
					resp.getWriter().print("<h1> Login Succesfully</h1>");
					req.getRequestDispatcher("customerHomePage.html").include(req, resp);
				}
		
			else{
				resp.getWriter().print("<h1> Login Succes</h1>");
				req.getRequestDispatcher("adminHome.html").include(req, resp);
			
			}
		}
		else
		{
			resp.getWriter().print("<h1> Enter proper Password</h1>");	
			req.getRequestDispatcher("login.html").include(req, resp);
		}
		}
			
	}
}
