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
<%!
    int tint1 = 10; /*Bad way of doing things. Change me!*/
    int tint2 = 10;
    int tint3 = 10;
    int tint4 = 10;
    int bint1 = 10;
    int bint2 = 7;
    int bint3 = 8;
    int bint4 = 9;
    int mint1 = 9;
    int mint2 = 4;
    int mint3 = 7;
    int mint4 = 4;
    int sumt = tint1+tint2+tint3+tint4;
    int sumb = bint1+bint2+bint3+bint4;
    int summ = mint1+mint2+mint3+mint4;
    int savg1 = (tint1+bint1+mint1)/3;
    int savg2 = (tint2+bint2+mint2)/3;
    int savg3 = (tint3+bint3+mint3)/3;
    int savg4 = (tint4+bint4+mint4)/3;
    int posum = (sumt+sumb+summ)/3;
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Studentliste</title>
        <style>
            body {
                font-family: Segoe UI;
            }
            #table01 {
                width: 100%;
                margin-top: 1.5%;
            }
            tr,th,td,table {
                border: 1px solid black;
                border-collapse: collapse;
            }
            th {
                font-size: 1vw;
            }
            td {
                font-size: 1vw;
            }
            a:link {
                text-decoration: none;
                color: #4169E1; /* Royal Blue */
            }
            a:hover {
                text-decoration: none;
                color: #00BFFF; /* DeepSkyBlue */
            }
            #psum {
                text-align: center;
                font-size: 1.5vw;
                margin-top: 5px;
            }
            #avragetr {
                font-weight: bold;
            }
          
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
            String URL = "jdbc:mysql://localhost:3306/slit";
            String USERNAME = "root";
            String PASSWORD = "";
        
            Connection connection = null;
            PreparedStatement selectUsers= null;
            ResultSet resultSet = null;

            public User() {
            try {
                    connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                    selectUsers = connection.prepareStatement(
                        "SELECT user_fname, user_lname, user_email, m1_points, m2_points, m3_points, m4_points, m5_points FROM user, m1, m2, m3, m4, m5 where user.user_id  = m1.user_id and user.user_id = m2.user_id and user.user_id = m3.user_id and user.user_id = m4.user_id and user.user_id = m5.user_id;");
                       
/*
                       "SELECT user_fname, user_lname, user_email, m1_points, m2_points, m3_points, m4_points, m5_points" 
                        + "FROM user, m1, m2, m3, m4, m5" 
                        + "where user.user_id  = m1.user_id" 
                        + "and user.user_id = m2.user_id" 
                        + "and user.user_id = m3.user_id" 
                        + "and user.user_id = m4.user_id" 
                        + "and user.user_id = m5.user_id;");
*/
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
                    <td><a href="MinSide"> <%=users.getString("user_fname") %> <%=users.getString("user_lname") %></a></td>
                    <td><%=users.getString("user_email") %></td>
                    <td> <%=users.getString("m1_points") %></td>
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

