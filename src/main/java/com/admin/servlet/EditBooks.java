package com.admin.servlet;

import java.io.IOException;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/edit_books")
public class EditBooks extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public EditBooks() {}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String bookName = request.getParameter("bname");
            String author = request.getParameter("author");
            String price = request.getParameter("price");
            String status = request.getParameter("status");

            BookDtls bookDtls = new BookDtls();
            bookDtls.setId(id);
            bookDtls.setBookName(bookName);
            bookDtls.setAuthor(author);
            bookDtls.setPrice(price);
            bookDtls.setStatus(status);

            BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());
            boolean f = dao.updateBook(bookDtls);

            HttpSession session = request.getSession();

            if (f) {
                session.setAttribute("succMsg", "Book Update Successful");
                response.sendRedirect("admin/all_books.jsp");
            } else {
                session.setAttribute("failedMsg", "Book Update Failed");
                response.sendRedirect("admin/all_books.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
