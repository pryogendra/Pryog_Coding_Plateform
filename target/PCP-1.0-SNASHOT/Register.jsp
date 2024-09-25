<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.SQLException, java.sql.Statement, java.sql.SQLIntegrityConstraintViolationException" %>
<%@ page import="java.util.logging.Level, java.util.logging.Logger" %>

<%
    response.setContentType("text/html");
    String username = request.getParameter("user");
    String password = request.getParameter("pass");
    String email = request.getParameter("email");
    long mobile = Long.parseLong(request.getParameter("mobile_no"));
    String address = request.getParameter("address");

    try {
        Class.forName("org.mariadb.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/PCP", "root", "1234");
        Statement stmt = con.createStatement();
        PreparedStatement ps = con.prepareStatement("INSERT INTO users VALUES(?,?,?,?,?)");
        ps.setString(1, username);
        ps.setString(2, password);
        ps.setString(3, email);
        ps.setLong(4,mobile );
        ps.setString(5, address);
        ps.executeUpdate();

        RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
        out.println("<h3><font color='blue' size='10px'><center>Registration successful....</center></font></h3>");
        rd.forward(request, response);
    } catch (SQLIntegrityConstraintViolationException ce) {
        out.println("<font color='red' size='10px'><center>Username already exists</center></font>");
        RequestDispatcher rd = request.getRequestDispatcher("Sign_up.jsp");
        rd.include(request, response);
    } catch (SQLException se) {
        out.println(se);
    } catch (ClassNotFoundException ex) {
        Logger.getLogger("login.html").log(Level.SEVERE, null, ex);
    }
%>
