<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Coding Services</title>
    <style>
        /* Basic Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            background-color: #2c3e70;
        }

        header {
            background-color: #34495e;
            color: #fff;
            padding: 1rem 0;
            text-align: center;
        }

        header h1 {
            margin-bottom: 0.5rem;
        }

        nav ul {
            list-style: none;
            padding: 0;
        }

        nav ul li {
            display: inline;
            margin: 0 1rem;
        }

        nav ul li a {
            color: #fff;
            text-decoration: none;
        }

        main {
            padding: 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }

        .intro {
            margin-bottom: 2rem;
        }

        .services {
            display: flex;
            flex-wrap: wrap;
            gap: 2rem;
        }

        .service {
            background: #357ab7;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 1.5rem;
            flex: 1 1 calc(50% - 2rem);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .service h3 {
            margin-bottom: 1rem;
        }

        footer {
            background-color: #34495e;
            color: #fff;
            text-align: center;
            padding: 1rem 0;
            width: 100%;
            bottom: 0;
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
    <a href="account.jsp" class="account-icon">
                  <i class="fas fa-user"></i>
    </a>
    <%
                String username = (String) session.getAttribute("username");
                session.setAttribute("username", username);
            %>

    <header>
        <h1>PRYOG CODING PLATFORM</h1>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="services.jsp">Services</a></li>
                <li><a href="about.jsp">About Us</a></li>
                <li><a href="contact.jsp">Contact</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section class="intro">
            <h2>Our Services</h2>
            <p>At our platform, we offer a variety of services to help you achieve your development goals. From custom coding solutions to comprehensive training, we have something for everyone.</p>
        </section>

        <section class="services">
            <div class="service">
                <h3>Custom Software Development</h3>
                <p>We provide tailored software solutions to meet your unique business needs. Our team of experts will work with you to create software that drives your success.</p>
            </div>
            <div class="service">
                <h3>Web Development</h3>
                <p>Build stunning and functional websites with our web development services. Whether you need a simple landing page or a complex web application, we have you covered.</p>
            </div>
            <div class="service">
                <h3>Mobile App Development</h3>
                <p>Our mobile app development services ensure that your app is optimized for performance and usability on both iOS and Android platforms.</p>
            </div>
            <div class="service">
                <h3>Consulting and Training</h3>
                <p>Enhance your team's skills with our expert consulting and training sessions. We offer workshops and one-on-one coaching to help you stay ahead in the tech industry.</p>
            </div>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 pryog. All rights reserved.</p>
    </footer>
</body>
</html>
