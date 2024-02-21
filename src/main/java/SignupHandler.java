import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "SignupServlet", urlPatterns = {"/signup"})
public class SignupHandler extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/Views/signup.jsp");
        dispatcher.forward(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        String usernamePar = req.getParameter("username");
        String emailPar = req.getParameter("email");
        String passwordPar = req.getParameter("password");
        String cpasswordPar = req.getParameter("cpassword");

        if(passwordPar.equals(cpasswordPar)) {
            resp.sendRedirect(req.getContextPath() + "/login");
        }else{
            req.setAttribute("error", "password are not equal");
            RequestDispatcher dispatcher = req.getRequestDispatcher("/Views/signup.jsp");
            dispatcher.forward(req, resp);
        }
    }
}
