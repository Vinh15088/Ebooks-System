package com.user.servlet;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.File;
import java.io.IOException;

@WebServlet("/add_old_book")
@MultipartConfig
public class AddOldBook extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AddOldBook() {}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String bookName = request.getParameter("bname");
            String author = request.getParameter("author");
            String price = request.getParameter("price");
            String categories = "Old";
            String status = "Active";
            Part part = request.getPart("bimg");
            String fileName = part.getSubmittedFileName();

            String userEmail = request.getParameter("user");

            BookDtls bookDtls = new BookDtls(bookName, author, price, categories, status, fileName, userEmail);

            BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());

            boolean f = dao.addBooks(bookDtls);

            HttpSession session = request.getSession();
            if(f) {
                String path = getServletContext().getRealPath("") + "book";
                File file = new File(path);
                part.write(path + File.separator + fileName);

                session.setAttribute("succMsg", "Book Added Successfully");
                response.sendRedirect("sell_book.jsp");
            } else {
                session.setAttribute("failedMsg", "Book Added Failed");
                response.sendRedirect("sell_book.jsp");
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
