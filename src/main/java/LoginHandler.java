import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LoginServlet", urlPatterns={"/login"})
public class LoginHandler extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/Views/login.jsp");
        dispatcher.forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = "abdoullatif5027@gmail.com";
        String pass = "password12";

        String emailPar = req.getParameter("email");
        String passwordPar = req.getParameter("password");

        if(email.equals(emailPar) && pass.equals(passwordPar)) {

            HttpSession session = req.getSession();

            session.setAttribute("isLoggedIn", true);

            EmailSender emailSender = new EmailSender();

            String emailContent = "You have successfully logged in";

            emailSender.sendEmail(email, "Login Confirmation",emailContent);

            resp.sendRedirect(req.getContextPath() + "/admission");
        }else{
            req.setAttribute("error", "Incorrect email or password");
            RequestDispatcher dispatcher = req.getRequestDispatcher("/Views/login.jsp");
            dispatcher.forward(req, resp);
        }

    }
}