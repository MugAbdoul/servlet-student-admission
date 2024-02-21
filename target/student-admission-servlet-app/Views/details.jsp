<!DOCTYPE html>
<html>
<head>
    <title>File Upload Details</title>
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    
    <%@ include file="header.jsp" %>
    
    <section class="main">
        <div class="details-prof">

            <div class="details-prof-side">
                <h1>User information</h1>

                <img class="user-profile-img" src="uploads/<%= request.getAttribute("profile") %>" alt="profile profile" width="300">
            
                <p><span class="p-label">Username:</span> <%= request.getAttribute("fullname") %></p>
                <p><span class="p-label">Email:</span> <%= request.getAttribute("email") %></p>
                <p><span class="p-label">Date of Birth:</span> <%= request.getAttribute("dateOfBirth") %></p>
                <p><span class="p-label">Gender:</span> <%= request.getAttribute("gender") %></p>
                <p><span class="p-label">Nationality:</span> <%= request.getAttribute("nationality") %></p>
                <p><span class="p-label">ID Number:</span> <%= request.getAttribute("idNumber") %></p>
                <p><span class="p-label">Address:</span> <%= request.getAttribute("address") %></p>
                <p><span class="p-label">Phone Number:</span> <%= request.getAttribute("phoneNumber") %></p>
                <p><span class="p-label">Previous School Name:</span> <%= request.getAttribute("previousSchoolName") %></p>
                
                <a class="downloadBtn" href="uploads/<%= request.getAttribute("transcript") %>" download="<%= request.getAttribute("transcript") %>">Download Diploma PDF</a>
            </div>
            <div class="details-prof-side-2">

                <img class="success-img" src="assets/image/verified.png" alt="profile profile" width="300">
                <div class="success-message">
                    <h2>Congratulations!</h2>
                    <p>Your admission form has been successfully submitted.</p>
                    <p>We will review your application and get back to you shortly.</p>
                </div>
            </div>
            
        </div>
    </section>
</body>
</html>
 