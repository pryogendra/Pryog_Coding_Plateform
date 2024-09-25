<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Profile</title>
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
            .clsbtn{
                width: 48%;
                padding: 10px;
                margin: 10px 0;
                border: none;
                border-radius: 5px;
                background-color: red;
                color: white;
                font-size: 16px;
                cursor: pointer;
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
        <%
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            try {
                if (username != null && !username.isEmpty()) {
                    Class.forName("org.mariadb.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/PCP", "root", "1234");
                    pstmt = conn.prepareStatement("SELECT * FROM users WHERE username = ?");
                    pstmt.setString(1, username);
                    rs = pstmt.executeQuery();

                    if (rs.next()) {
        %>
            <div class="cen">
            <form method="POST" action="update.jsp">
                <center>
                    <img src="Images/pryog_logo.png" alt="Description of Image" width="100" height="100">
                    <h2>Edit Profile</h2><br><br>
                    Username: <textarea  rows="1" name="user" readonly=""><%= rs.getString("username") %></textarea><br><br>
                    Password: <textarea rows="1" name="pass"  required><%= rs.getString("password") %></textarea><br><br>
                    Email: <textarea rows="1" name="email" required><%= rs.getString("email") %></textarea><br><br>
                    Mobile No.: <textarea rows="1" name="mobile_no" required><%= rs.getString("mobile_no") %></textarea><br><br>
                    Address: <textarea rows="1" name="address" required><%= rs.getString("address") %></textarea><br><br>
                    <input type="submit" value="UPDATE">
                    <br><br>
                </center>
            </form>
                    <center><a href="account.jsp"><button class="clsbtn">CANCEL</button></a></center>
        </div>
        <%
            } }
            } catch (Exception e) {
        %>
                <div class="text-center text-danger">
            <h3>An error occurred. Please try again later.</h3>
        </div>
        <%
            } finally {
                if (rs != null) try { rs.close(); } catch (Exception ignore) {}
                if (pstmt != null) try { pstmt.close(); } catch (Exception ignore) {}
                if (conn != null) try { conn.close(); } catch (Exception ignore) {}
            }
        %>

        <div class="footer">
            © 2024 pryog. All Rights Reserved. | 
            <a href="privacy.jsp">Privacy Policy</a> | 
            <a href="terms.jsp">Terms of Service</a>
        </div>
    </body>
</html>
