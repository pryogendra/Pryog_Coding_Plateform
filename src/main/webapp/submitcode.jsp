<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Submitted Python Code</title>
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

    <h2>Submitted Code</h2>
    <%
        String question = request.getParameter("question");
        String pythonCode = request.getParameter("textbox_python");
        String javaCode = request.getParameter("textbox_java");
        String cppCode = request.getParameter("textbox_cpp");
        String javascriptCode = request.getParameter("textbox_javascript");
        String c_sharpCode = request.getParameter("textbox_c_sharp");
        String typescriptCode = request.getParameter("textbox_typescript");
        String code=null;
        String code_type=null;
        int q_chk=0;
        int c_chk=0;
        if (question != null && !question.isEmpty()) {
            out.println("<p><strong>Question Selected:</strong> " + question + "</p>");
            q_chk=1;
        } else {
            out.println("<p>Error: Please select a question and enter Python code.</p>");
        }
        out.println("<br>");

        if (pythonCode != null && !pythonCode.isEmpty()) {
            out.println("<p><strong>Python Code:</strong> <textarea id='autoResizeTextArea'>"+ pythonCode + "</textarea><p>");
            c_chk=1;code=pythonCode;code_type="Python";
        }
        else if (javaCode != null && !javaCode.isEmpty()) {
            out.println("<p><strong>Java Code:</strong> <textarea id='autoResizeTextArea'>"+ javaCode + "</textarea><p>");
            c_chk=2;code=javaCode;code_type="Java";
        }
        else if (cppCode != null && !cppCode.isEmpty()) {
            out.println("<p><strong>C++ Code:</strong> <textarea id='autoResizeTextArea'>"+ cppCode + "</textarea><p>");
            c_chk=3;code=cppCode;code_type="C++";
        }
        else if (javascriptCode != null && !javascriptCode.isEmpty()) {
            out.println("<p><strong>JavaScript Code:</strong> <textarea id='autoResizeTextArea'>"+ javascriptCode + "</textarea><p>");
            c_chk=4;code=javascriptCode;code_type="JavaScript";
        }
        else if (c_sharpCode != null && !c_sharpCode.isEmpty()) {
            out.println("<p><strong>C# Code:</strong> <textarea id='autoResizeTextArea'>"+c_sharpCode + "</textarea><p>");
            c_chk=5;code=c_sharpCode;code_type="C#";
        }
        else if (typescriptCode != null && !typescriptCode.isEmpty()) {
            out.println("<p><strong>TypeScript Code:</strong> <textarea id='autoResizeTextArea'>"+ typescriptCode + "</textarea><p>");
            c_chk=6;code=typescriptCode;code_type="TypeScript";
        }
        else {
            out.println("<p>No code submitted.</p>");
        }
    %>
        <form action="home.jsp" method="post">
            <%
                if ((q_chk !=0) && (c_chk!=0)){
                    try{
                        Class.forName("org.mariadb.jdbc.Driver");
                        Connection conn=DriverManager.getConnection("jdbc:mariadb://localhost:3306/PCP","root","1234");
                        PreparedStatement ps=conn.prepareStatement("insert into users_data(username,question,answer,type) values(?,?,?,?)");
                        ps.setString(1,username);
                        ps.setString(2,question);
                        ps.setString(3,code);
                        ps.setString(4,code_type);
                        ps.executeUpdate();
                    %>
                        <h2>Code successfully submitted</h2>
                    <%
                    }
                    catch(Exception e){ %>
                        <center><h3>Error : <%=e%></h3><br>Retry....</center>
                    <%}
                }
                else{
                  %>
                    <center><h3>Question or Code should not be empty or null.</h3></center>
             <% } 
             %>
        </form>
        <form action="index.jsp">
            <input type="submit" value="GO TO HOME PAGE"><br><br><br>
        </form>
        <br><br><br>

    <div class="footer">
        © 2024 pryog. All Rights Reserved. | 
        <a href="privacy.jsp">Privacy Policy</a> | 
        <a href="terms.jsp">Terms of Service</a>
    </div>
</body>
</html>
