import java.io.*;
import java.nio.file.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/admission")
@MultipartConfig
public class Admission extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        RequestDispatcher dispatcher = request.getRequestDispatcher("/Views/admission.jsp");
        dispatcher.forward(request, response);
    } 

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String dateOfBirth = request.getParameter("date");
        String gender = request.getParameter("gender");
        String nationality = request.getParameter("nationality");
        String idNumber = request.getParameter("id");
        String address = request.getParameter("address");
        String phoneNumber = request.getParameter("phonenumber");
        String previousSchoolName = request.getParameter("psn");

        Part profile = request.getPart("profile");
        Part transcript = request.getPart("transcript");

        String appPath = request.getServletContext().getRealPath("/");
        String uploadPath = appPath + File.separator + "uploads";

        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }

        String profileName = Paths.get(profile.getSubmittedFileName()).getFileName().toString();
        InputStream profileContent = profile.getInputStream();
        File profileFile = new File(uploadDir, profileName);
        try (InputStream input = profileContent; OutputStream output = new FileOutputStream(profileFile)) {
            byte[] buffer = new byte[1024];
            int length;
            while ((length = input.read(buffer)) > 0) {
                output.write(buffer, 0, length);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        String transcriptName = Paths.get(transcript.getSubmittedFileName()).getFileName().toString();
        InputStream transcriptContent = transcript.getInputStream();
        File transcriptFile= new File(uploadDir, transcriptName);
        try (InputStream input = transcriptContent; OutputStream output = new FileOutputStream(transcriptFile)) {
            byte[] buffer = new byte[1024];
            int length;
            while ((length = input.read(buffer)) > 0) {
                output.write(buffer, 0, length);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        EmailSender emailSender = new EmailSender();

        String emailContent = "Dear " + fullname + ",\n\n"
                    + "Your admission has been sent successfully. Thank you for your application.\n\n";

        emailSender.sendEmail(email, "Admission Confirmation",emailContent);
        
        request.setAttribute("profile", profileName);
        request.setAttribute("fullname", fullname);
        request.setAttribute("email", email);
        request.setAttribute("dateOfBirth", dateOfBirth);
        request.setAttribute("gender", gender);
        request.setAttribute("nationality", nationality);
        request.setAttribute("idNumber", idNumber);
        request.setAttribute("address", address);
        request.setAttribute("phoneNumber", phoneNumber);
        request.setAttribute("previousSchoolName", previousSchoolName);
        request.setAttribute("transcript", transcriptName);

        // Dispatch to JSP
        RequestDispatcher dispatcher = request.getRequestDispatcher("/Views/details.jsp");
        dispatcher.forward(request, response);
    }

    
}
