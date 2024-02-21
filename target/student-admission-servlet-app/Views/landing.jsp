<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Landing Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }
    header {
      background-color: #333;
      color: #fff;
      padding: 10px 0;
      text-align: center;
    }
    nav {
      background-color: #f4f4f4;
      padding: 10px 0;
      text-align: center;
    }
    nav ul {
      list-style: none;
      padding: 0;
      margin: 0;
    }
    nav ul li {
      display: inline;
      margin: 0 10px;
    }
    nav ul li a {
      text-decoration: none;
      color: #333;
      padding: 5px 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
      transition: background-color 0.3s;
    }
    nav ul li a:hover {
      background-color: #ddd;
    }
    section {
      padding: 20px;
      text-align: center;
    }
    footer {
      background-color: #333;
      color: #fff;
      padding: 10px 0;
      text-align: center;
      position: fixed;
      bottom: 0;
      width: 100%;
    }
  </style>
</head>
<body>
    <header>
        <h1>Servlet app</h1>
    </header>

    <nav>
        <ul>
            <li><a href="convert">Convert</a></li>
            <li><a href="login">Login</a></li>
            <li><a href="request">Request</a></li>
        </ul>
    </nav>
  <section id="convert">
    <h2>Conversion</h2>
    <p>Convert a number from base 10 to binary, hexadecimal, and octal.</p>
  </section>
  <section id="login">
    <h2>Login</h2>
    <p>Login to access your account.</p>
  </section>
  <section id="request">
    <h2>Request</h2>
    <p>Apply for student admission with us.</p>
  </section>
  <footer>
    <p>&copy; 2024 All rights reserved.</p>
  </footer>
</body>
</html>
