<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    response.setContentType("text/html");
    PrintWriter pw = response.getWriter();
    String username = request.getParameter("user");
    String password = request.getParameter("pass");

    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    
    //if (username.equals("admin") && (password.equals("admin"))){
    //    RequestDispatcher rd1=request.getRequestDispatcher("check.jsp");
    //    rd1.forward(request,response);
    //}
    //else{
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/PCP", "root", "1234");
            stmt = con.createStatement();
            rs = stmt.executeQuery("SELECT username, password FROM users");

            boolean isValidUser = false;
            while (rs.next()) {
                if (username.equals(rs.getString("username")) && password.equals(rs.getString("password"))) {
                    isValidUser = true;
                    break;
                }
            }

            if (isValidUser) {
                session.setAttribute("username", username);
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.include(request, response);
            } else {
                pw.println("<h2><font color='red'><center>Username or Password is invalid...!!</center></font></h2>");
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.include(request, response);
            }
        } catch (ClassNotFoundException | SQLException e) {
            pw.println("<h2>Error: " + e.getMessage() + "</h2>");
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                pw.println("<h2>Error closing resources: " + e.getMessage() + "</h2>");
            }
        }
   // }
%>
