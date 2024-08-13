package com.admin.servlet;

import java.io.IOException;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/delete")
public class DeleteBooks extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public DeleteBooks() {}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());
            boolean result = dao.deleteBook(id);

            HttpSession session = request.getSession();

            if (result) {
                session.setAttribute("succMsg", "Book Delete Successful");
                response.sendRedirect("admin/all_books.jsp");
            } else {
                session.setAttribute("failedMsg", "Book Delete Failed");
                response.sendRedirect("admin/all_books.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
