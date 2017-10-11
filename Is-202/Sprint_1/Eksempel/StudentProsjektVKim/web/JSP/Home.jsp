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
                        "SELECT user_id, user_name, user_email FROM user");
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
        <div id="mathdiv1">                    
        <div id="tablediv1" class="divfrontpage">
            <table id="table01">
                <tr>
                    <th>Navn</th> <!--Implement database here!-->
                    <th>Blogg</th>
                    <th>E-post</th>
                    <th>Poengscore</th>
                    <th>M 1</th>
                    <th>M 2</th>
                    <th>M 3</th>
                    <th>M 4</th>
                    <th>M 5</th>
                    <th>M 6</th>
                    <th>M 7</th>
                    <th>M 8</th>
                    <th>M 9</th>
                    <th>M 10</th>
                    <th>M 11</th>
                    <th>M 12</th>
                    <th>M 13</th>
                    <th>M 14</th>
                    <th>M 15</th>
                </tr>
                <tr>
                    <td><a href="MinSide">Tønnes Røren</a></td>
                    <td><a href="http://home.uia.no/ttrore16/">Tonnes.blogg.no</a></td>
                    <td><a href="mailto:tonnes.mail@gmail.com">tonnes.mail@gmail.com</a></td>
                    <td><b><%=sumt%></b></td>
                    <td><%=tint1%></td>
                    <td><%=tint2%></td>
                    <td><%=tint3%></td>
                    <td><%=tint4%></td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                </tr>
                <tr>
                    <td><a href="profil2">Brannmann Sam</a></td>
                    <td><a href="blogg2">Samblogg.com</a></td>
                    <td><a href="mailto:brannSam.mann@gmail.com">brannSam.mann@gmail.com</a></td>
                    <td><b><%=sumb%></b></td>
                    <td><%=bint1%></td>
                    <td><%=bint2%></td>
                    <td><%=bint3%></td>
                    <td><%=bint4%></td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                </tr>
                <tr>
                    <td><a href="profil3">Byggmester Bob</a></td>
                    <td><a href="blogg3">Paalblogg.no</a></td>
                    <td><a href="mailto:byggmester.bob@gmail.com">byggmester.bob@gmail.com</a></td>
                    <td><b><%=summ%></b></td>
                    <td><%=mint1%></td>
                    <td><%=mint2%></td>
                    <td><%=mint3%></td>
                    <td><%=mint4%></td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>  
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                </tr>
                <tr id="avragetr">
                    <td></td> <!--Do not remove-->
                    <td></td> <!--Do not remove-->
                    <td>Gjennomsnitt</td>
                    <td><%=posum%></td>
                    <td><%=savg1%></td>
                    <td><%=savg2%></td>
                    <td><%=savg3%></td>
                    <td><%=savg4%></td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>
                    <td>osv</td>   
                    <td>osv</td>
                    <td>osv</td> 
                    <td>osv</td> 
                    <td>osv</td> 
                    <td>osv</td>
                </tr>
            </table>
        </div>
            <table border="1">
            <tbody>
                <tr>
                    <td>Bruker ID</td>
                    <td>Navn</td>
                    <td>Epost</td>
                </tr>
                <% while (users.next()) { %>
                <tr>
                    <td><%=users.getString("user_id") %></td>
                    <td><%=users.getString("user_name") %></td>
                    <td><%=users.getString("user_email") %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </body>
</html>

