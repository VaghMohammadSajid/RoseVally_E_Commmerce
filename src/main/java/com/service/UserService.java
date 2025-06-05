package com.service;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import org.hibernate.query.Query;

import com.Tables.User;

public class UserService {

	private SessionFactory sessionFactory; // Inject session factory

	public UserService() {
		this.sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
	}

	public User authenticateUser(String email, String password) {

		User user = null;
		Session session = null;

		try {
			session = sessionFactory.openSession();
			String hashedPassword = password; // Hash the password

			user = (User) session.createQuery("FROM User WHERE email = :email AND password = :password")
					.setParameter("email", email).setParameter("password", hashedPassword).uniqueResult();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			}
		}

		return user;
	}

}
