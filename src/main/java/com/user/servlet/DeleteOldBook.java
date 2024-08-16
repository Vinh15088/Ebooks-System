package com.user.servlet;

import java.io.IOException;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/delete_old_book")
public class DeleteOldBook extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public DeleteOldBook() {}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String em = request.getParameter("em");
        int id = Integer.parseInt(request.getParameter("id"));
        BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());

        boolean f = dao.oldBookDelete(em, "Old", id);

        HttpSession session = request.getSession();

        if(f) {
            session.setAttribute("succMsg", "Old Book Delete form Cart");
            response.sendRedirect("old_book.jsp");
        } else {
            session.setAttribute("failedMsg", "Old Book Not Delete form Cart");
            response.sendRedirect("old_book.jsp");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
