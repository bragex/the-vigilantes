<%-- 
    Document   : Home
    Created on : 22-Sep-2017, 10:30:48
    Author     : Tonnes
--%>
<%@page import="javax.servlet.jsp.JspWriter"%>
<%--This is the main page of the site.--%>
<%--Depends on HeaderMenu.jsp--%>
<%@page import="java.sql.*"%>
<%@page import="Java.Tools"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> <!-- Restructure jsp Folders -->
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
        <%  
            String user = (String)session.getAttribute("user");
            Tools dbTools = new Tools(); 
            dbTools.User(user);
            dbTools.getUser();
            ResultSet users = dbTools.getUser();
            
        %>    
        
          <table border="1">
            <tbody>
                        <tr>
                    <td>Navn</td>
                    <td>Epost</td>
                    <td>Modul 1</td>
                    <td>Modul 2</td>
                    <td>Modul 3</td>
                    <td>Modul 4</td>
                    <td>Modul 5</td>
                </tr>
                <% while (users.next()) { %>
                <tr>
                    <td> <a href="MinSide"> <%=users.getString("user_fname") %> <%=users.getString("user_lname") %></a></td>
                    <td> <%=users.getString("user_email") %></td>
                    <td> <a href="RessurserM1"> <%=users.getString("user_m1") %></a></td>
                    <td> <%=users.getString("user_m2") %></td>
                    <td> <%=users.getString("user_m3") %></td>
                    <td> <%=users.getString("user_m4") %></td>
                    <td> <%=users.getString("user_m5") %></td>
                </tr>
                <% } %>        
            </tbody>
        </table>
            
        </div>
        <footer>
                <!--Upload code-->
                <jsp:include page="lagTilbakemelding.jsp"/>
        </footer>
    </body>
</html>
