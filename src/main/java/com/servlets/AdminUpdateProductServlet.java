package com.servlets;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Tables.Products;
import com.helper.FactoryProvider;

@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)

public class AdminUpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminUpdateProductServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Session session = FactoryProvider.getFactory().openSession();
		Transaction tx = null;

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		int productId = Integer.parseInt(request.getParameter("Pid"));
		String p_name = request.getParameter("Pname");
		String p_details = request.getParameter("Pdetails");
		double p_price = Double.parseDouble(request.getParameter("Pprice"));
		Part file = request.getPart("Pimage");
		String fileName = file.getSubmittedFileName();
		String uploadPath = "C:/Users/Lenovo/eclipse-workspace/sajid/RoseValley/src/main/webapp/admin/uploaded_img/"
				+ fileName;
		
		try {

			tx = session.beginTransaction();
			Products product = session.get(Products.class, productId);

			// File Uploaded
			FileOutputStream fos = new FileOutputStream(uploadPath);
			InputStream fis = file.getInputStream();

			byte[] data = new byte[fis.available()];
			fis.read(data);
			fos.write(data);
			fos.close();

			// Updated New Products Record
			product.setPname(p_name);
			product.setDetails(p_details);
			product.setPrice(p_price);
			product.setAddedDate(new Date());
			product.setPimage(fileName);

			// Handle image update here, if necessary
			session.update(product);
			tx.commit();

			response.sendRedirect("admin/admin_AllProducts.jsp");
		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
}
