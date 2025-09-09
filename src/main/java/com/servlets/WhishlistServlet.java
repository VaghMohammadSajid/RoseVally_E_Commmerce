package com.servlets;

import com.Tables.Wishlist;
import com.helper.FactoryProvider;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/Wishlist")
public class WhishlistServlet extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("add".equalsIgnoreCase(action)) {
            addWishlistItem(request, response);
        } else if ("remove".equalsIgnoreCase(action)) {
            removeWishlistItem(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("list".equalsIgnoreCase(action)) {
            listWishlistItems(request, response);
        }
    }

    private void addWishlistItem(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("name");
        Double price = Double.valueOf(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String pimage = request.getParameter("pimage");
        Long userId = Long.valueOf(request.getParameter("userId"));
        Long prodId = Long.valueOf(request.getParameter("prodId"));

        Wishlist wishlist = new Wishlist(name, price, quantity, pimage, userId, prodId);

        Session session = FactoryProvider.getFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.save(wishlist);
        tx.commit();
        session.close();

        response.sendRedirect("wishlist.jsp?msg=Item Added");
    }

    private void removeWishlistItem(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Long wid = Long.valueOf(request.getParameter("wid"));

        Session session = FactoryProvider.getFactory().openSession();
        Transaction tx = session.beginTransaction();

        Wishlist wishlist = session.get(Wishlist.class, wid);
        if (wishlist != null) {
            session.delete(wishlist);
        }

        tx.commit();
        session.close();

        response.sendRedirect("wishlist.jsp?msg=Item Removed");
    }

    private void listWishlistItems(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long userId = Long.valueOf(request.getParameter("userId"));

        Session session = FactoryProvider.getFactory().openSession();
        List<Wishlist> list = session.createQuery("FROM Wishlist WHERE userId = :uid", Wishlist.class)
                .setParameter("uid", userId)
                .getResultList();
        session.close();

        request.setAttribute("wishlistItems", list);
        RequestDispatcher rd = request.getRequestDispatcher("wishlist.jsp");
        rd.forward(request, response);
    }
}
