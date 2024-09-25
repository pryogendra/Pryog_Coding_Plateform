<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Terms of Service</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        h2 {
            margin-top: 20px;
            color: #007BFF;
        }
        p {
            margin: 10px 0;
        }
        ul {
            margin: 10px 0;
            padding-left: 20px;
        }
        li {
            margin: 5px 0;
        }
    </style>
</head>
<body>
    <%
                String username = (String) session.getAttribute("username");
                session.setAttribute("username", username);
            %>

    <div class="container">
        <h1>Terms of Service</h1>

        <p>Welcome to <strong>pryog</strong>. By accessing or using our website, you agree to comply with and be bound by the following terms and conditions of use. Please read these terms carefully before using our website.</p>

        <h2>1. Acceptance of Terms</h2>
        <p>By accessing and using this website, you accept and agree to be bound by the terms and conditions of this agreement. If you do not agree to abide by the above, please do not use this service.</p>

        <h2>2. Modifications to the Terms of Service</h2>
        <p>We reserve the right to change or modify these terms at any time without prior notice. Your continued use of the website following any changes signifies your acceptance of the new terms.</p>

        <h2>3. Use of the Website</h2>
        <p>You agree to use the website only for lawful purposes and in a manner that does not infringe the rights of, or restrict or inhibit the use and enjoyment of the website by any third party. Prohibited behavior includes harassing or causing distress or inconvenience to any other user, transmitting obscene or offensive content, or disrupting the normal flow of dialogue within the website.</p>

        <h2>4. User Content</h2>
        <p>By submitting content to our website, you grant us a non-exclusive, royalty-free, worldwide license to use, modify, distribute, and display your content in connection with our services.</p>

        <h2>5. Intellectual Property</h2>
        <p>All content included on this site, such as text, graphics, logos, images, and software, is the property of <strong>Your Website Name</strong> or its content suppliers and is protected by international copyright laws.</p>

        <h2>6. Limitation of Liability</h2>
        <p>In no event will <strong>pryog</strong> be liable for any damages arising out of or in connection with the use or inability to use this website or its content, including but not limited to direct, indirect, incidental, punitive, and consequential damages.</p>

        <h2>7. Privacy Policy</h2>
        <p>Your use of the website is also subject to our Privacy Policy. Please review our Privacy Policy, which also governs the website and informs users of our data collection practices.</        </p>

        <h2>8. Governing Law</h2>
        <p>These terms and conditions are governed by and construed in accordance with the laws of [Your Country/State], and you hereby submit to the exclusive jurisdiction of the courts in that location.</p>

        <h2>9. Contact Information</h2>
        <p>If you have any questions about these Terms of Service, please contact us at <a href="mailto:pryogendra95449@.com">pryog@gmail.com</a>.</p>

        <p>Last updated: 21st Aug,2024.</p>
    </div>
</body>
</html>
