<%-- 
    Document   : sok

    Author     : Tonnes
--%>
<%@page import="java.sql.*"%>
<%@page import="Java.Tools"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Søk</title>
        <style>
            body {
                font-family: Segoe UI;
            }
            table, th, td {
                border: solid black 1px;
            }
        </style>
    </head>
    <body>
        <header>
            <jsp:include page="HeaderMenu.jsp"/>
        </header>
        <h1>Søk</h1>
        <h4>Søk etter personer i databasen</h4>
        <form action="sok" method="post">
            <select name="optioninput">
                <option value="user_id">ID</option>
                <option value="user_fname">Fornavn</option>
                <option value="user_lname">Etternavn</option>
                <option value="user_email">Email</option>
            </select>
            <input type="search" name="inputnavninput">
        </form>
        <br>
        <table id="soktable">
            <tr>
                <th>ID</th><th>Fornavn</th><th>Etternavn</th><th>Email</th>
            </tr>
                    <%  
                        String inputnavn = (String)request.getParameter("inputnavninput");
                        String inputoption = (String)request.getParameter("optioninput");
                        
                        //Burde bruke tools klassen
                        java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/slit", "root", "root");
                        
                        String query = "SELECT * FROM user WHERE " + inputoption + " = '" + inputnavn + "' ";
                        Statement stmt = conn.createStatement();
                        if (inputnavn != null) {
                            try {
                                ResultSet rs = stmt.executeQuery(query); 
                                while (rs.next()) {
                                    String id = rs.getString("user_id");
                                    String fnavn = rs.getString("user_fname");
                                    String lnavn = rs.getString("user_lname");
                                    String email = rs.getString("user_email");
                                    out.print("<tr><td>" + id + "</td><td>" + fnavn + "</td><td>" + lnavn + "</td><td>" + email + "</td></tr>");
                                }
                            }
                            finally {
                               stmt.close();
                            }        
                        }
                        else {
                            //Ingenting
                        }
                        /*Debugging
                        out.println("Debug");
                        out.println(inputoption+"\n");
                        out.println(inputnavn+"\n");
                        out.println(query);*/
                        
                    %>
        </table>
    </body>
</html>
