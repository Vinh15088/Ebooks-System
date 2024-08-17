package com.user.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.DAO.BookOrderDDAOImpl;
import com.DAO.CartDAOImpl;
import com.DB.DBConnect;
import com.entity.Book_Order;
import com.entity.Cart;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/order")
public class OrderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public OrderServlet() {}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();

            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phno = request.getParameter("phno");
            String address = request.getParameter("address");
            String landmark = request.getParameter("landmark");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String pincode = request.getParameter("pincode");
            String payment = request.getParameter("payment");

            String fullAdd = address + ", " + landmark + ", " + city + ", " +state + ", " + pincode;

            CartDAOImpl dao =new  CartDAOImpl(DBConnect.getConnection());

            List<Cart> list = dao.getBookByUser(id);

            BookOrderDDAOImpl dao1 = new BookOrderDDAOImpl(DBConnect.getConnection());
            Book_Order book_order = null;
            int i = dao1.getOrderNo();

            ArrayList<Book_Order> book_orders = new ArrayList<Book_Order>();

            for(Cart cart : list) {
                book_order = new Book_Order();
                i++;
                book_order.setOrderId("BOOK-ORD-00" + i);
                book_order.setUserName(name);
                book_order.setEmail(email);
                book_order.setPhno(phno);
                book_order.setFullAdd(fullAdd);
                book_order.setBookName(cart.getBookName());
                book_order.setAuthor(cart.getAuthor());
                book_order.setPrice(String.valueOf(cart.getPrice()));
                book_order.setPaymentType(payment);

                book_orders.add(book_order);
            }

            if("noselect".equals(payment)) {
                session.setAttribute("failedMsg", "Please Choose Payment Method");
                response.sendRedirect("checkout.jsp");
            } else {
                boolean f = dao1.saveOrder(book_orders);

                if (f) {
                    response.sendRedirect("order_success.jsp");
//                    System.out.println("Order Success");
                } else {
                    session.setAttribute("failedMsg", "Your Order Failed");
                    response.sendRedirect("checkout.jsp");
                }
            }

        } catch (Exception e){
            e.printStackTrace();
        }
    }
}
