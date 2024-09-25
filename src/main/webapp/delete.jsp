<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Account</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <style>
            body {
                background-color: #2c3e50;
                font-family: Arial, sans-serif;
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
        <%
                String username = (String) session.getAttribute("username");
                Connection conn = null;
                PreparedStatement pstmt = null;
                PreparedStatement pstmt1 = null;
                ResultSet rs = null;
                try {
                    if (username != null && !username.isEmpty()) {
                        Class.forName("org.mariadb.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/PCP", "root", "1234");
                        pstmt = conn.prepareStatement("delete from users WHERE username = ?");
                        pstmt1 = conn.prepareStatement("delete from users_data WHERE username = ?");
                        pstmt.setString(1, username);
                        pstmt1.setString(1, username);
                        pstmt1.execute();
                        pstmt.execute();
                        out.println("<center><h2>Your account deleted sucessfully......<br><br><a href='index.jsp'>GO TO HOME</a></h2></center>");
                        session.setAttribute("username","");
                    }
                }
                catch(Exception e){
                %>
                <div class="text-center text-danger">
                    <h3>An error occurred. Please try again later.</h3>
                </div>
        <%
            }

            %>
        <div class="footer">
            © 2024 pryog. All Rights Reserved. | 
            <a href="privacy.jsp">Privacy Policy</a> | 
            <a href="terms.jsp">Terms of Service</a>
        </div>
    </body>
</html>
