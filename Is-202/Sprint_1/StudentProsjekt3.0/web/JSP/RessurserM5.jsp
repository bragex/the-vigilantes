<%-- 
    Document   : RessurserM5
    Created on : 19.okt.2017, 10:30:41
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
        <title>Modul 5</title>
    </head>
    <body>
        <h1>Modul 5</h1>
        <h2>Designprosessen<h2/>
        <form action="" method="post">
                    <button class="button button "onclick="alert('Modul skal godkjennes i samtale')">Lever Her</button>
        </form>
                <br>
                <h4><a href="Moduler">Oversikt over alle Moduler</a></h4>
                <p>Det er ikke så vanskelig å lære språket java. Du kan pugge det meste.<br>
                    Det som er vanskelig er å finne ut hvilke klasser du trenger, og hvilke felt og metoder disse klassene skal ha.<br> 
                    I denne modulen skal du lære en teknikk for å finne ut dette. Denne jobben blir ofte kalt detaljdesign.</p>
                <h3>Oppgave:</h3>
                <ul><p>Ta utgangspunkt i en beskrivelse av et system, set fra brukerens perspektiv.<br>
                        Du kan bruke innledningen til et av eksemplene i læreboka, eller du kan lage noen brukerhistorier for et eksempel du velger selv.<br>
                        Bruk substantiv-verb-metoden til finne ut hvilke klasser og metoder du må ha for at systemet skal fungere. </p></ul>
                <h3>Godkjenning:</h3>
                <ul><p>Ta med systembeskrivelsen og dokumentasjon av designet til foreleser eller hjelpelærer for godkjenning.<br>
                        Godkjennes av foreleser eller hjelpelærer.</p></ul>
                <h3>Læringsmål:</h3>
                <ul> 
                    <p><b>Du har fullført modulen når du kan:</b></p>
                    <li>Kan kan bruke verb/substantiv metoden til å finne ut</li>
                    <li style="list-style-type:none;">- Hvilke klasser du trenger for å løse et problem</li>
                    <li style="list-style-type:none;">- Og hvilke metoder klassene skal ha</li>
                    <li>Kan bruke scenarier (evt. med CRC kort) til å sjekke at du har funnet klassene og metodene du trenger</li>
                    <li>Vet hva et design pattern er</li>
                </ul>
                
                <h3>Ressurser:</h3>
                <ul> 
                    <li><b>Lærebok:</b></li>
                    <li style="list-style-type:none;"><b>Kapitel 13</b></li>
                    <li style="list-style-type:none;">David J. Barnes and Michael Kölling</li>
                    <li style="list-style-type:none;">Objects First With Java : a practical introduction using BlueJ, 5th edition, Pearson</li>
                    <li style="list-style-type:none;">ISBN: 978-0-13-283554-1</li>
                    <br>
                    
                    <li><b>Prosjekter:</b></li>
                    <li style="list-style-type:none;">Figures, House og Lab-classes</li>
                    <li style="list-style-type:none;">Du finner prosjektene på CDen i læreboka, eller de kan lastes ned <a href="https://www.bluej.org/objects-first/">HER</a> </li>
                    <br>
               
                    <li><b>Video fra forfatterne av læreboka:</b></li>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/sbQqb_XXOK8" frameborder="0" allowfullscreen></iframe>
                    
                </ul>
      
    </body>
</html>