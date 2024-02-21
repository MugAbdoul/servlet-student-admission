<!DOCTYPE html>
<html>
<head>
    <title>Admission page</title>
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    
    <%@ include file="header.jsp" %>

    <section class="main">
        <form action="admission" method="post" enctype="multipart/form-data">

            <div class="sides">
                <div class="side">
                    <h4>Personal Information</h4>   

                    <div class="form-control">
                        <label for="profile">Profile:</label>
                        <input type="file" id="profile" name="profile">
                    </div>

                    <div class="form-control">
                        <label for="fullname">Full Name:</label>
                        <input type="text" id="fullname" name="fullname" placeholder="Enter your name"> 
                    </div>

                    <div class="form-control">
                        <label for="email">Email:</label>
                        <input type="email" id="email" name="email" placeholder="Enter your email"> 
                    </div>

                    <div class="form-control">
                        <label for="date">Date of Birth:</label>
                        <input type="date" id="date" name="date">
                    </div>

                    <div class="form-control-gender">
                        <label for="gender">Gender:</label>
                        Male<input type="radio" id="gender" value="male" name="gender">
                        Female<input type="radio" id="gender" value="female" name="gender">
                    </div>

                    <div class="form-control">
                        <label for="Nationality">Nationality:</label>
                        <input type="text" id="Nationality" name="nationality" placeholder="Enter your Nationality">
                    </div>

                    <div class="form-control">
                        <label for="id">ID number:</label>
                        <input type="text" id="id" name="id" placeholder="Enter your Identification number">
                    </div>

                    <div class="form-control">
                        <label for="address">Address:</label>
                        <input type="text" id="address" name="address" placeholder="Enter your address">
                    </div>

                    <div class="form-control">
                        <label for="phonenumber">Phonenumber:</label>
                        <input type="text" id="phonenumber" name="phonenumber" placeholder="Enter your phonenumber">
                    </div>
                </div>
                
                <div class="side">
                    <h4>Academic Background</h4>

                    <div class="form-control">
                        <label for="psn">Previous School Name:</label>
                        <input type="text" id="psn" name="psn" placeholder="Enter your previous school name">
                    </div>

                    <div class="form-control">
                        <label for="trascript">Diploma document:</label>
                        <input type="file" id="trascript" name="transcript">
                    </div>
                </div>
            </div>
            
            
            <input type="submit" class="sub-btn" value="Submit">
        </form>
    </section>
    <footer>
        <p>&copy; 2024 All rights reserved.</p>
    </footer>
</body>
</html>
