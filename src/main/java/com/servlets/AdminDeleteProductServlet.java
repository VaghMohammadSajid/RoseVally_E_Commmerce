package com.servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Tables.Products;
import com.helper.FactoryProvider;

public class AdminDeleteProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminDeleteProductServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Session session = FactoryProvider.getFactory().openSession();
		Transaction tx = null;
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String idParam = request.getParameter("DeleteId");
		
		if (idParam != null && !idParam.isEmpty()) {
			int ProductId = Integer.parseInt(request.getParameter("DeleteId"));
			try {
				tx = session.beginTransaction();

				// Fetch Product Id
				Products products = session.get(Products.class, ProductId);

				if (products != null) {
					// fetch image filename
					String productImage = products.getPimage();

					if (productImage != null) {
						File imageFile = new File("admin/uploaded_img/" + productImage);

						if (imageFile.exists()) {
							imageFile.delete();
						}
					}
					session.delete(products);
					response.sendRedirect("admin/admin_AllProducts.jsp");
				}
				tx.commit();
			} catch (Exception e) {
				if (tx != null) {
					tx.rollback();
				}
				e.printStackTrace();
			} finally {
				session.close();
			}
		}
		else {
			out.print("This product is not available into the Database");
		}
	}
}
