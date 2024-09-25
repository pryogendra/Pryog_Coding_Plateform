<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Submitted All questions :</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }

        .header {
            background-color: #34495e;
            padding: 20px;
            text-align: center;
            color: #ffffff;
            border-bottom: 3px solid #2c3e50;
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
            transition: color 0.3s ease, border-bottom 0.3s ease;
            padding-bottom: 5px;
            border-bottom: 2px solid transparent;
        }

        .nav a:hover {
            color: #dfe9f3;
            border-bottom: 2px solid #dfe9f3;
        }
        button {
                background-color: #4a90e2;
                color: #ffffff;
                padding: 15px 30px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 18px;
                transition: background-color 0.3s ease;
                text-transform: uppercase;
            }

            button:hover {
                background-color: #357ab7;
            }

            button:active {
                background-color: #2a5d94;
            }
        h2 {
            text-align: center;
            margin-top: 30px;
            color: #34495e;
            font-size: 28px;
            border-bottom: 2px solid #34495e;
            padding-bottom: 10px;
            background-color: #ecf0f1;
            display: inline-block;
        }
        h3 {
            text-align: center;
            margin-top: 30px;
            color:red;
            font-size: 28px;
            border-bottom: 2px solid #34495e;
            padding-bottom: 10px;
            background-color: #ecf0f1;
            display: inline-block;
        }

        p {
            margin: 20px;
            padding: 15px;
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
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
            box-shadow: 0 -2px 4px rgba(0, 0, 0, 0.1);
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
            textarea {
                width: 100%;
                height: 200px;
                box-sizing: border-box;
                padding: 20px;
                font-size: 16px;
                line-height: 1.5;
                min-height: 50px;
                resize: none; 
                overflow: hidden;
            }

    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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

    <h2>Submitted Codes : </h2>
    <%
        try {
            String ch=request.getParameter("chk");
            Class.forName("org.mariadb.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/PCP", "root", "1234");
            String query = "SELECT * FROM users_data where type= ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, ch);
            ResultSet rs = ps.executeQuery();
            int chk=0;
            if (rs != null) {
                while (rs.next()) {
                    chk=1;
                    String questionSelected = rs.getString("question");
                    String code_type=rs.getString("type");
                    String writer=rs.getString("username");
                    out.println("<p><strong>"+code_type+" Question:</strong> " + questionSelected + "</p>");
                    String answer=rs.getString("answer");
                    out.println("<p><strong>"+code_type+" Code:</strong> <textarea id='autoResizeTextArea'>"+ answer + ""
                    + "</textarea><strong>Written By :</strong> " + writer + "<br>"
                    + "<form action='varified.jsp'><input type='radio' name='var' value='Yes'>YES<br>"
                    + "<input type='radio' name='var' value='No'>No<br>"
                    + "<input type='submit' value='OK'></form>"
                    + "</p>");
                }
            }
            if(chk!=1){
                out.println("<p><center><strong style='color:red;'>No any code........</strong></center></p>");
            }
            else {
                out.println("<p><center><strong style='color:red;'>No more code..... </strong></center></p>");
            }
            rs.close();
            ps.close();
            conn.close();
        } catch (Exception e) {
            out.println(e);
        }

    %>
    <div class="footer">
        © 2024 pryog. All Rights Reserved. | 
        <a href="privacy.jsp">Privacy Policy</a> | 
        <a href="terms.jsp">Terms of Service</a>
    </div>
</body>
</html>
