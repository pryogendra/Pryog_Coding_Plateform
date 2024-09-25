<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.SQLException, java.sql.Statement, java.sql.SQLIntegrityConstraintViolationException" %>
<%@ page import="java.util.logging.Level, java.util.logging.Logger" %>

<%
    response.setContentType("text/html");
    if (request.getParameter("var").equals("Yes"))
    {
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/PCP", "root", "1234");
            Statement stmt = con.createStatement();
            PreparedStatement ps = con.prepareStatement("update users set varified='Varified'");
            ps.executeUpdate();
            out.println("<center><h2>Your account updated......<br><br>"
            + "<a href='account.jsp'>BACK</a></h2></center>");
        } catch (Exception se) {
            out.println(se);
        }
    }
%>
