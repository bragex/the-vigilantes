<%-- 
    Document   : insex
    Created on : 15.okt.2017, 12:02:03
    Author     : by-cr
--%>
<%@page import="java.sql.*"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data til DB</title>
    </head>
    <body onload="displayResults()">
        <h1>Sette data inn i DB</h1>
        <%!
            public class Insert {
            String URL = "jdbc:mysql://localhost:3306/slit";
            String USERNAME = "root";
            String PASSWORD = "";
        
            Connection connection = null;
            PreparedStatement insertUsers = null;
            ResultSet resultSet = null;

            public Insert() {
            try {
                    connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                    insertUsers = connection.prepareStatement(
                    "INSERT INTO user (user_fname, user_lname, user_email)"
                    + " VALUES (?, ?, ?)" );
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            public int setUsers (String first, String last, String email) {

                int result = 0;
                try {
                insertUsers.setString(1, first);
                insertUsers.setString(2, last);
                insertUsers.setString(3, email);
                result = insertUsers.executeUpdate();

                } catch (SQLException e) {
                    e.printStackTrace();
}
            
         return result;
}
        }
        %>
        
        <%
            int result = 0;
            // trenger if setning for ellers legger den in blank verdi når siden laster, nå legger den inn når submit knappen blir aktivert
            if (request.getParameter("submit") != null) { 
            String firstName = new String();
            String lastName = new String();
            String email = new String();
            
            if (request.getParameter("first")!= null) {
                firstName = request.getParameter("first");
            }
            
            if (request.getParameter("last")!= null) {
                lastName = request.getParameter("last");
            }
            
            if (request.getParameter("email")!= null) {
                lastName = request.getParameter("email");
            }
            
            
            Insert insert = new Insert();
            result= insert.setUsers(firstName, lastName, email);
            }
        %>
        <form name="myForm" action="index.jsp" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="first" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Last name</td>
                        <td><input type="text" name="last" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" size="50" /></td>
                    </tr>
                </tbody>
            </table>
            <input type="hidden" name="hidden" value="<%=result %>" />
            <input type="reset" value="Slett" name="slett" />
            <input type="submit" value="Enter" name="submit" />
        </form>
    </body>
    <script LANGUAGE="JavaScript"> 
        
                function displayResults()
                {
                if (document.myForm.hidden.value == 1) {
                    alert("Data Inserted");
                }
                }
              //-->  
            </script>
</html>