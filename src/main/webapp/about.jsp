<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - pryog</title>
    <style>
        /* Reset some default styles */
        body, h1, h2, p, ul {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            line-height: 1.6;
        }

        body {
            background-color: #f4f4f4;
            color: #333;
            padding: 20px;
        }

        /* Header styles */
        header {
            background: #333;
            color: #fff;
            padding: 10px 0;
            text-align: center;
        }

        header h1 {
            margin: 0;
            font-size: 2.5em;
        }

        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }

        nav ul li {
            display: inline;
            margin-right: 20px;
        }

        nav ul li a {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
        }

        nav ul li a:hover {
            text-decoration: underline;
        }

        /* Main content styles */
        main {
            margin: 20px auto;
            max-width: 800px;
            background: #fff;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        main h2 {
            color: #333;
            font-size: 2em;
            margin-bottom: 10px;
            border-bottom: 2px solid #333;
            padding-bottom: 5px;
        }

        main p {
            margin: 10px 0;
            font-size: 1.1em;
        }

        .team-list {
            list-style-type: none;
            padding: 0;
            margin: 10px 0;
        }

        .team-list li {
            background: #f9f9f9;
            margin: 5px 0;
            padding: 10px;
            border-left: 5px solid #333;
        }

        /* Footer styles */
        footer {
            text-align: center;
            margin-top: 20px;
            padding: 10px;
            background: #333;
            color: #fff;
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
    <header>
        <h1>About Us</h1>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="contact.jsp">Contact</a></li>
            </ul>
        </nav>
    </header>
    
    <main>
        <section>
            <h2>Our Story</h2>
            <p>Welcome to pryog! We are a company dedicated to providing excellent services to our clients. Our journey began in 2024, and since then, we've grown to become a leader in IT industry.</p>
        </section>
        
        <section>
            <h2>Our Mission</h2>
            <p>Our mission is to deliver the highest quality of service to our customers, ensuring their satisfaction and trust in our platform.</p>
        </section>
        
        <section>
            <h2>Meet the Team</h2>
            <p>Our team is composed of experienced professionals who are passionate about what they do. Together, we strive to exceed expectations and drive innovation in our field.</p>
            <ul class="team-list">
                <%
                    List<String> teamMembers = Arrays.asList("Yogendra Prasad - CEO", "Sufiyan Ahmad - CTO", "Adesh Tiwari - CFO");
                    for (String member : teamMembers) {
                %>
                    <li><%= member %></li>
                <% 
                    } 
                %>
            </ul>
        </section>
    </main>

    <footer>
        <p>&copy; <%= java.time.Year.now() %> pryog. All rights reserved.</p>
    </footer>
</body>
</html>
