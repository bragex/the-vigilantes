<%-- 
    Document   : login
    Created on : 03.nov.2017, 11:18:46
    Author     : vegar
--%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="stylesheet.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logg inn</title>
    </head>
    <body>
        <h1>Logg inn</h1>
       <html:form action="/login">
    <table border="0">
        <tbody>
            <tr>
                <td colspan="2">
                    <bean:write name="LoginForm" property="error" filter="false"/>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>Navn</td>
                <td><html:text property="name" /></td>
            </tr>
            <tr>
                <td>Epost</td>
                <td><html:text property="email" /></td>
            </tr>
            <tr>
                <td></td>
                <td><html:submit value="Login" /></td>
            </tr>
        </tbody>
    </table>
</html:form>
        
    </body>
</html>
