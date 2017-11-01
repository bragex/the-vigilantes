<%-- 
    Document   : Home
    Created on : 22.okt.2017, 14:28:52
    Author     : by-cr
--%>
<%--This is the main page of the site.--%>
<%--Depends on HeaderMenu.jsp--%>
<%@page import="java.sql.*"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> <!-- Restructure jsp Folders -->
<!DOCTYPE html>
<%-- Slett --%>
<html>
    <head>
        <title>Studentliste</title>
        <style>
           
          
        </style>
    </head>
    <body>
        <header>
            <!--Menu code-->
              <jsp:include page="HeaderMenu.jsp"/>
            <!--Menu code-->
        </header>
            <%!
        public class User {
            String URL = "jdbc:mysql://localhost:3306/SLIT";
            String USERNAME = "root";
            String PASSWORD = "Warstar123";
            

            
        
            Connection connection = null;
            PreparedStatement selectUsers= null;
            ResultSet resultSet = null;

            public User() {
            try {
                    connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                    selectUsers = connection.prepareStatement(
                      /*  "SELECT user_fname, user_lname, user_email, m1_points, m2_points, m3_points, m4_points, m5_points FROM user, m1, m2, m3, m4, m5 where user.user_id  = m1.user_id and user.user_id = m2.user_id and user.user_id = m3.user_id and user.user_id = m4.user_id and user.user_id = m5.user_id;"); */
                       

                       " SELECT user_fname, user_lname, user_email, m1_points, m2_points, m3_points, m4_points, m5_points " +
                         " FROM user, m1, m2, m3, m4, m5 " +
                         " where user.user_id  = m1.user_id " +
                         " and user.user_id = m2.user_id " +
                         " and user.user_id = m3.user_id " +
                         " and user.user_id = m4.user_id " +
                         " and user.user_id = m5.user_id; ");

                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            
            public ResultSet getUser(){
            try {
                resultSet = selectUsers.executeQuery();
                    
                } catch (SQLException e) {
                    e.printStackTrace();
                }

                return resultSet;
}
        }
        %>
        
        <%
            User user = new User();
            ResultSet users = user.getUser();
        %>
        
        <table border="1">
            <tbody>
                <tr>
                    <td>Navn</td>
                    <td>Epost</td>
                    <td>Module 1</td>
                    <td>Module 2</td>
                    <td>Module 3</td>
                    <td>Module 4</td>
                    <td>Module 5</td>
                </tr>
                <% while (users.next()) { %>
                <tr>
                    <td> <a href="MinSide"> <%=users.getString("user_fname") %> <%=users.getString("user_lname") %></a></td>
                    <td> <%=users.getString("user_email") %></td>
                    <td> <a href="RessurserM1"> <%=users.getString("m1_points") %></a></td>
                    <td> <%=users.getString("m2_points") %></td>
                    <td> <%=users.getString("m3_points") %></td>
                    <td> <%=users.getString("m4_points") %></td>
                    <td> <%=users.getString("m5_points") %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
            
        </div>
    </body>
</html>

