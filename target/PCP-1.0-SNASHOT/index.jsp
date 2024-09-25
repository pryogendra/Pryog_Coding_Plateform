<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <style>

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

            .container {
                width: 80%;
                margin: 0 auto;
                text-align: center;
                padding: 50px;
                background-color: #2c3e50;
                box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
                border-radius: 10px;
                margin-top: 20px;
                margin-bottom: 20px;
            }

            h2 {
                color: #4a90e2;
                margin-bottom: 20px;
                font-size: 36px;
                text-transform: uppercase;
                letter-spacing: 2px;
            }

            img {
                margin-bottom: 20px;
                border-radius: 50%;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
            }

            .button-container {
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
                gap: 20px;
                margin-top: 30px;
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

        </style>
        <link href="static/bootstrap.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="static/blocks.css">
        <link href="static/style.css" rel="stylesheet">
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
            <section class="bg-secondary pb-5 position-relative poster pt-5 text-white-50">
                <div class="bottom-0 end-0 position-absolute start-0 top-0" 
                     style="background-image: linear-gradient(180deg, rgba(16, 33, 142, 0.6) 0%, rgba(0, 0, 0, 0.5) 50%);">                    
                </div>
                    <div class="justify-content-center pb-5 pt-5 row text-center">
                        <div class="col-md-10 col-xl-7 pb-5 pt-5">
                            <p class="fs-5 mb-2 text-white">September 21th and 22th, 2024</p>
                            <h1 class="display-1 fw-bold text-capitalize text-white">We love code...</h1>
                            <h2 class="display-6 fw-bold mb-4 text-white">Connect - Discover - Build</h2>
                        </div>
                    </div>
            </section>

        <div class="container">
            <img src="Images/pryog_logo.png" alt="Description of Image" width="100" height="100">
            <h2>WELCOME</h2>
            <div class="button-container">
                <form action="python.jsp" method="post">
                    <button type="submit">Python</button>
                </form>
                <form action="java.jsp" method="post">
                    <button type="submit">Java</button>
                </form>
                <form action="c_cpp.jsp" method="post">
                    <button type="submit">C/C++</button>
                </form>
                <form action="javascript.jsp" method="post">
                    <button type="submit">JavaScript</button>
                </form>
                <form action="c_sharp.jsp" method="post">
                    <button type="submit">C#</button>
                </form>
                <form action="typescript.jsp" method="post">
                    <button type="submit">TypeScript</button>
                </form>
            </div><br><br>
            <div>
                <form action="solved_questions.jsp" method="post">
                    <button type="submit">Solved Questions</button>
                </form>
            </div>
            <br><br>
            <div>
                <form action="tutorial.jsp" method="post">
                    <button type="submit">Examples</button>
                </form>
            </div>
        </div>

        <div class="footer">
            © 2024 pryog. All Rights Reserved. | 
            <a href="privacy.jsp">Privacy Policy</a> | 
            <a href="terms.jsp">Terms of Service</a>
        </div>
        <script src="assets/js/popper.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>

    </body>
</html>
