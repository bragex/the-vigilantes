<%-- 
    Document   : upload
    Created on : 20.sep.2017, 14:25:00
    Author     : hytta
--%>
<%--This page handels the upload aspect of modullevering.--%>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Levering</title>
        <style>
            body {
                font-family: Segoe UI;
            }
            table{
                left: 0;
                display: block;
                }
        </style>
    </head>
    <body>
        <h3>Lever modul</h3> <!--Move the upload aspect too a java class.-->
        <form method="post" action="uploadServlet" enctype="multipart/form-data">
            <center>                 
                    <table border="0">
                        <h3>et eller annet</h3>
                        <tr>
                            <td>File name: </td>
                            <td><input type="text" name="fileName" size="50"/></td>
                        </tr>
                        <tr>
                            <td>Portrait File: </td>
                            <td><input type="file" name="file" size="50"/></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="submit" value="Save">
                            </td>
                        </tr>
                    </table>               
            </center>
        </form>
    </body>
</html>

