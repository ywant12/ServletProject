package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.HiberUtil;
import com.entity.User;

@WebServlet("/userRegister")
public class RegisterServlets extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String fullName = req.getParameter("fullname");
		String email = req.getParameter("mail");
		String password = req.getParameter("password");
		String about = req.getParameter("about");

		User user = new User(fullName, email, password, about);

		UserDao dao = new UserDao(HiberUtil.getSessionFactory());
		boolean f = dao.saveUser(user);

		HttpSession httpsession = req.getSession();

		if (f) {
			
			httpsession.setAttribute("msg", "Registered Sucesfully");
			resp.sendRedirect("resgister.jsp");
			//System.out.println("Registered Sucesfully");
		} else {
			httpsession.setAttribute("msg", "Something went Wrong");
			resp.sendRedirect("resgister.jsp");
			//System.out.println("Something went Wrong");
		}
	}

}
