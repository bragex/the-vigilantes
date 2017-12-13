<%-- 
    Document   : TilbakeMelding
    Created on : 22.sep.2017, 11:10:35
    Author     : by-cr
--%>
<%--This page shows the user the --%>
<%--Depends on HeaderMenu.jsp--%>
<%@page import="java.sql.*"%>
<%@page import="Java.Tools"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Tilbakemelding</title>
        <style>
            .pmargin {
                width: 300px;
                border: 2px solid black;
                padding: 15px; 
                margin: 10px;
            }
            .pdiv {
                margin-left: 10px;
            }
        </style>
    </head>
    <body>
        <h3>Tilbakemelding</h3>
        <%  
                    String user = (String)session.getAttribute("user");
                    String module = (String)session.getAttribute("modul");
                    Tools dbTools = new Tools();
                    dbTools.connect();
                    dbTools.feedbackQuery(module, user);
                    dbTools.getFeedback();
                    ResultSet feedbackResult = dbTools.getFeedback();
                %>
        <div class="pmargin">
            <div id="pdiv">
                <p>
                    <%
                    while (feedbackResult.next()) {
                    String content = feedbackResult.getString("feedback_content");
                    %>
                    
                    <%=content%>
                    
                    <%
                    }
                    %>
                </p>
            </div>
        </div>
    </body>
</html>


