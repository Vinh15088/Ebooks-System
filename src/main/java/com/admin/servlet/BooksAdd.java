package com.admin.servlet;

import java.awt.print.Book;
import java.io.File;
import java.io.IOException;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/add_books")
@MultipartConfig
public class BooksAdd extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public BooksAdd() {}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String bookName = request.getParameter("bname");
            String author = request.getParameter("author");
            String price = request.getParameter("price");
            String categories = request.getParameter("categories");
            String status = request.getParameter("status");
            Part part = request.getPart("bimg");
            String fileName = part.getSubmittedFileName();

            BookDtls bookDtls = new BookDtls(bookName, author, price, categories, status, fileName, "admin@gmail.com");

            BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());

            boolean f = dao.addBooks(bookDtls);

            HttpSession session = request.getSession();
            if(f) {
                String path = getServletContext().getRealPath("") + "book";
                File file = new File(path);
                part.write(path + File.separator + fileName);

                session.setAttribute("succMsg", "Book Added Successfully");
                response.sendRedirect("admin/add_books.jsp");
            } else {
                session.setAttribute("failedMsg", "Book Added Failed");
                response.sendRedirect("admin/add_books.jsp");
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
