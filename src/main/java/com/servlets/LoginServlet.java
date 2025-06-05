package com.servlets;

import com.Tables.User;
import com.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	private UserService userService = new UserService(); // Assume you have UserService implementation

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String email = request.getParameter("email");
		String password = request.getParameter("pass");

		try {
			User user = userService.authenticateUser(email, password);

			if (user != null) {
				if ("admin".equals(user.getUserType())) {
					HttpSession session = request.getSession();

					session.setAttribute("admin_name", user.getName());
					session.setAttribute("admin_email", user.getEmail());
					session.setAttribute("admin_id", user.getId());
					response.sendRedirect("admin/dashboard.jsp");


				} else if ("user".equals(user.getUserType())) {
					HttpSession session = request.getSession();

					session.setAttribute("user_name", user.getName());
					session.setAttribute("user_email", user.getEmail());
					session.setAttribute("user_id", user.getId());
					response.sendRedirect("home.jsp");

				}
			} else {
				out.println("Incorrectemailorpassword");
				request.getRequestDispatcher("user_login.jsp").forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
			out.println("Error");
		}

	}

}
