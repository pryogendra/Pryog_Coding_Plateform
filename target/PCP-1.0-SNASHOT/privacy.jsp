<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Privacy Policy</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            line-height: 1.6;
        }
        h1 {
            color: #333;
        }
        h2 {
            color: #555;
        }
        p {
            margin: 15px 0;
        }
        ul {
            list-style-type: disc;
            margin-left: 20px;
        }
    </style>
</head>
<body>
    <%
                String username = (String) session.getAttribute("username");
                session.setAttribute("username", username);
            %>

    <h1>Privacy Policy</h1>
    <p>Last updated: <%= new java.util.Date() %></p>

    <p>Your privacy is important to us. This privacy policy explains the types of personal information we collect, how we use it, and how we protect your information.</p>

    <h2>1. Information We Collect</h2>
    <p>We may collect the following types of information:</p>
    <ul>
        <li><strong>Personal Information:</strong> This includes your name, email address, phone number, and other similar details that you provide when you sign up or contact us.</li>
        <li><strong>Usage Data:</strong> Information on how our website is accessed and used, such as IP addresses, browser type, pages visited, and time spent on the site.</li>
        <li><strong>Cookies and Tracking Technologies:</strong> We may use cookies and similar technologies to enhance your experience on our website and gather information about your usage patterns.</li>
    </ul>

    <h2>2. How We Use Your Information</h2>
    <p>We use your information to:</p>
    <ul>
        <li>Provide and maintain our services.</li>
        <li>Respond to your inquiries and provide customer support.</li>
        <li>Analyze how our website is used to improve its performance and user experience.</li>
        <li>Send you promotional content, updates, and offers that may interest you (you can opt out at any time).</li>
    </ul>

    <h2>3. Sharing Your Information</h2>
    <p>We do not share your personal information with third parties except in the following cases:</p>
    <ul>
        <li>When we have your consent to do so.</li>
        <li>To comply with legal obligations, such as responding to court orders or other legal processes.</li>
        <li>To protect the rights, property, or safety of our company, our users, or the public.</li>
        <li>With third-party service providers who assist us in operating our website and business (e.g., hosting providers, analytics services).</li>
    </ul>

    <h2>4. Security of Your Information</h2>
    <p>We take the security of your information seriously and use reasonable measures to protect it from unauthorized access, disclosure, alteration, or destruction. However, no method of transmission over the internet or method of electronic storage is completely secure, so we cannot guarantee absolute security.</p>

    <h2>5. Your Rights</h2>
    <p>You have the right to:</p>
    <ul>
        <li>Access and receive a copy of your personal information.</li>
        <li>Correct or update any inaccurate or incomplete information.</li>
        <li>Request the deletion of your personal information.</li>
        <li>Opt out of receiving promotional communications.</li>
    </ul>

    <h2>6. Changes to This Privacy Policy</h2>
    <p>We may update this privacy policy from time to time. We will notify you of any significant changes by posting the new privacy policy on this page and updating the "Last updated" date above.</p>

    <h2>7. Contact Us</h2>
    <p>If you have any questions about this privacy policy or our privacy practices, please contact us at:</p>
    <p>Email: pryog@gmail.com</p>
    <p>Address: 123 Star Hotel, Mumbai, India</p>
</body>
</html>
