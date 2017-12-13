<%-- 
    Document   : Home
    Created on : 22-Sep-2017, 10:30:48
    Author     : Tonnes
--%>
<%@page import="javax.servlet.jsp.JspWriter"%>
<%--This is the main page of the site.--%>
<%--Depends on HeaderMenu.jsp--%>
<%@page import="java.sql.*"%>
<%@page import="Java.Tools"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%> <!-- Restructure jsp Folders -->
<!DOCTYPE html>
<html>
    <head>
        <title>Studentliste</title>
        <style>
            body {
                font-family: Segoe UI;
            }
            #table01 {
                width: 100%;
                margin-top: 1.5%;
            }
            tr,th,td,table {
                border: 1px solid black;
                border-collapse: collapse;
            }
            th {
                font-size: 1vw;
            }
            td {
                font-size: 1vw;
            }
            a:link {
                text-decoration: none;
                color: #4169E1; /* Royal Blue */
            }
            a:hover {
                text-decoration: none;
                color: #00BFFF; /* DeepSkyBlue */
            }
            #psum {
                text-align: center;
                font-size: 1.5vw;
                margin-top: 5px;
            }
            #avragetr {
                font-weight: bold;
            }
          
        </style>
    </head>
    <body>
        <header>
            <!--Menu code-->
              <jsp:include page="HeaderMenu.jsp"/>
            <!--Menu code-->
        </header>
            
    <center><h1>Studentliste</h1>
        <%  
            String user = (String)session.getAttribute("user");
            String bruker = (String)session.getAttribute("bruker");
            Tools dbTools = new Tools(); 
            dbTools.User(user);
            dbTools.getUser();
            ResultSet users = dbTools.getUser();
        %>    
        
          <table border="1">
            <tbody>
                <tr>
                    <td>Navn</td>
                    <td>Epost</td>
                    <td>Modul 1</td>
                    <td>Modul 2</td>
                    <td>Modul 3</td>
                    <td>Modul 4</td>
                    <td>Modul 5</td>
                </tr>
                <% while (users.next()) {
                String id = users.getString("user_id");
                String fnavn = users.getString("user_fname");
                String lnavn = users.getString("user_lname");
                String email = users.getString("user_email");
                String m1 = users.getString("user_m1");
                String m2 = users.getString("user_m2");
                String m3 = users.getString("user_m3");
                String m4 = users.getString("user_m4");
                String m5 = users.getString("user_m5");
                String farge1 = "PaleGreen";
                int f1 = Integer.valueOf(m1);
                if (f1<7)farge1="LightCoral";
                if (f1==0) farge1="LightGrey";
                String farge2 = "PaleGreen";
                int f2 = Integer.valueOf(m2);
                if (f2<7)farge2="LightCoral";
                if (f2==0) farge2="LightGrey";
                String farge3 = "PaleGreen";
                int f3 = Integer.valueOf(m3);
                if (f3<7)farge3="LightCoral";
                if (f3==0) farge3="LightGrey";
                String farge4 = "PaleGreen";
                int f4 = Integer.valueOf(m4);
                if (f4<7)farge4="LightCoral";
                if (f4==0) farge4="LightGrey";
                String farge5 = "PaleGreen";
                int f5 = Integer.valueOf(m5);
                if (f5<7)farge5="LightCoral";
                if (f5==0) farge5="LightGrey";
                %>
                <tr>
                    <td> <a href="MinSide?param=<%=id%>&param2=<%=fnavn%>&param3=<%=lnavn%>"> <%=fnavn%> <%=lnavn%></a></td>
                    <td> <a href="mailto:<%=email%>?Subject=IS-110" target="_top"><%=email%></a></td>
                    <td style="background-color:<%=farge1%>"> <a href="ModulLevering?modul=1"> <%if (user.equalsIgnoreCase(fnavn)||bruker.equals("Foreleser")||bruker.equals("Hjelpelaerer")){%><%=m1%><%}%></a></td>
                    <td style="background-color:<%=farge2%>"> <a href="ModulLevering?modul=2"> <%if (user.equalsIgnoreCase(fnavn)||bruker.equals("Foreleser")||bruker.equals("Hjelpelaerer")){%><%=m2%><%}%></a></td>
                    <td style="background-color:<%=farge3%>"> <a href="ModulLevering?modul=3"> <%if (user.equalsIgnoreCase(fnavn)||bruker.equals("Foreleser")||bruker.equals("Hjelpelaerer")){%><%=m3%><%}%></a></td>
                    <td style="background-color:<%=farge4%>"> <a href="ModulLevering?modul=4"> <%if (user.equalsIgnoreCase(fnavn)||bruker.equals("Foreleser")||bruker.equals("Hjelpelaerer")){%><%=m4%><%}%></a></td>
                    <td style="background-color:<%=farge5%>"> <a href="ModulLevering?modul=5"> <%if (user.equalsIgnoreCase(fnavn)||bruker.equals("Foreleser")||bruker.equals("Hjelpelaerer")){%><%=m5%><%}%></a></td>
                </tr>
                <%}%>        
            </tbody>
        </table>
            <br>
            <% 
            if (bruker.equals("Foreleser")||bruker.equals("Hjelpelaerer")){
            %>
                <p>Send mail til alle som ikke har fått godkjent modul </p>
            <form name="SendMail" action="SendEmail" method="POST">
                <select name="modul">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
                <br>
                <input type="submit" value="Hent adresser">
            </form>
                <%
                String m = (String)session.getAttribute("mailer");
                %>
                <a href="mailto:<%=m%>?Subject=IS-109/110" target="_top">Send epost</a>                  
            <br>
            <%}%>
            </center>
    </body>
</html>
