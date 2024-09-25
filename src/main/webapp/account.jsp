<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background-color: #2c3e70;
        }
        .profile-container {
            background-color: #f8f9fa;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .account-icon {
            position: absolute;
            top: 20px;
            left: 20px;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            display: flex;
            align-items: center;
            justify-content: center;
            transition: background-color 0.3s ease;
        }
        .account-icon:hover {
            background-color: #f0f0f0;
        }
        .block{
            text-align: justify;
            text-align: center;
        }
    </style>
</head>

<body>
    <a href="account.jsp" class="account-icon">
        <i class="fas fa-user"></i>
    </a>
    <div class="container mt-5">
        <div class="text-center mb-4">
            <h1 class="text-white">PRYOG CODING PLATFORM</h1>
            <div class="nav justify-content-center">
                <a href="index.jsp" class="nav-link text-white">Home</a>
                <a href="about.jsp" class="nav-link text-white">About</a>
                <a href="contact.jsp" class="nav-link text-white">Contact</a>
                <a href="services.jsp" class="nav-link text-white">Services</a>
            </div>
        </div>

        <%
            String username = (String) session.getAttribute("username");
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
        <div class="profile-container p-4">
            <h2 class="text-center"><u><b>Profile Information</b></u></h2>
            <div class="text-center">
                <div class="block">
                <h5><b>Username: </b> <%= rs.getString("username") %></h5>
                <h6><b>Address: </b><%= rs.getString("address") %></h6>
                <h6><b>Email: </b><%= rs.getString("email") %></h6>
                <h6><b>Phone: </b><%= rs.getLong("mobile_no") %></h6>
                </div>
            </div>
            <div class="text-center mt-4">
                <a href="edit.jsp" class="btn btn-primary">Edit</a>
                <a href="delete.jsp"><button class="btn btn-danger">Delete</button></a>
            </div>
            <div class="text-center mt-4">
                <a href="log_out.jsp"><button class="btn btn-outline-danger">Log Out</button></a>
            </div>
            <div class="text-center mt-4">
                <a href="#" class="btn btn-link">LinkedIn</a>
                <a href="#" class="btn btn-link">GitHub</a>
                <a href="#" class="btn btn-link">Twitter</a>
            </div>
        </div>
        <%
                    } else {
        %>
        <div class="text-center text-danger">
            <h3>User not found</h3>
            <a href="login.jsp" class="btn btn-primary">Log In</a>
            <b>/</b>
            <a href="Sign_up.jsp" class="btn btn-secondary">Sign In</a>
        </div>
        <%
                    }
                } else {
        %>
        <div class="text-center text-danger">
            <h3>No user is logged in</h3>
            <a href="login.jsp" class="btn btn-primary">Log In</a>
            <a href="Sign_up.jsp" class="btn btn-secondary">Sign In</a>
        </div>
        <%
                }
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
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
