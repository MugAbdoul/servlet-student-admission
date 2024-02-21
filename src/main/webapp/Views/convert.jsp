<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Converter</title>
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

    <%@ include file="header.jsp" %>

<div class="main">
    <div class="convert-section">
        <h1>Converter</h1>
        <form action="convert" method="post">
            Enter Base 10 Number <input type="text" name="number" required><br><br>
            <button type="submit" class="btn" name="type" value="binary">Binary</button>
            <button type="submit" class="btn" name="type" value="hexa">Hexa</button>
            <button type="submit" class="btn" name="type" value="octal">Octal</button>
            <button type="reset" class="btn">Clear</button>
        </form>

        <div class="form-result-center">
            <% if(request.getAttribute("error") != null) { %>
                <div class="error">
                    <%= request.getAttribute("error") %>
                </div>
            <% } %>
        
            <% if(request.getAttribute("result") != null) { %>
                <h3>Result</h3>
                <p>Number: <%= request.getAttribute("number") %></p>
                <p>Result: <%= request.getAttribute("result") %></p>
                <%
                    String type = (String) request.getAttribute("type");
                    if (type != null) {
                        switch (type) {
                            case "binary":
                                out.println("<p class=\"conversion-message\">Decimal number converted to binary</p>");
                                break;
                            case "hexa":
                                out.println("<p class=\"conversion-message\">Decimal number converted to hexadecimal</p>");
                                break;
                            case "octal":
                                out.println("<p class=\"conversion-message\">Decimal number converted to octal</p>");
                                break;
                            default:
                                break;
                        }
                    }
                %>
            <% } %>
        </div>

    </div>    
</div>

<footer>
    <p>&copy; 2024 All rights reserved.</p>
</footer>

</body>
</html>
