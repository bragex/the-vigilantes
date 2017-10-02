<%-- 
    Document   : testingground
    Created on : 29-Sep-2017, 11:51:34
    Author     : Tonnes
--%>
<%--THIS PAGE IS ONLY FOR TESTING!--%>
<%@ page session="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Testingground</title>
    </head>
    <body>
        <!--Function for only showing part of the page for diffrent individuals.-->
        <% if (session.getAttribute("user") == null) { %>
            <!--if the user value is empty, this part of the code will show.-->
            <p>null (missing value)</p> 
        <% } else {%>
            <!--If the user value aren't empty, this part of the code will show.-->
            <%=session.getAttribute("user")%>
        <% } %>
        <!--Everyone can see this part of the code-->
        <p>Everyone can see me!</p>
    </body>
</html>
