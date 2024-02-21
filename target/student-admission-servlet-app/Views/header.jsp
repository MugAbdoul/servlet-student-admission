<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<%
    // Retrieve the session object
    HttpSession httpSession = request.getSession();
    // Check if isLoggedIn attribute is set in the session
    Boolean isLoggedIn = (Boolean) httpSession.getAttribute("isLoggedIn");
    // If isLoggedIn is null, set it to false
    if (isLoggedIn == null) {
        isLoggedIn = false;
    }
%>

<header>
    <div class="logo"><a href="#">Student Admission system</a></div>
    <nav>
        <ul class="links">
            <li><a href="convert">Number Convert</a></li>
            <li><a href="admission">Admission</a></li>
            <% if (!isLoggedIn) { %>
                <li><a class="login" href="login">Login</a></li>
                <li><a class="signup" href="signup">Signup</a></li>
            <% } else { %>
                <li><a class="logout" href="logout">Logout</a></li>
            <% } %>
        </ul>
    </nav>
</header>
