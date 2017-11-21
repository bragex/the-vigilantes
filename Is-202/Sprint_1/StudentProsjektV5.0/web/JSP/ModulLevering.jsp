<%-- 
    Document   : ModulLevering
    Created on : 22.sep.2017, 10:24:31
    Author     : jenny
--%>
<%--This page is for delivering the module.--%>

<%--Depends on upload.jsp--%>
<%--Depends on HeaderMenu.jsp--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Levering</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body {
                font-family: Segoe UI;
            }
            .form1 {
                border:1px black solid;
                margin-left:15px;
            }
            #lmål1 {
                margin-left:24px;
                font-size:15px;
            }
            .alevering {
                text-decoration:none;
            }
            .alevering:hover {
                color:#4169E1;
            }
            #p1 {
                margin-left:10px;
                margin-bottom:-3px;
                margin-top:-5px;
            }
            #Modulh21 {
                margin: 0cm; 
                /*padding-right: -200px; Test this part. (Margin error.)*/  
           
        }    
        </style>
    </head>
    <body>
        <header>
            <jsp:include page="HeaderMenu.jsp"/>
        </header>
        <div>
            <h1 class="Modulh21">Modul <%=session.getAttribute("modul")%></h1>           
            <a href="Moduler">
                <h4 id="p1">Oversikt over alle Moduler</h4>
            </a>
            <div id="lmål1">
            <p><a id="alevering" href="RessurserM<%=session.getAttribute("modul")%>">Se her for læringsmål Modul <%=session.getAttribute("modul")%></a></p>
            </div>
            <footer>
                <!--Upload code-->
                 <%
                String bruker = (String)session.getAttribute("bruker");
                if (bruker.equals("Student")){
                %>
                <jsp:include page="upload.jsp"/>
                <%}%>
                <!--Upload code-->
                <jsp:include page="Download.jsp"/>
                <!-- Lag en tilbakemelding -->
                <%
                if (bruker.equals("Foreleser")||bruker.equals("Hjelpelaerer")){
                %>
                <jsp:include page="lagTilbakemelding.jsp"/>
                <%}%>
            </footer>
        </div>
    </body>
</html>