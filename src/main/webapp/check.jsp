<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
    </head>
    <body>
        <%
                String username = (String) session.getAttribute("username");
                session.setAttribute("username", username);
            %>
        <form action="user_sel.jsp">
        <h2>Select Language</h2>
        <input type="radio" name="chk" value="Python">Python<br>
        <input type="radio" name="chk" value="Java">Java<br>
        <input type="radio" name="chk" value="C++">C/CPP<br>
        <input type="radio" name="chk" value="JavScript">JavaScript<br>
        <input type="radio" name="chk" value="TypeScript">TypeScript<br>
        <input type="radio" name="chk" value="C#">C#<br>
        <input type="Submit" value="SUBMIT">
        </form>
    </body>
</html>
