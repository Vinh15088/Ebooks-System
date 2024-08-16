package com.user.servlet;

import java.io.IOException;

import com.DAO.CartDAOImpl;
import com.DB.DBConnect;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/remove_book")
public class RemoveBookCart extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RemoveBookCart() {}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int bid = Integer.parseInt(request.getParameter("bid"));
        int uid = Integer.parseInt(request.getParameter("uid"));
        CartDAOImpl dao = new CartDAOImpl(DBConnect.getConnection());
        boolean f = dao.deleteBook(bid, uid);

        HttpSession session = request.getSession();

        if(f) {
            session.setAttribute("succMsg", "Book Removed from Cart");
            response.sendRedirect("checkout.jsp");
        } else {
            session.setAttribute("failedMsg", "Book Not Removed from Cart");
            response.sendRedirect("checkout.jsp");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
