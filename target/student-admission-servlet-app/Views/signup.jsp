<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

    <%@ include file="header.jsp" %>

    <section class="main">
        <div class="login-container">
            <h2>Signup</h2>
            <form action="signup" method="post">
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" placeholder="Enter your username" required>
                </div>
                <div class="form-group">
                    <label for="email">email:</label>
                    <input type="email" id="email" name="email" placeholder="Enter your email" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" placeholder="Enter your password" required>
                </div>
                <div class="form-group">
                    <label for="password">Confirm Password:</label>
                    <input type="password" id="password" name="cpassword" placeholder="Confirm your password" required>
                </div>
                <div class="form-group">
                    <input type="submit" value="signup">
                </div>
            </form>
            <%-- Display error message here --%>
            <div class="error-message">
                <% if(request.getAttribute("error") != null) { %>
                <%= request.getAttribute("error") %>
                <% } %>
            </div>
        </div>
    </section>
    <footer>
        <p>&copy; 2024 All rights reserved.</p>
    </footer>
</body>
</html>
