package com.user.servlet;

import java.io.IOException;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    public RegisterServlet() {}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String name = request.getParameter("fname");
            String email = request.getParameter("email");
            String phno = request.getParameter("phno");
            String password = request.getParameter("password");
            String check = request.getParameter("check");

//            System.out.println(name + " " + email + " " + phno + " " + password + " " + check);

            User user = new User();
            user.setName(name);
            user.setEmail(email);
            user.setPhno(phno);
            user.setPassword(password);

            HttpSession session = request.getSession();

            if(check != null) {
                UserDAOImpl dao = new UserDAOImpl(DBConnect.getConnection());
                boolean f = dao.userRegister(user);
                if(f) {
//                    System.out.println("User register successful");
                    session.setAttribute("succMsg", "Registration Seccussfully");
                    response.sendRedirect("register.jsp");
                }
                else {
//                    System.out.println("User register failed");
                    session.setAttribute("failedMsg", "Registration Failed");
                    response.sendRedirect("register.jsp");
                }
            } else {
//                System.out.println("Please Check Agree & Terms Condition");
                session.setAttribute("failedMsg", "Please Check Agree & Terms Condition");
                response.sendRedirect("register.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
