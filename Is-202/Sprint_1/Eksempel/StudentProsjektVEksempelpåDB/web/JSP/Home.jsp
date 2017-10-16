<%-- 
    Document   : Home
    Created on : 22-Sep-2017, 10:30:48
    Author     : Tonnes
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
                        "SELECT user_fname, user_lname, user_email FROM user");
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
            <table border="1">
            <tbody>
                <tr>
                    <td>Navn</td>
                    <td>Epost</td>
                    <td>Blogg</td>
                </tr>
                <% while (users.next()) { %>
                <tr>
                    <td><a href="MinSide"> <%=users.getString("user_fname") %> <%=users.getString("user_lname") %></a></td>
                    <td><%=users.getString("user_email") %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </body>
</html>

