package com.servlets;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Tables.Message;
import com.helper.FactoryProvider;

public class MessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MessageServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Session session = FactoryProvider.getFactory().openSession();
		Transaction tx = null;
		HttpSession s = request.getSession();

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		long userId = (long) s.getAttribute("user_id");
		String MessageName = request.getParameter("MessageName");
		String MessageEmail = request.getParameter("MessageEmail");
		String MessageNumber = request.getParameter("MessageNumber");
		String message = request.getParameter("message");

		try {
			tx = session.beginTransaction();
			Thread.sleep(3000);

			List<Message> existingMessages = session
					.createQuery(
							"FROM message WHERE name = :name AND email = :email AND number = :number AND mess = :msg",
							Message.class)
					.setParameter("name", MessageName).setParameter("email", MessageEmail)
					.setParameter("number", MessageNumber).setParameter("msg", message).getResultList();

			if (existingMessages.isEmpty()) {
				// Message does not exist, insert it
				Message newMessage = new Message();
				newMessage.setUserId(userId);
				newMessage.setName(MessageName);
				newMessage.setEmail(MessageEmail);
				newMessage.setNumber(MessageNumber);
				newMessage.setMess(message);
				newMessage.setAddDate(new Date());
				
				//save message
				session.save(newMessage);
				tx.commit();

				out.println("success");
			} else {
				out.println("Messagesentalready");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

}
