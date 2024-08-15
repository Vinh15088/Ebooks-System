package com.user.servlet;

import java.io.IOException;

import com.DAO.BookDAOImpl;
import com.DAO.CartDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;
import com.entity.Cart;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public CartServlet() {}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int bid = Integer.parseInt(request.getParameter("bid"));
            int uid = Integer.parseInt(request.getParameter("uid"));

            BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());
            BookDtls bookDtls = dao.getBookById(bid);

            Cart cart = new Cart();

            cart.setbId(bid);
            cart.setcId(uid);
            cart.setBookName(bookDtls.getBookName());
            cart.setAuthor(bookDtls.getAuthor());
            cart.setPrice(Double.parseDouble(bookDtls.getPrice()));
            cart.setTotalPrice(Double.parseDouble(bookDtls.getPrice()));

            CartDAOImpl cartDao = new CartDAOImpl(DBConnect.getConnection());
            boolean f = cartDao.addCart(cart);

            HttpSession session = request.getSession();

            if(f) {
                session.setAttribute("addCart", "Book Added to cart");
//                System.out.println("Session addCart: " + session.getAttribute("addCart"));
                response.sendRedirect("all_new_book.jsp");

//                System.out.println("Add cart success");
            }
            else {
                session.setAttribute("failed", "Something went wrong");
                response.sendRedirect("all_new_book.jsp");
//                System.out.println("Add cart fail");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
