<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <style>
            body {
                background-color: #2c3e50;
                font-family: Arial, sans-serif;
            }

            .cen {
                width: 400px;
                margin: 100px auto;
                padding: 20px;
                background-color: #34495e;
                box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
                border-radius: 10px;
            }

            img {
                margin-bottom: 20px;
            }

            h3 {
                color: #333333;
                margin-bottom: 30px;
            }

            input[type="text"], input[type="password"], input[type="email"], input[type="number"] {
                width: 100%;
                padding: 10px;
                margin: 10px 0;
                border: 1px solid #cccccc;
                border-radius: 5px;
                box-sizing: border-box;
            }

            input[type="reset"], input[type="submit"] {
                width: 48%;
                padding: 10px;
                margin: 10px 0;
                border: none;
                border-radius: 5px;
                background-color: #5cb85c;
                color: white;
                font-size: 16px;
                cursor: pointer;
            }

            input[type="reset"] {
                background-color: #d9534f;
            }

            input[type="reset"]:hover, input[type="submit"]:hover {
                opacity: 0.8;
            }

            a {
                color: #5bc0de;
                text-decoration: none;
            }

            a:hover {
                text-decoration: underline;
            }

            font {
                font-size: 14px;
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
            <div class="cen">
            <form method="POST" action="Register.jsp">
                <center>
                    <img src="Images/pryog_logo.png" alt="Description of Image" width="100" height="100">
                    <h2>Register</h2><br><br>
                    Username : <input type="text" name="user" placeholder="UserName" required><br><br>
                    Password : <input type="password" name="pass" placeholder="Password" required=""><br><br>
                    Email : <input type="email" name="email" placeholder="pryog@gmail.com" required><br><br>
                    Mobile No. : <input type="number" name="mobile_no" placeholder="Mobile No" required="" ><br><br>
                    Address : <input type="text" name="address" placeholder="Mumbai,Maharastra" required><br><br>
                    OTP : <input type="number" name="otp" placeholder="0000" required ><br><br>
                    <% //java Code %>

                    <input type="reset" value="Clear"> &nbsp;<input type="submit" value="Sign Up">
                    <br><br>
                    &nbsp;&nbsp;<font size=2px>Already have account: <a href="login.jsp">Log In</a></font>
                </center>
            </form>
        </div>
        <div class="footer">
            © 2024 pryog. All Rights Reserved. | 
            <a href="privacy.jsp">Privacy Policy</a> | 
            <a href="terms.jsp">Terms of Service</a>
        </div>
    </body>
</html>
