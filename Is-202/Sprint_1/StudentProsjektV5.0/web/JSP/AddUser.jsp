<%-- 
    Document   : insex
    Created on : 15.okt.2017, 12:02:03
    Author     : by-cr
    Kan legge tile en bruker i databasen
--%>
<%@page import="java.sql.*"%>
<%@page import="Java.Tools"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data til DB</title>
        <style>
            body {
                font-family: Segoe UI;
                text-align: center;
                margin: auto;
            }
            p {
                display: inline;
                margin-right: 1%;
            }
            .InputMain {
                display: inline;
            }
            table.center {
                margin-left:auto; 
                margin-right:auto;
                
            }
            h2 {
                
            }
            
            
            </style>
    </head>
    <body
        <header>
            <jsp:include page="HeaderMenu.jsp"/>
        </header>
        <h1>Legg til bruker i databasen</h1>
    
        
        <form name="myForm" action="Add" method="POST">
            <table class="center">
                <tbody>
                    <tr>
                        <td>Fornavn</td>
                        <td><input type="text" name="first" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Etternavn</td>
                        <td><input type="text" name="last" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Passord</td>
                        <td><input type="text" name="password" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Epost</td>
                        <td><input type="text" name="email" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Status</td>
                        <td><select name="status">
                            <option value="Student">Student</option>
                            <option value="Foreleser">Foreleser</option>
                            <option value="Hjelpelaerer">Hjelpelærer</option>
                            </select></td>
                    </tr>
                </tbody>
            </table>
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
