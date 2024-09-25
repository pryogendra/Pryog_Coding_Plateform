<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Select Question</title>
    <script type="text/javascript">
        function showTextBox() {
            var dropdown = document.getElementById("question");
            var selectedValue = dropdown.value;
            
            if (selectedValue !== "none") {
                document.getElementById("textboxContainer").style.display = "block";
            } else {
                document.getElementById("textboxContainer").style.display = "none";
            }
        }
    </script>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #2c3e70;
            margin: 0;
            padding: 0;
            color: #333;
        }

        h2 {
            text-align: center;
            color: #333;
            font-size: 2em;
            margin-bottom: 20px;
        }

        .container {
            width: 80%;
            max-width: 700px;
            margin: 40px auto;
            padding: 20px;
            background-color: #2c3e50;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border: 1px solid #ddd;
            transition: box-shadow 0.3s ease, border-color 0.3s ease;
        }

        .container:hover {
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
            border-color: #ccc;
        }

        label {
            font-size: 18px;
            color: #555;
            display: block;
            margin-bottom: 10px;
        }

        select {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
            background: gray;
            transition: border-color 0.3s ease;
        }

        select:focus {
            border-color: #4CAF50;
            outline: none;
            background:gray;
        }

        textarea {
            width: 100%;
            height: 200px;
            box-sizing: border-box;
            padding: 12px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 6px;
            background: gray;
            resize: vertical;
            transition: border-color 0.3s ease;
        }

        textarea:focus {
            border-color: #4CAF50;
            outline: none;
            background: #fff;
        }

        .textbox-container {
            display: none;
            margin-top: 20px;
        }

        input[type='submit'] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 24px;
            border: none;
            border-radius: 6px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        input[type='submit']:hover {
            background-color: #45a049;
            transform: scale(1.02);
        }

        input[type='submit']:active {
            background-color: #388e3c;
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
    <div class="container">
        <h2>Select a Question</h2>
        <form action="submitcode.jsp" method="post">
            <label for="question">Choose a question:</label>
            <select id="question" name="question" onchange="showTextBox()">
                <option value="">Select a question</option>
                <%
                    try
                    {
                        Class.forName("org.mariadb.jdbc.Driver");
                        Connection conn=DriverManager.getConnection("jdbc:mariadb://localhost:3306/PCP","root","1234");
                        Statement stmt=conn.createStatement();
                        ResultSet rs= stmt.executeQuery("select java_tasks from tasks where java_tasks is not null");
                        while (rs.next()){
                        %>
                            <option value="<%=rs.getString("java_tasks")%>"><%=rs.getString("java_tasks")%></option>
                        <%
                            
                        }
                            conn.close();
                    }
                    catch(Exception e){
                        out.println(e);
                    }
                %>
            </select>
            <div id="textboxContainer" class="textbox-container">
                <textarea id="textbox" name="textbox_java" placeholder="Type your code here..."></textarea><br><br>
            </div>
            <input type='submit' value='SUBMIT CODE'>
        </form>
    </div>
    <div class="footer">
            © 2024 pryog. All Rights Reserved. | 
            <a href="privacy.jsp">Privacy Policy</a> | 
            <a href="terms.jsp">Terms of Service</a>
        </div>
</body>
</html>
