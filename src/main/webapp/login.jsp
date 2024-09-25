<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <style>
            body {
                background-color: #2c3e50;
                font-family: Arial, sans-serif;
            }
            .login-container {
                width: 300px;
                margin: 100px auto;
                padding: 20px;
                background-color: #34495e;
                box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
                border-radius: 8px;
            }
            .login-container img {
                display: block;
                margin: 0 auto 20px;
            }
            .login-container h3 {
                text-align: center;
                margin-bottom: 20px;
                color: #333333;
            }
            .login-container input[type="text"], 
            .login-container input[type="password"] {
                width: calc(100% - 20px);
                padding: 10px;
                margin: 10px 0;
                border: 1px solid #dddddd;
                border-radius: 4px;
            }
            .login-container input[type="submit"],
            .login-container input[type="reset"] {
                width: 48%;
                padding: 10px;
                background-color: #4CAF50;
                border: none;
                border-radius: 4px;
                color: #ffffff;
                cursor: pointer;
            }
            .login-container input[type="reset"] {
                background-color: #f44336;
            }
            .login-container input[type="submit"]:hover,
            .login-container input[type="reset"]:hover {
                background-color: #45a049;
            }
            .login-container input[type="reset"]:hover {
                background-color: #e53935;
            }
            .login-container a {
                color: #007BFF;
                text-decoration: none;
            }
            .login-container a:hover {
                text-decoration: underline;
            }
            .login-container .signup-text {
                text-align: center;
                margin-top: 20px;
                font-size: 14px;
            }
            .account-button {
                margin-top: 30px;
                padding: 15px 50px;
            }

            .footer {
                background-color: #34495e;
                color: #ffffff;
                padding: 20px;
                text-align: center;
                font-size: 14px;
                position: fixed;
                width: 100%;
                bottom: 0;
                left: 0;
            }

            .footer a {
                color: #ffffff;
                text-decoration: none;
                font-weight: bold;
                margin: 0 10px;
                transition: color 0.3s ease;
            }

            .footer a:hover {
                color: #dfe9f3;
            }

            .account-icon {
                position: absolute;
                top: 20px;
                left: 20px;
                width: 50px;
                height: 50px;
                border-radius: 50%;
                cursor: pointer;
                background-color: #ffffff;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
                display: flex;
                align-items: center;
                justify-content: center;
                transition: background-color 0.3s ease;
            }

            .account-icon img {
                width: 30px;
                height: 30px;
                object-fit: cover;
            }

            .account-icon:hover {
                background-color: #f0f0f0;
            }
            .account-button {
                background: transparent;
                border: none;
                cursor: pointer;
                font-size: 24px; /* Adjust size as needed */
                color: #000; /* Adjust color as needed */
            }
            .account-button:hover {
            color: #007bff; /* Change color on hover */
            }
            .header {
                background-color: #34495e;
                padding: 20px;
                text-align: center;
                color: #ffffff;
            }

            .header h1 {
                margin: 0;
                font-size: 36px;
                letter-spacing: 3px;
            }

            .nav {
                display: flex;
                justify-content: center;
                gap: 30px;
                margin-top: 10px;
            }

            .nav a {
                color: #ffffff;
                text-decoration: none;
                font-size: 18px;
                transition: color 0.3s ease;
            }

            .nav a:hover {
                color: #dfe9f3;
            }
        </style>
    </head>
    <body>
        <%
                String username = (String) session.getAttribute("username");
                session.setAttribute("username", username);
            %>

        <a href="account.jsp" class="account-icon">
                  <i class="fas fa-user"></i>
        </a>
        <div class="header">
            <h1>PRYOG CODING PLATFORM</h1>
            <div class="nav">
                <a href="index.jsp">Home</a>
                <a href="about.jsp">About</a>
                <a href="contact.jsp">Contact</a>
                <a href="services.jsp">Services</a>
            </div>
        </div>
        <div class="login-container">
            <form method="POST" action="Login.jsp">
                <center>
                    <img src="Images/pryog_logo.png" alt="Logo" width="100" height="100">
                    <h2>Login</h2>
                    <label>Username :</label>
                    <input type="text" name="user" placeholder="Username" required>
                    <label>Password :</label>
                    <input type="password" name="pass" placeholder="*****" required>
                    <input type="reset" value="Clear"> 
                    <input type="submit" value="Login">
                </center>
            </form>
                <div class="signup-text">
                    Don't have an account? <a href="Sign_up.jsp">Sign Up</a>
                </div>
        </div>
        <div class="footer">
            © 2024 pryog. All Rights Reserved. | 
            <a href="privacy.jsp">Privacy Policy</a> | 
            <a href="terms.jsp">Terms of Service</a>
        </div>
    </body>
</html>
