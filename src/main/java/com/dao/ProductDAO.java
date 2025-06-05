package com.dao;

import java.util.List;

import org.hibernate.Session;

import com.Tables.Products;
import com.helper.FactoryProvider;

public class ProductDAO {
	Session session;

	public void AddProduct(Products product) {
		session = FactoryProvider.getSession();
		try {
			session.beginTransaction();
			session.save(product);
			session.getTransaction().commit();

		} finally {
			session.close();
		}
	}

	public List<Products> getSubmitByName(String name) {
		session = FactoryProvider.getSession();
		List<Products> products;

		try {
			products = session.createQuery("FROM Products WHERE Pname=:name", Products.class).setParameter("name", name)
					.list();
		} finally {
			session.close();
		}
		return products;
	}
}
