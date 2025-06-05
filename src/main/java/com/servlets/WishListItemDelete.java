package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Tables.Wishlist;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class WishListItemDelete
 */
public class WishListItemDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public WishListItemDelete() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Session session = FactoryProvider.getSession();
		Transaction tx = null;
		int delete = Integer.parseInt(request.getParameter("delete"));
		int deleteAll = Integer.parseInt(request.getParameter("delete_all"));
		try {
			tx = session.beginTransaction();

			Wishlist single_Wishlist_ProductId = session.get(Wishlist.class, delete);
			String hql_By_Wishid = "DELETE FROM Wishlist Wid = :singleWishlistProductId";
			int delete_Wishlist_Product = session.createQuery(hql_By_Wishid)
					.setParameter("singleWishlistProductId", single_Wishlist_ProductId).executeUpdate();

			if (delete_Wishlist_Product > 0) {
				response.sendRedirect("wishlist.jsp");
			}

			Wishlist userId = session.get(Wishlist.class, deleteAll);
			String hql_By_userId = "DELETE FROM Wishlist user.id = :userId";
			int deleteEntities = session.createQuery(hql_By_userId).setParameter("userId", userId).executeUpdate();

			tx.commit();
			if (deleteEntities > 0) {
				response.sendRedirect("shop.jsp");
			}

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
