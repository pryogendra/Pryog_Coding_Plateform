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
        PreparedStatement ps = con.prepareStatement("update users set password=?,email=?,mobile_no=?,address=? where username=?");
        ps.setString(1, password);
        ps.setString(2, email);
        ps.setLong(3,mobile );
        ps.setString(4, address);
        ps.setString(5, username);
        ps.executeUpdate();
        out.println("<center><h2>Your account updated......<br><br>"
        + "<a href='account.jsp'>BACK</a></h2></center>");
    } catch (Exception se) {
        out.println(se);
    }
%>
