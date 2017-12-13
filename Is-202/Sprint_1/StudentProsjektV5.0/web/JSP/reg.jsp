<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrer ny bruker</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="Java.Tools" %>
<%
 /**
String user=request.getParameter("userid"); 
session.putValue("userid",user); 
* **/
            Class.forName("com.mysql.jdbc.Driver"); 
            String first;
            String last;
            String pass;
            String email;
            String status;
            first = request.getParameter("fname");
            last = request.getParameter("lname");
            pass = request.getParameter("pwd");
            email = request.getParameter("email");
            status = "Student";
            Tools dbTools = new Tools();
            dbTools.connect();
            dbTools.newUser(first, last, pass, email, status);
            
out.println("Registered"); 


%>
<a href ="Login.html">Login</a><br/><br/>
<a href="index.html">Home</a>
</body>
</html>