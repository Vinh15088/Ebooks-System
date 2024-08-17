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

@WebServlet("/update_profile")
public class UpdateProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public UpdateProfileServlet() {}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("fname");
            String email = request.getParameter("email");
            String phno = request.getParameter("phno");
            String password = request.getParameter("password");

            User user = new User();

            user.setId(id);
            user.setName(name);
            user.setEmail(email);
            user.setPhno(phno);

            HttpSession session = request.getSession();

            UserDAOImpl dao = new UserDAOImpl(DBConnect.getConnection());

            boolean check1 = dao.checkPassword(id, password);

            if(check1) {
                boolean check2 = dao.updateProfile(user);
                if(check2) {
                    session.setAttribute("succMsg", "Update profile successful");
                    response.sendRedirect("edit_profile.jsp");
                } else {
                    session.setAttribute("failedMsg", "Update profile failed");
                    response.sendRedirect("edit_profile.jsp");
                }
            } else {
                session.setAttribute("failedMsg", "Your Password is incorrect");
                response.sendRedirect("edit_profile.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
