package com.servlets;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Tables.User;
import com.helper.FactoryProvider;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");

		Session session = FactoryProvider.getFactory().openSession();
		Transaction tx;

		try {
			tx=session.beginTransaction();
			Thread.sleep(3000);

			// Check if user with the given email exists
			User existingUser = session.createQuery("FROM User WHERE email = :email", User.class)
					.setParameter("email", email).uniqueResult();

			if (existingUser != null) {
				out.println("alreadyexist");
			} else {
				User newUser = new User();
				newUser.setName(name);
				newUser.setEmail(email);
				newUser.setPassword(pass);
				newUser.setUserType("user");

				//save user
				session.save(newUser);
				
				out.println("done");

			}
		} catch (Exception e) {
			e.printStackTrace();
			out.println("Error");
		} finally {
			session.close();
		}

	}

}
