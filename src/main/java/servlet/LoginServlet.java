package servlet;

import java.io.IOException;

import DAO.UserDAOImpl;
import DB.DBConnect;
import entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginServlet() {}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            UserDAOImpl dao = new UserDAOImpl(DBConnect.getConnection());
            HttpSession session = request.getSession();

            String email = request.getParameter("email");
            String password = request.getParameter("password");

//            System.out.println(email + " " + password);

            if("admin@gmail.com".equals(email) && "admin".equals(password)) {
                User user = new User();
                session.setAttribute("userobj", user);
                response.sendRedirect("admin/home.jsp");
            } else {
                User user = dao.login(email, password);
                if(user != null) {
                    session.setAttribute("userobj", user);
                    response.sendRedirect("home.jsp");
                } else {
                    session.setAttribute("failedMsg", "Email & Password Incorrect");
                    response.sendRedirect("login.jsp");
                }
                response.sendRedirect("home.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
