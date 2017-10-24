<%-- 
    Document   : index
    Created on : 19.okt.2017, 09:20:39
    Author     : by-cr
--%>

<%@page import="java.sql.*"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Slett bruker</title>
        <style>
            body {
                font-family: Segoe UI;
                text-align: center;
                margin: auto;
            }
            
            table.center {
                margin-left:auto; 
                margin-right:auto;
                
            }
        </style>
    </head>
    <body onload="displayResults()">
        <h1>Slett bruker</h1>
        <%!
            public class Delete {

                String URL = "jdbc:mysql://localhost:3306/slit";
                String USERNAME = "root";
                String PASSWORD = "";

                Connection connection = null;
                PreparedStatement selectUser = null;
                PreparedStatement deleteUser = null;
                ResultSet resultSet = null;

                public Delete() {
                    try {
                        connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);

                        selectUser = connection.prepareStatement(
                                "SELECT user_id, user_fname, user_lname FROM user");

                        deleteUser = connection.prepareStatement(
                                "DELETE FROM user WHERE user_id = ?");
                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                }

                public ResultSet getUser() {

                    try {
                        resultSet = selectUser.executeQuery();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }

                    return resultSet;
                }

                public int deleteUser(Integer id) {
                    int result = 0;

                    try {
                        deleteUser.setInt(1, id);
                        result = deleteUser.executeUpdate();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                    return result;
                }

            }
        %>

        <%
            int result = 0;

            Delete delete = new Delete();
            ResultSet deletes = delete.getUser();

            Integer userId = new Integer(0);

            if (request.getParameter("submit") != null) {
                userId = Integer.parseInt(request.getParameter("delete"));
                result = delete.deleteUser(userId);
            }
        %>
        <form name="myForm" action="index.jsp">
            <table class="center">

                <tbody>
                    <tr>
                        <td>Bruker navn</td>
                        <td>
                            <select name="delete">
                                <% while (deletes.next()) {%>
                                <option value="<%= deletes.getInt("user_id")%>" ><%= deletes.getString("user_fname")%> <%= deletes.getString("user_lname")%></option>
                                <% }%>
                            </select>
                        </td>
                    </tr>
                </tbody>
            </table>
            <input type="hidden" name="hidden" value="<%=result %>" />               
            <input type="submit" value="Submit" name="submit" />
        </form>
            <script LANGUAGE="JavaScript"> 
        
                function displayResults()
                {
                if (document.myForm.hidden.value == 1) {
                    alert("Data Deleted");
                }
                }
              //-->  
            </script>
    </body>
</html>