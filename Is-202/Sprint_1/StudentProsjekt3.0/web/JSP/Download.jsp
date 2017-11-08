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
        <h3>Lever modul</h3> <!--Move the Download aspect too a java class.-->
        <form method="post" action="downloadServlet" enctype="multipart/form-data">
            <center>                 
                    <table border="0">
                        
                        <tr>
                            <td colspan="2">
                                <input type="submit" value="Download">
                            </td>
                        </tr>
                    </table>               
            </center>
        </form>
    </body>
</html>

