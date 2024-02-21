<!DOCTYPE html>
<html>
<head>
    <title>File Upload Form</title>
</head>
<body>
    <h2>File Upload Form</h2>
    <form action="UploadServlet" method="post" enctype="multipart/form-data">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username"><br><br>
        
        <label for="email">Email:</label>
        <input type="text" id="email" name="email"><br><br>

        <label for="file1">Upload Image:</label>
        <input type="file" id="file1" name="file1"><br><br>
        
        <label for="file2">Upload PDF:</label>
        <input type="file" id="file2" name="file2"><br><br>
        
        <input type="submit" value="Submit">
    </form>
</body>
</html>
