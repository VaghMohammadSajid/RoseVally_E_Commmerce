package com.servlets;

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
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Session session = FactoryProvider.getFactory().openSession();
		Transaction tx = null;
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String p_name = request.getParameter("Pname");
		double p_price = Double.parseDouble(request.getParameter("Pprice"));
		String p_details = request.getParameter("Pdetails");
		Part file = request.getPart("Pimage");
		String fileName = file.getSubmittedFileName();

		String uploadPath = "C:/Users/Lenovo/eclipse-workspace/sajid/RoseValley/src/main/webapp/admin/uploaded_img/"
				+ fileName;

		try {
			tx = session.beginTransaction();
			Thread.sleep(3000);

			// Check if user with the given email exists
			Products existingProduct = session.createQuery("FROM Products WHERE Pname = :pname", Products.class)
					.setParameter("pname", p_name).uniqueResult();

			if (existingProduct != null) {
				out.println("alreadyexist");
			} else {

				// File Uploaded
				FileOutputStream fos = new FileOutputStream(uploadPath);
				InputStream fis = file.getInputStream();

				byte[] data = new byte[fis.available()];
				fis.read(data);
				fos.write(data);
				fos.close();

				// Insert Product into the Database
				Products newProduct = new Products();
				newProduct.setPname(p_name);
				newProduct.setPrice(p_price);
				newProduct.setDetails(p_details);
				newProduct.setAddedDate(new Date());
				newProduct.setPimage(fileName);

				// save Product
				session.save(newProduct);

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
