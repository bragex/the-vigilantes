<%-- 
    Document   : success
    Created on : 06.nov.2017, 11:03:26
    Author     : vegar
--%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Success</title>
</head>
<body>
    <h1>Congratulations!</h1>

    <p>You have successfully logged in.</p>

    <p>Your name is: <bean:write name="LoginForm" property="name" />.</p>

    <p>Your email address is: <bean:write name="LoginForm" property="email" />.</p>
</body>
</html>
