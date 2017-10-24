<%-- 
    Document   : RessurserM13
    Created on : 24.okt.2017, 11:47:59
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
        <title>Modul 13</title>
    </head>
    <body>
        <h1>Modul 13</h1>
        <h2>Feilhåndtering<h2/>
        <form action="" method="post">
                    <button class="button button "onclick="alert('Modul skal godkjennes i samtale')">Lever Her</button>
        </form>
                <br>
                <h4><a href="Moduler">Oversikt over alle Moduler</a></h4>
                <p>Det oppstår før eller siden en feilsituasjon i nesten alle programmer. <br>
                    I denne modulen skal du lære hvordan du kan flagge at en feilsituasjon har oppstått,<br>
                    og hvordan du kan håndtere situasjonen.</p> 
                
                <h3>Oppgave:</h3>
                <ul><p>Bruk feilhåndtering for å håndtere feil kontrollert. Legg vekt på følgende:</p>
                    <li>Programmet ikke kræsjer, (nesten) uansett hva som skjer</li>
                    <li>Hvis det skjer en feil skal den fanges opp,<br>
                        og brukeren informeres med en melding som beskriver feilen på en måte som er relevant for brukeren.<br>
                        (f.eks. er det bedre å si at databasen er utilgjengelig, enn "ConnectException: Connection failed!)</li>
                </ul>
                
                <h3>Godkjenning:</h3>
                <ul><p>Godkjennes av foreleser eller hjelpelærer i intervju</p></ul>
                
                <h3>Læringsmål:</h3>
                <ul> 
                    <p><b>Du har fullført modulen når du kan:</b></p>
                    <li>Forklare begrepet defensiv programmering</li>
                    <li>Bruke vanlige teknikker for å rapportere feilsituasjoner</li>
                    <li>Bruke throw-setningen til å flagge feil, og try-catch-setningen til å håndtere feil i java programmer</li>
                    <li>Skrive programmer som bruker enkel filbehandling</li>
                    
                </ul>
                <h3>Ressurser:</h3>
                <ul> 
                    <li><b>Lærebok:</b></li>
                    <li style="list-style-type:none;"><b>Kapitel 12</b></li>
                    <li style="list-style-type:none;">David J. Barnes and Michael Kölling</li>
                    <li style="list-style-type:none;">Objects First With Java : a practical introduction using BlueJ, 5th edition, Pearson</li>
                    <li style="list-style-type:none;">ISBN: 978-0-13-283554-1</li>
                    <br>
                    <li><b>Prosjekter:</b></li>
                    <li style="list-style-type:none;">address-book-assert, maddress-book-io, address-book-junit, address-book-v1g,<br>
                        address-book-v1t, address-book-v2g, address-book-v2t, address-book-v3t, <br>
                        tech-support-io, tech-support-io-v7, weblog-analyzer, weblog-analyzer-v7</li>
                    <li style="list-style-type:none;">Du finner prosjektene på CDen i læreboka, eller de kan lastes ned <a href="https://www.bluej.org/objects-first/">HER</a> </li>
                    <br>
                    <li><b>Video fra forfatterne av læreboka:</b></li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/kDAyNFjsNwU" frameborder="0" allowfullscreen></iframe>            
                    <br>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/BwnIHAvzGz0" frameborder="0" allowfullscreen></iframe>
                
                </ul>
      
    </body>
</html>