<%-- 
    Document   : Download
    Created on : 20.sep.2017, 14:25:00
    Author     : hytta
--%>
<%--This page handels the Download aspect of modullevering.--%>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <h3>Last ned modul</h3> <!--Move the Download aspect too a java class.-->
        <form method="get" action="downloadServlet" enctype="multipart/form-data">
            <center>                 
                    <table border="0">  
                        <tr>
                            <td>Last ned submit_id </td> <!-- write the submit id, shitty solution -->
                            <td><input type="text" name="id" size="50"/></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="submit" value="Last ned">
                            </td>
                        </tr>
                    </table>               
            </center>
        </form>
    </body>
</html>

