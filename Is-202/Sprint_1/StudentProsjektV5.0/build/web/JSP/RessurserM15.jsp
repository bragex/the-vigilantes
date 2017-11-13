<%-- 
    Document   : RessurserM15
    Created on : 24.okt.2017, 12:43:25
    Author     : jenny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <header>
            <jsp:include page="HeaderMenu.jsp"/>
    </header>
    <style>
                .button {
                background-color: lightgray;
                color: black; 
                border: 1px solid black;
                float: left;   
                cursor: not-allowed; 
            }
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modul 15</title>
    </head>
    <body>
        <h1>Modul 15</h1>
        <h2>Web-applikasjoner i Java<h2/>
        <form action="" method="post">
                    <button class="button button "onclick="alert('Modul skal godkjennes i samtale')">Lever Her</button>
        </form>
                <br>
                <h4><a href="Moduler">Oversikt over alle Moduler</a></h4>
                <p>Når vi skriver et program skriver vi dette i en Integrated Development Environment (IDE).<br>
                    Det finnes flere alternativer, Eclipse, Netbeans, IntelliJ m.fl. Vi skal bruke NetBeans.
                
                <h3>Oppgave:</h3>
                <ul><p>Installer Apache Tomcat (tomcat.apache.org) <br><br>
                        Opprett ett nytt web-application prosjekt. <br>
                        Lag minst en form, og en servlet som behandler den.</p>
                </ul>
                
                <h3>Godkjenning:</h3>
                <ul><p>Godkjennes av foreleser eller hjelpelærer i intervju</p></ul>
                
                <h3>Læringsmål:</h3>
                <ul> 
                    <p><b>Du har fullført modulen når du kan:</b></p>
                    <li>Kan lage servets som tar i mot data fra en form, og gjør noe fornuftig med dem.</li>
                    <li>Kan skrive servlets som (lager sider som) viser fram resultatet av bereginger/prosessering av data</li>
                    <li>Kan forklare hvordan en web-server håndterer requests (spørringer fra en browser),<br>
                        og hvordan du får opp en side i browseren som er laget av en servlet</li>
                    
                </ul>
                
                <h3>Ressurser:</h3>
                <ul> 
                    <li><b>NetBeans:</b></li>
                    <li style="list-style-type:none;"><a href="https://www.tutorialspoint.com/servlets/">Tutorial (web-kurs) i servlets på TutorialsPoint</a></li>
                    <li style="list-style-type:none;"><a href="https://www.javatpoint.com/servlet-tutorial">Alternativ tutorial (vi anbefaler å se på begge. De har litt forskjellig innfallsvinkel.</a></li>
                    <li style="list-style-type:none;"><a href="https://docs.oracle.com/javaee/6/tutorial/doc/bnafd.html">Den "offisielle" fra Oracle</a></li>
                    <li style="list-style-type:none;"><a href="https://www.javatpoint.com/creating-servlet-in-netbeans-ide">Servlets in NetBeans</a></li>
                    <li style="list-style-type:none;"><a href="https://www.w3schools.com/">w3schools.com</a></li>
                    <li style="list-style-type:none;"><a href="https://www.w3schools.com/html/default.asp">w3schools.com HTML</a></li>
                    <li style="list-style-type:none;"><a href="https://www.w3schools.com/css/default.asp">w3schools.com CSS</a></li>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/JCZiYbrVi44" frameborder="0" allowfullscreen></iframe>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/01mgc2rrr_o" frameborder="0" allowfullscreen></iframe>
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/Sj4p8IXZgCw" frameborder="0" allowfullscreen></iframe>
                    
                </ul>
      
    </body>
</html>
