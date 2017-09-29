<%-- 
    Document   : testingground
    Created on : 29-Sep-2017, 11:51:34
    Author     : Tonnes
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% 
   String username = (String)request.getAttribute("uname"); /*first1.java servlet class*/
   out.println(username); /*TESTING https://stackoverflow.com/questions/18992557/passing-string-variable-from-servlet-to-jsp*/
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test="${username == 'admin'}">  
            <p>see me?</p>
        </c:if>
        <h1>Hello World!</h1>
    </body>
</html>
