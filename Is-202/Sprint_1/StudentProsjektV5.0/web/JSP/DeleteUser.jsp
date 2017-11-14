<%-- 
    Document   : index
    Created on : 19.okt.2017, 09:20:39
    Author     : by-cr
--%>
<%@page import="Java.Tools"%>
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
        <header>
            <jsp:include page="HeaderMenu.jsp"/>
        </header>
        <h1>Slett bruker</h1>
        

        <%
         
            
            Tools dbTools = new Tools();
            dbTools.connect();
            dbTools.Delete();
            ResultSet deletes = dbTools.getUserDel();
            
        %>
        <form name="myForm" action="Delete">
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
            <input type="submit" value="Submit" name="submit" />
        </form>
    </body>
</html>